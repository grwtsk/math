# greenHigherPrimePowerWindowMassComplex_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc5b9666-e35d-3f79-fde0-969455960116",
  "kind": "theorem",
  "lexical_name": "greenHigherPrimePowerWindowMassComplex_norm",
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
  "slug": "greenhigherprimepowerwindowmasscomplex-norm--b6443405ec07893b27b19a54",
  "source": {
    "blob": "fd67f27f123229da4af05b526af8ad5c39554669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 253,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6443405ec07893b27b19a54e2d52297634373d6c4a8510df4a5be03045758a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc5b9666-e35d-3f79-fde0-969455960116`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenHigherPrimePowerWindowMassComplex_norm
    (X : ℕ) :
    ‖greenHigherPrimePowerWindowMassComplex X‖ =
      higherPrimePowerWindowMass X := by
  unfold greenHigherPrimePowerWindowMassComplex
    higherPrimePowerWindowMass
  rw [← Complex.ofReal_sum]
  rw [Complex.norm_real, Real.norm_eq_abs]
  exact abs_of_nonneg (higherPrimePowerWindowMass_nonnegative X)

/-- Fixed-frequency correction bound. Combined with the previous square-root
mass theorem, this is O(X^(-1/2)) for every fixed nonzero k. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd67f27f123229da4af05b526af8ad5c39554669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
