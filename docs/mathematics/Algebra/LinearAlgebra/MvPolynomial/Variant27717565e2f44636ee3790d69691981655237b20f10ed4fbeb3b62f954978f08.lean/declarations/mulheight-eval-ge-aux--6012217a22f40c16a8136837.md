# mulHeight_eval_ge_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4c6633540a85bbb06d595aad635368fd68ebccb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 417,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b08d43b-fc91-0050-e733-9bdd06bb8d71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e1e1d60-f0c1-53fb-0e92-c00d3d95e5b6",
  "kind": "lemma",
  "lexical_name": "mulHeight_eval_ge_aux",
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
  "slug": "mulheight-eval-ge-aux--6012217a22f40c16a8136837",
  "source": {
    "blob": "b4c6633540a85bbb06d595aad635368fd68ebccb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 417,
    "path": "GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6012217a22f40c16a8136837a15f6defc063266b07fcad097cc57900087d1b11",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e1e1d60-f0c1-53fb-0e92-c00d3d95e5b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mulHeight_eval_ge_aux {M N : ℕ} {q : ι × ι' → MvPolynomial ι K} [IsEmpty ι']
    (p : ι' → MvPolynomial ι K) {x : ι → K}
    (h : ∀ k, ∑ j, (q (k, j)).eval x * (p j).eval x = (x k) ^ (M + N)) :
    x = 0 := by
  ext i
  simp only [Finset.univ_eq_empty, Finset.sum_empty] at h
  exact eq_zero_of_pow_eq_zero <| (h i).symm

variable [AdmissibleAbsValues K] [Finite ι]

open AdmissibleAbsValues

/-- If
* `p : ι' → MvPolynomial ι K` is a family of polynomials (which in practice will be homogeneous
  of the same degree `N`),
* `q : ι × ι' → MvPolynomial ι K` is a family of homogeneous polynomials of the same degree `M`,
* `x : ι → K` is such that for all `k : ι`,
  `∑ j, (q (k, j)).eval x * (p j).eval x = (x k) ^ (M + N)`,

then the multiplicative height of `fun j ↦ (p j).eval x` is bounded below by an (explicit) positive
constant depending only on `q` times the `N`th power of the multiplicative height of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c6633540a85bbb06d595aad635368fd68ebccb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
