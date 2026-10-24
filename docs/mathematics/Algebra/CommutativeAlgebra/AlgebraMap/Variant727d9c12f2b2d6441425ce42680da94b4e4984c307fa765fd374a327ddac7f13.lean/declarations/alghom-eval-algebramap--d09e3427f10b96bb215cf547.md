# algHom_eval₂_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d914ec508dd01921a6b54abec5fadbb2da745818",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/727d9c12f2b2d6441425ce42680da94b4e4984c307fa765fd374a327ddac7f13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5b3d64f-4475-eb25-ae65-8b8a16d02f2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aacff7ce-a8a1-a7f5-92ba-b817b7169b73",
  "kind": "theorem",
  "lexical_name": "algHom_eval₂_algebraMap",
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
  "slug": "alghom-eval-algebramap--d09e3427f10b96bb215cf547",
  "source": {
    "blob": "d914ec508dd01921a6b54abec5fadbb2da745818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 118,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variant727d9c12f2b2d6441425ce42680da94b4e4984c307fa765fd374a327ddac7f13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d09e3427f10b96bb215cf54778509fecc7f4a17e9069d5dbf4eb6d2094e0bdfa",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AlgebraMap/Variant727d9c12f2b2d6441425ce42680da94b4e4984c307fa765fd374a327ddac7f13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aacff7ce-a8a1-a7f5-92ba-b817b7169b73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algHom_eval₂_algebraMap {R A B : Type*} [CommSemiring R] [Semiring A] [Semiring B]
    [Algebra R A] [Algebra R B] (p : R[X]) (f : A →ₐ[R] B) (a : A) :
    f (eval₂ (algebraMap R A) a p) = eval₂ (algebraMap R B) (f a) p := by
  simp only [eval₂_eq_sum, sum_def]
  simp only [f.map_sum, f.map_mul, f.map_pow, eq_intCast, map_intCast, AlgHom.commutes]
#align polynomial.alg_hom_eval₂_algebra_map Polynomial.algHom_eval₂_algebraMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AlgebraMap/Variant727d9c12f2b2d6441425ce42680da94b4e4984c307fa765fd374a327ddac7f13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variant727d9c12f2b2d6441425ce42680da94b4e4984c307fa765fd374a327ddac7f13.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d914ec508dd01921a6b54abec5fadbb2da745818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
