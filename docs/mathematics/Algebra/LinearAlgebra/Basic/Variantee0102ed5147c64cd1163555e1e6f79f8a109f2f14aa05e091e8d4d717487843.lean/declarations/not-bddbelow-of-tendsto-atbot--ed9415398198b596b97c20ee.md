# not_bddBelow_of_tendsto_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8189502334963029ccb04602b58e4d1e3e064bd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 458,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee0102ed5147c64cd1163555e1e6f79f8a109f2f14aa05e091e8d4d717487843.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5779153-ecfa-8d7b-5eb8-c6ce2f54090e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6f19850-790a-f845-35d6-d805107192a7",
  "kind": "theorem",
  "lexical_name": "not_bddBelow_of_tendsto_atBot",
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
  "slug": "not-bddbelow-of-tendsto-atbot--ed9415398198b596b97c20ee",
  "source": {
    "blob": "8189502334963029ccb04602b58e4d1e3e064bd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 458,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantee0102ed5147c64cd1163555e1e6f79f8a109f2f14aa05e091e8d4d717487843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed9415398198b596b97c20ee0e599aa904f072085c92f1578572fbd78730d2ae",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantee0102ed5147c64cd1163555e1e6f79f8a109f2f14aa05e091e8d4d717487843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6f19850-790a-f845-35d6-d805107192a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_bddBelow_of_tendsto_atBot [NoMinOrder β] (h : Tendsto f l atBot) :
    ¬BddBelow (range f) := not_bddAbove_of_tendsto_atTop (β := βᵒᵈ) h

@[deprecated (since := "2025-04-28")]
alias unbounded_of_tendsto_atTop := not_bddAbove_of_tendsto_atTop

@[deprecated (since := "2025-04-28")]
alias unbounded_of_tendsto_atBot := not_bddBelow_of_tendsto_atBot

@[deprecated (since := "2025-04-28")]
alias unbounded_of_tendsto_atTop' := not_bddAbove_of_tendsto_atTop

@[deprecated (since := "2025-04-28")]
alias unbounded_of_tendsto_atBot' := not_bddBelow_of_tendsto_atBot

end NeBot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantee0102ed5147c64cd1163555e1e6f79f8a109f2f14aa05e091e8d4d717487843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantee0102ed5147c64cd1163555e1e6f79f8a109f2f14aa05e091e8d4d717487843.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8189502334963029ccb04602b58e4d1e3e064bd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
