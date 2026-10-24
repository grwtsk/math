# nonsingular_iff_of_Y_eq_negY

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad6216cad2e4e296e4b327093a169c12f1535c32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47294701-dd86-6645-50dd-87afd163a156",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20263565-de5c-b5a7-85d3-223605941c7d",
  "kind": "lemma",
  "lexical_name": "nonsingular_iff_of_Y_eq_negY",
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
  "slug": "nonsingular-iff-of-y-eq-negy--8cdcb3244f188aa3f6ea789c",
  "source": {
    "blob": "ad6216cad2e4e296e4b327093a169c12f1535c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 152,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Formula/Variantb501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cdcb3244f188aa3f6ea789c676bed1db44aa29a8e638f78a705b07f7539ee64",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Formula/Variantb501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20263565-de5c-b5a7-85d3-223605941c7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonsingular_iff_of_Y_eq_negY {P : Fin 3 → F} (hPz : P z ≠ 0) (hy : P y = W.negY P) :
    W.Nonsingular P ↔ W.Equation P ∧ eval P W.polynomialX ≠ 0 := by
  have hy' : eval P W.polynomialY = (P y - W.negY P) * P z := by rw [negY, eval_polynomialY]; ring1
  rw [nonsingular_iff_of_Z_ne_zero hPz, hy', hy, sub_self, zero_mul, ne_self_iff_false, or_false]

/-! ## Doubling formulae in projective coordinates -/

variable (W) in
/-- The unit associated to a representative of `2 • P` for a projective point representative `P` on
a Weierstrass curve `W` that is `2`-torsion.

More specifically, the unit `u` such that `W.add P P = u • ![0, 1, 0]` where `P = W.neg P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Formula/Variantb501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Formula/Variantb501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6216cad2e4e296e4b327093a169c12f1535c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
