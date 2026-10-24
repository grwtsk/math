# comp_C_mul_X_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38873f20-c3b4-438f-cbba-607196532f0d",
  "kind": "lemma",
  "lexical_name": "comp_C_mul_X_coeff",
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
  "slug": "comp-c-mul-x-coeff--de97c02467bdc2df9edeed3a",
  "source": {
    "blob": "37a4a94306cf2ba71d8c16c4ca35c738fe4cec0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 102,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de97c02467bdc2df9edeed3a009680bec7c440c04280fef127205eaaaba77500",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38873f20-c3b4-438f-cbba-607196532f0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma comp_C_mul_X_coeff {r : R} {n : ℕ} :
    (p.comp <| C r * X).coeff n = p.coeff n * r ^ n := by
  simp_rw [comp, eval₂_eq_sum_range, (commute_X _).symm.mul_pow,
    ← C_pow, finset_sum_coeff, coeff_C_mul, coeff_X_pow]
  rw [Finset.sum_eq_single n _ fun h ↦ ?_, if_pos rfl, mul_one]
  · intro b _ h; simp_rw [if_neg h.symm, mul_zero]
  · rw [coeff_eq_zero_of_natDegree_lt, zero_mul]
    rwa [Finset.mem_range_succ_iff, not_le] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37a4a94306cf2ba71d8c16c4ca35c738fe4cec0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
