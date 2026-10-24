# affineIndependent_of_toMatrix_right_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "832dda876c8fa6c9e995c6999cf42637c6d16e64",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ba1e22c-60d6-540a-cf96-8291d219156a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fac64c7-0b9c-415b-9ab8-7dd8aa66f5ce",
  "kind": "theorem",
  "lexical_name": "affineIndependent_of_toMatrix_right_inv",
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
  "slug": "affineindependent-of-tomatrix-right-inv--6569702ec0fda60ff99b6d83",
  "source": {
    "blob": "832dda876c8fa6c9e995c6999cf42637c6d16e64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6569702ec0fda60ff99b6d83bcfd565129f88b3b2a73b55bd9c8bd4300553087",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fac64c7-0b9c-415b-9ab8-7dd8aa66f5ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineIndependent_of_toMatrix_right_inv [Fintype ι] [Finite ι'] [DecidableEq ι']
    (p : ι' → P) {A : Matrix ι ι' k} (hA : b.toMatrix p * A = 1) : AffineIndependent k p := by
  cases nonempty_fintype ι'
  rw [affineIndependent_iff_eq_of_fintype_affineCombination_eq]
  intro w₁ w₂ hw₁ hw₂ hweq
  have hweq' : w₁ ᵥ* b.toMatrix p = w₂ ᵥ* b.toMatrix p := by
    ext j
    change (∑ i, w₁ i • b.coord j (p i)) = ∑ i, w₂ i • b.coord j (p i)
    rw [← Finset.univ.affineCombination_eq_linear_combination _ _ hw₁,
      ← Finset.univ.affineCombination_eq_linear_combination _ _ hw₂,
      ← Function.comp_def (b.coord j) p, ← Finset.univ.map_affineCombination p w₁ hw₁,
      ← Finset.univ.map_affineCombination p w₂ hw₂, hweq]
  replace hweq' := congr_arg (fun w => w ᵥ* A) hweq'
  simpa only [Matrix.vecMul_vecMul, hA, Matrix.vecMul_one] using hweq'

/-- Given a family of points `p : ι' → P` and an affine basis `b`, if the matrix whose rows are the
coordinates of `p` with respect `b` has a left inverse, then `p` spans the entire space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `832dda876c8fa6c9e995c6999cf42637c6d16e64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
