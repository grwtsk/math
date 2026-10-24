# _root_.GRWTSK.Algebra.CommutativeAlgebra.RestrictScalarsLeIff.Variant3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.Polynomial.Irreducible.natDegree_dvd_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc0a0b9a-8f37-b6d1-124d-2486e2ba6832",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.RestrictScalarsLeIff.Variant3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.Polynomial.Irreducible.natDegree_dvd_finrank",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-restrictscalarsleiff-variant3735e--315de9b97dada587bc06b7f3",
  "source": {
    "blob": "817fc7e1a7b4a19ad7809ff35259525b53f7b71e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 572,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4d6ca04826f15d12527a5611ad06a3c35260d59b408e6312680d115b02fdf2cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:315de9b97dada587bc06b7f3a06215c8173dd467dc32121f970294e7efe4a092",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant4d6ca04826f15d12527a5611ad06a3c35260d59b408e6312680d115b02fdf2cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc0a0b9a-8f37-b6d1-124d-2486e2ba6832`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.RestrictScalarsLeIff.Variant3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.Polynomial.Irreducible.natDegree_dvd_finrank {f : K[X]} (hi : Irreducible f)
    (hs : (f.map (algebraMap K L)).Splits) : f.natDegree ∣ finrank K L := by
  have := hi.degree_pos.ne'
  rw [← f.degree_map (algebraMap K L)] at this
  obtain ⟨x, hx⟩ := hs.exists_eval_eq_zero this
  rw [eval_map_algebraMap] at hx
  have key := minpoly.Irreducible.eq_minpoly hi hx
  replace hi := hi.ne_zero
  rw [key, natDegree_C_mul (leadingCoeff_ne_zero.mpr hi)]
  apply minpoly.degree_dvd
  rw [← minpoly.ne_zero_iff]
  contrapose hi
  rwa [hi, mul_zero] at key

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant4d6ca04826f15d12527a5611ad06a3c35260d59b408e6312680d115b02fdf2cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4d6ca04826f15d12527a5611ad06a3c35260d59b408e6312680d115b02fdf2cb.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `817fc7e1a7b4a19ad7809ff35259525b53f7b71e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
