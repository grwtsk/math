# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2149dcb661b97ca103117fd6ff3fd17e0c2eb6d73793769b8d323187e9e51a3",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--0fe23b4c5d2467a0cc2bfef4",
  "source": {
    "blob": "ecbdcf1ed61027f8230fd18c0ee4ed4a221693a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 268,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeBlockStatementChecks/Variant432953315be1e1fc4a1c00ab4bfa6ac3e71d471c7acfd5f7a35faa8b3a143a89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fe23b4c5d2467a0cc2bfef4997504c60d7efe35c7cf1325b7c07f48e8fee2ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeBlockStatementChecks/Variant432953315be1e1fc4a1c00ab4bfa6ac3e71d471c7acfd5f7a35faa8b3a143a89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2149dcb661b97ca103117fd6ff3fd17e0c2eb6d73793769b8d323187e9e51a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (P : Finset ℕ) : roughRatioRemainder A P =
    ∑ p ∈ ((Icc 1 ⌊Real.exp A⌋₊) ×ˢ (Icc 1 ⌊Real.exp A⌋₊)).filter
      (fun p ↦ ¬((p.1 / Nat.gcd p.1 p.2).primeFactors ⊆ P ∧
        (p.2 / Nat.gcd p.1 p.2).primeFactors ⊆ P)),
      (ArithmeticFunction.moebius p.1 : ℝ) * (ArithmeticFunction.moebius p.2 : ℝ) *
        ThetaRemainder.thetaRemainder A (p.1 * p.2) := by
  classical
  simp only [roughRatioRemainder, quotientSupported]
  apply sum_congr
  · ext p
    simp
  · intro p _
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeBlockStatementChecks/Variant432953315be1e1fc4a1c00ab4bfa6ac3e71d471c7acfd5f7a35faa8b3a143a89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeBlockStatementChecks/Variant432953315be1e1fc4a1c00ab4bfa6ac3e71d471c7acfd5f7a35faa8b3a143a89.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecbdcf1ed61027f8230fd18c0ee4ed4a221693a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
