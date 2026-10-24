# check

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e06bf007731581a6e23d4dd4c884739ac09d268a49bcbd96c5cc0d5f701f7dd3",
  "kind": "def",
  "lexical_name": "check",
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
  "slug": "check--51bcf82fc5f3920e78bd3c1f",
  "source": {
    "blob": "2c34ebf406adcf64d891fdb369f7cdcd9e52100f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Varianteeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51bcf82fc5f3920e78bd3c1fb3bdcb55464fa781bf45bc50c583c0a01504bffd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Varianteeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e06bf007731581a6e23d4dd4c884739ac09d268a49bcbd96c5cc0d5f701f7dd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def check (d : CertData) : Bool :=
  let s := run d.N d.K d.encl St.init
  let aD1 : ℤ := max |2 * (d.N : ℤ) * s.Tlo - (d.N : ℤ) ^ 2 * d.K| |2 * (d.N : ℤ) * s.Thi - (d.N : ℤ) ^ 2 * d.K|
  let aE1 : ℤ := max |6 * (d.N : ℤ) * s.Ulo - (d.N : ℤ) ^ 3 * d.K| |6 * (d.N : ℤ) * s.Uhi - (d.N : ℤ) ^ 3 * d.K|
  s.ok && decide (s.j = d.N) && decide (0 < d.N) && decide (0 < d.K)
    && decide (0 < d.bD1d) && decide (0 < d.bE1d) && decide (0 < d.b1d) && decide (0 < d.b2d)
    && decide (aD1 * d.bD1d ≤ d.bD1n * (2 * (d.N : ℤ) ^ 2 * d.K))
    && decide (aE1 * d.bE1d ≤ d.bE1n * (6 * (d.N : ℤ) ^ 3 * d.K))
    && decide (s.M1 * d.b1d ≤ d.b1n * (2 * (d.N : ℤ) ^ 2 * d.K))
    && decide ((s.M2 + 3 * s.M1) * d.b2d ≤ d.b2n * (6 * (d.N : ℤ) ^ 3 * d.K))

/-! ## 4. Soundness -/

section Sound

variable {S : ℕ → ℝ} {N K : ℕ}

/-- a ≤ x ≤ b ⇒ |x| ≤ max |a| |b|. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Varianteeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Varianteeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c34ebf406adcf64d891fdb369f7cdcd9e52100f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
