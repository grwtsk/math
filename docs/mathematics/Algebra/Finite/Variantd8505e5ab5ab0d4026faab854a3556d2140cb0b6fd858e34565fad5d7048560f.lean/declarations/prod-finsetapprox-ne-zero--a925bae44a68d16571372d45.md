# prod_finsetApprox_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d9bd5728d8060acedbe1e042af8428b59008fcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:110cff44-f57a-5a98-4a42-20dfbcde8d59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd6cf116-dd8c-f527-fc7d-7e5a5fc417cb",
  "kind": "theorem",
  "lexical_name": "prod_finsetApprox_ne_zero",
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
  "slug": "prod-finsetapprox-ne-zero--a925bae44a68d16571372d45",
  "source": {
    "blob": "3d9bd5728d8060acedbe1e042af8428b59008fcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 260,
    "path": "GRWTSK/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a925bae44a68d16571372d45a17e4872407faa8c08e2b95b8bf6365ebf7a838b",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd6cf116-dd8c-f527-fc7d-7e5a5fc417cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_finsetApprox_ne_zero : algebraMap R S (∏ m ∈ finsetApprox bS adm, m) ≠ 0 := by
  refine mt ((injective_iff_map_eq_zero _).mp bS.algebraMap_injective _) ?_
  simp only [Finset.prod_eq_zero_iff, not_exists]
  rintro x ⟨hx, rfl⟩
  exact finsetApprox.zero_notMem bS adm hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d9bd5728d8060acedbe1e042af8428b59008fcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
