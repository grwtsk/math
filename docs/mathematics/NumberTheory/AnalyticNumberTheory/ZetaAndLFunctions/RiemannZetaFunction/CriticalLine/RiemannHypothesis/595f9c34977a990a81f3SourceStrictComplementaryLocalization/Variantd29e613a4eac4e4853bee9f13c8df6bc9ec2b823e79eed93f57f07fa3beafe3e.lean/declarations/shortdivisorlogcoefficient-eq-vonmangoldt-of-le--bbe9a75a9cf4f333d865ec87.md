# shortDivisorLogCoefficient_eq_vonMangoldt_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65e65299-fef0-5187-af16-5fab0e31dbd7",
  "kind": "theorem",
  "lexical_name": "shortDivisorLogCoefficient_eq_vonMangoldt_of_le",
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
  "slug": "shortdivisorlogcoefficient-eq-vonmangoldt-of-le--bbe9a75a9cf4f333d865ec87",
  "source": {
    "blob": "c4bc76777e6915ced84eb1c26f1611483aca63a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/595f9c34977a990a81f3SourceStrictComplementaryLocalization/Variantd29e613a4eac4e4853bee9f13c8df6bc9ec2b823e79eed93f57f07fa3beafe3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbe9a75a9cf4f333d865ec870ec19cc2517a320b39d2f446d8fb8f5ba3783bfd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/595f9c34977a990a81f3SourceStrictComplementaryLocalization/Variantd29e613a4eac4e4853bee9f13c8df6bc9ec2b823e79eed93f57f07fa3beafe3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65e65299-fef0-5187-af16-5fab0e31dbd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortDivisorLogCoefficient_eq_vonMangoldt_of_le {U n : ℕ} (hn : n ≤ U) :
    shortDivisorLogCoefficient U n = ArithmeticFunction.vonMangoldt n := by
  have hs := strict_add_short_eq_vonMangoldt U n
  rw [strictDivisorLogCoefficient_zero_of_le hn, zero_add] at hs
  exact hs

/-- Every closed short atom is retained, giving actual psi through the floor cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/595f9c34977a990a81f3SourceStrictComplementaryLocalization/Variantd29e613a4eac4e4853bee9f13c8df6bc9ec2b823e79eed93f57f07fa3beafe3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/595f9c34977a990a81f3SourceStrictComplementaryLocalization/Variantd29e613a4eac4e4853bee9f13c8df6bc9ec2b823e79eed93f57f07fa3beafe3e.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4bc76777e6915ced84eb1c26f1611483aca63a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
