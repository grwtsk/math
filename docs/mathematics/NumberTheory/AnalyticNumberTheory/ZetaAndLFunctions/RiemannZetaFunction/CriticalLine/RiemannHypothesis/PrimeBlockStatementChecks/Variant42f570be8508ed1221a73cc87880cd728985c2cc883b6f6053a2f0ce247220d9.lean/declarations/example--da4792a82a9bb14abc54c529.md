# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34987224e9a50146184d3d5afad46106c7b56d8e9a569d02c7477edacbd38bfe",
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
  "slug": "example--da4792a82a9bb14abc54c529",
  "source": {
    "blob": "1e715f824644638ded51cc2adff9d00f4a38e694",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeBlockStatementChecks/Variant42f570be8508ed1221a73cc87880cd728985c2cc883b6f6053a2f0ce247220d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da4792a82a9bb14abc54c529cf9f45658bcf64f78c95a65da905747d7d564c68",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeBlockStatementChecks/Variant42f570be8508ed1221a73cc87880cd728985c2cc883b6f6053a2f0ce247220d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34987224e9a50146184d3d5afad46106c7b56d8e9a569d02c7477edacbd38bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    primeSupportedBlock A P =
      ∑ p ∈ PrimeRatioProduct.supportedPairs P,
        (ArithmeticFunction.moebius (p.1 * p.2) : ℝ) *
          ∑ g ∈ Icc 1 (⌊Real.exp A⌋₊ / max p.1 p.2),
            (ArithmeticFunction.moebius g : ℝ) ^ 2 *
              (if Nat.Coprime g (p.1 * p.2) then 1 else 0) *
                ThetaRemainder.thetaRemainder A ((p.1 * p.2) * g ^ 2) :=
  PrimeSupportedBlock.primeSupportedBlock_eq_supportedPairs A P hP
end PrimeSupportedBlockStatements

-- Ordered disjoint prime assignments include the empty subsets and have no repetitions.
section PrimeRatioProductStatements
open Finset PrimeRatioProduct

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeBlockStatementChecks/Variant42f570be8508ed1221a73cc87880cd728985c2cc883b6f6053a2f0ce247220d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeBlockStatementChecks/Variant42f570be8508ed1221a73cc87880cd728985c2cc883b6f6053a2f0ce247220d9.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e715f824644638ded51cc2adff9d00f4a38e694` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
