# equivPolynomialSelf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdc68be85415d59ed9e2a6ab830ddddb06b8eb64eb16192af0db5f3e27fe0e9b",
  "kind": "def",
  "lexical_name": "equivPolynomialSelf",
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
  "slug": "equivpolynomialself--7194f3b44c6968052dcb6b88",
  "source": {
    "blob": "710378f678d231bb2e1f984889f266f52597be15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 246,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant462afacb764e1f1bf358a1d8f6341e0180cd6c71ea1023057cd96f9b13381e54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7194f3b44c6968052dcb6b88d2fc1793c382f4703c5dbcbb77146961e0a07c8b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant462afacb764e1f1bf358a1d8f6341e0180cd6c71ea1023057cd96f9b13381e54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdc68be85415d59ed9e2a6ab830ddddb06b8eb64eb16192af0db5f3e27fe0e9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivPolynomialSelf : PolynomialModule R R ≃ₗ[R[X]] R[X] where
  toAddEquiv := coeffAddEquiv.trans <| AddMonoidAlgebra.coeffAddEquiv.symm.trans
    (toFinsuppIso R).symm.toAddEquiv
  map_smul' r x := by
    dsimp
    induction x using induction_linear with
    | zero => simp
    | add _ _ hp hq => simp_all [smul_add, mul_add]
    | single n a =>
    ext i
    simp only [coeffAddEquiv_apply, AddMonoidAlgebra.coeffAddEquiv_symm_apply,
      toFinsuppIso_symm_apply, coeff_ofFinsupp, smul_single_apply, smul_eq_mul, coeff_single,
      AddMonoidAlgebra.ofCoeff_single, ofFinsupp_single]
    split_ifs with hn
    · rw [show i = (i - n) + n by lia, Polynomial.coeff_mul_monomial]
      simp
    · rw [Polynomial.coeff_mul, Finset.sum_eq_zero]
      simp [Polynomial.coeff_monomial]
      lia

/-- `PolynomialModule R S` is isomorphic to `S[X]` as an `R` module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant462afacb764e1f1bf358a1d8f6341e0180cd6c71ea1023057cd96f9b13381e54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant462afacb764e1f1bf358a1d8f6341e0180cd6c71ea1023057cd96f9b13381e54.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `710378f678d231bb2e1f984889f266f52597be15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
