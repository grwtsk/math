# prime_of_newton_bound_head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2f2b2f1-bb1c-9736-36fb-4f2ebcf0e4b9",
  "kind": "theorem",
  "lexical_name": "prime_of_newton_bound_head",
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
  "slug": "prime-of-newton-bound-head--5ceec0dd862a03fba525cc40",
  "source": {
    "blob": "965e0ce0cfbc12409715e727917400d4ea6f7e5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 55,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalNewtonHeadBinding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ceec0dd862a03fba525cc40060f2ad261ec116307cc5139baf1eab78cddb8e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalNewtonHeadBinding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2f2b2f1-bb1c-9736-36fb-4f2ebcf0e4b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_of_newton_bound_head (n : ℕ) (hn : 2 ≤ n) (T : ℚ) (hT : 2 ≤ T)
    (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (stages : Fin k → ℕ) (signs : Fin k → Bool) (data : Fin k → Data)
    (hcenters : ∀ i, (data i).center = (rows i).point.center)
    (hradii : ∀ i, (data i).radius = (rows i).point.coordinateError)
    (hlocal : ∀ i, GRWTSK.RiemannHypothesis.RationalNewtonWitness.verify (stages i) (signs i) (data i) = true)
    (hvalues : ∀ i, CenterEnclosures (data i))
    (hgeometry : GRWTSK.Analysis.Complex.RationalDiskSeparation.verify T
      (fun i => (rows i).point.center) (fun i => (rows i).point.coordinateError) = true)
    (hweights : ∀ i, (rows i).weight = 1) (hcount : heightCount (T : ℝ) ≤ k)
    (tolerance : ℚ) (out : State)
    (hv : GRWTSK.Analysis.Complex.RationalTentAccumulation.verify
      (squareCenterQ n) (squareRadiusQ n) bits rows tolerance out = true)
    (hmargin : 0 < CanonicalTentPrimeCriterion.canonicalPrimeMargin n (T : ℝ)
      ((QComplex.embed out.value).re + (out.error : ℝ)) (-SignedTentCorrection.squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_verified_rational_head n hn (T : ℝ) (by exact_mod_cast hT) bits rows
    (of_newton_enclosures T rows stages signs data hcenters hradii hlocal hvalues
      hgeometry hweights hcount) tolerance out hv hmargin

end GRWTSK.NumberTheory.Chebyshev.CanonicalNewtonHeadBinding
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalNewtonHeadBinding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalNewtonHeadBinding.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965e0ce0cfbc12409715e727917400d4ea6f7e5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
