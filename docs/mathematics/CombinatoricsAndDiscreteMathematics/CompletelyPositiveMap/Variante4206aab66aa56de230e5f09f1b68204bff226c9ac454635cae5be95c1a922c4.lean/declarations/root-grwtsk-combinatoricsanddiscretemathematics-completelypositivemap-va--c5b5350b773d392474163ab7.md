# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.CompletelyPositiveMap.Variant94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.OrderHomClass.of_map_cstarMatrix_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b97f654c-52d1-6ed6-ba38-9185bde39785",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.CompletelyPositiveMap.Variant94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.OrderHomClass.of_map_cstarMatrix_nonneg",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-completelypositivemap-va--c5b5350b773d392474163ab7",
  "source": {
    "blob": "d063b47d8785a7bae4a137b65f371f4a08ecba7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variante4206aab66aa56de230e5f09f1b68204bff226c9ac454635cae5be95c1a922c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5b5350b773d392474163ab77f11669bb3af2efe5cf98076d8cfb255ed7dfb95",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variante4206aab66aa56de230e5f09f1b68204bff226c9ac454635cae5be95c1a922c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b97f654c-52d1-6ed6-ba38-9185bde39785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.CompletelyPositiveMap.Variant94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.OrderHomClass.of_map_cstarMatrix_nonneg
    (h : ∀ (φ : F) (k : ℕ) (M : CStarMatrix (Fin k) (Fin k) A₁), 0 ≤ M → 0 ≤ M.map φ) :
    OrderHomClass F A₁ A₂ := .of_addMonoidHom <| by
  intro φ a ha
  simpa using! map_nonneg (toOneByOne (Fin 1) ℂ A₂).symm <|
    h φ 1 _ <| map_nonneg (toOneByOne (Fin 1) ℂ A₁) ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variante4206aab66aa56de230e5f09f1b68204bff226c9ac454635cae5be95c1a922c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variante4206aab66aa56de230e5f09f1b68204bff226c9ac454635cae5be95c1a922c4.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d063b47d8785a7bae4a137b65f371f4a08ecba7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
