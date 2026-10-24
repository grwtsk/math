# quotientIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64bc82465ba65f0fc11db99554db77477e61f98a11a6ff97a29e81eb7bade2fb",
  "kind": "def",
  "lexical_name": "quotientIntegral",
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
  "slug": "quotientintegral--d56824745791d0fbf2e0facb",
  "source": {
    "blob": "b83af5b73ea76868130e99a82cd5bf551aba1da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 231,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d56824745791d0fbf2e0facb7883067755d1e4f20d1a76b5f874413fb2cf4633",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64bc82465ba65f0fc11db99554db77477e61f98a11a6ff97a29e81eb7bade2fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientIntegral (X : ℕ) (w : ℂ) : ℂ :=
  ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
    Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)

/-- The complete finite prefix integrand is genuinely integrable at every complex parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83af5b73ea76868130e99a82cd5bf551aba1da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
