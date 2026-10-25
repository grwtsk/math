# mi_not_onBoundary'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03113afd3a5aa9db01a9ed0588461d97d06d9e47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 470,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e1a0eed-66e5-9e36-c7a5-102cc856eeea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97d62e82-43ec-5ef9-9e68-0a2372820c77",
  "kind": "theorem",
  "lexical_name": "mi_not_onBoundary'",
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
  "slug": "mi-not-onboundary--112e9c1d93fd1ccfd3b37859",
  "source": {
    "blob": "03113afd3a5aa9db01a9ed0588461d97d06d9e47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 470,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:112e9c1d93fd1ccfd3b37859c5ea0686edf7835e9ad544b2b0399c0fcebbd71f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97d62e82-43ec-5ef9-9e68-0a2372820c77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mi_not_onBoundary' (j : Fin n) :
    c.tail.b j < (cs (mi h v)).tail.b j ∧
      (cs (mi h v)).tail.b j + (cs (mi h v)).w < c.tail.b j + c.w := by
  have := mi_not_onBoundary h v j
  simp only [OnBoundary, not_or] at this; cases' this with h1 h2
  constructor
  apply lt_of_le_of_ne (b_le_b mi_mem_bcubes _) h1
  apply lt_of_le_of_ne _ h2
  apply ((Ico_subset_Ico_iff _).mp (tail_sub mi_mem_bcubes j)).2
  simp [hw]
#align theorems_100.«82».mi_not_on_boundary' Theorems100.«82».mi_not_onBoundary'

/-- The top of `mi` gives rise to a new valley, since the neighbouring cubes extend further upward
  than `mi`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03113afd3a5aa9db01a9ed0588461d97d06d9e47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
