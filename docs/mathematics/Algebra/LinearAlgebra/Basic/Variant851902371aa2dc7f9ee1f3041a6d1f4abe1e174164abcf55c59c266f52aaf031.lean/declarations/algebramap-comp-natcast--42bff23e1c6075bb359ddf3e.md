# algebraMap_comp_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a893c91bfbb7c59ef99ef3025a6d8d885ae31ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d61210a4-843f-7fa9-c7ad-3cf006707f59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a9dad10-f8a3-4e59-fc88-788f7147cbab",
  "kind": "lemma",
  "lexical_name": "algebraMap_comp_natCast",
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
  "slug": "algebramap-comp-natcast--42bff23e1c6075bb359ddf3e",
  "source": {
    "blob": "2a893c91bfbb7c59ef99ef3025a6d8d885ae31ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 283,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42bff23e1c6075bb359ddf3e0f3c4d88f6e49037fe54fd1aa0547ea2d1907287",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a9dad10-f8a3-4e59-fc88-788f7147cbab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma algebraMap_comp_natCast (R A : Type*) [CommSemiring R] [Semiring A] [Algebra R A] :
    algebraMap R A ∘ Nat.cast = Nat.cast := by
  ext; simp

end Nat

section Int

variable (R : Type*) [Ring R]

-- Lower the priority so that `Algebra.id` is picked most of the time when working with
-- `ℤ`-algebras.
-- TODO: is this still needed?
/-- Ring ⥤ ℤ-Alg -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a893c91bfbb7c59ef99ef3025a6d8d885ae31ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
