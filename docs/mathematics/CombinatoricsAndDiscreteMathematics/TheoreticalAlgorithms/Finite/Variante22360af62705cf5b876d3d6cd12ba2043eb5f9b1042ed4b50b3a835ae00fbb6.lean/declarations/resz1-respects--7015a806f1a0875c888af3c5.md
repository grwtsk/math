# resZ1_respects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39c8dbd8fabdb707f29845223cd3233e681f82e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 649,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39ac5273-08a3-fc6b-428b-6896d413204a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87cf1aae-c685-17cb-d7e2-8345246cc240",
  "kind": "theorem",
  "lexical_name": "resZ1_respects",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "resz1-respects--7015a806f1a0875c888af3c5",
  "source": {
    "blob": "39c8dbd8fabdb707f29845223cd3233e681f82e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 649,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7015a806f1a0875c888af3c57d738f907694f41e2eac318fd3460a74f0f4c763",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87cf1aae-c685-17cb-d7e2-8345246cc240`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resZ1_respects
    {H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρH : AdditiveAction H A}
    {ρG : AdditiveAction G A}
    (φ : ActionHom ρH ρG)
    {x y : Z1 G A ρG}
    (h : OneCohomologous ρG x y) :
    OneCohomologous ρH (resZ1 φ x) (resZ1 φ y) := by
  rcases h with ⟨a, ha⟩
  refine ⟨a, ?_⟩
  intro k
  unfold resZ1 resC1 coboundaryOf
  simp only
  rw [ha (φ.hom.toFun k)]
  unfold coboundaryOf
  rw [φ.action_compat]

/-- Restriction on `FiniteH1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39c8dbd8fabdb707f29845223cd3233e681f82e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
