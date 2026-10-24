# power_product_prime_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c308a013-109d-933b-bca7-00a82706866d",
  "kind": "theorem",
  "lexical_name": "power_product_prime_support",
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
  "slug": "power-product-prime-support--947bfe64c2daae26f73cef5f",
  "source": {
    "blob": "b1190667c59a0f84e2e99ef0937fd2a1537871c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RadicalMasks/Variantfeb5fac41bda3a75d698cb27ba910b195ac878ad1ce22bbceecc0523235684ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:947bfe64c2daae26f73cef5ff7ad9af967a37011f965514d7f5f5ad2d30f10de",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RadicalMasks/Variantfeb5fac41bda3a75d698cb27ba910b195ac878ad1ce22bbceecc0523235684ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c308a013-109d-933b-bca7-00a82706866d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem power_product_prime_support {M : Type*} [CommMonoidWithZero M]
    [NormalizationMonoid M] [UniqueFactorizationMonoid M] (a e : M)
    {k : ℕ} (hk : k ≠ 0) : primeFactors (a ^ k * e) = primeFactors (a * e) := by
  classical
  by_cases ha : a = 0
  · simp [ha, zero_pow hk]
  by_cases he : e = 0
  · simp [he]
  rw [primeFactors_mul_eq_union (pow_ne_zero _ ha) he,
    primeFactors_mul_eq_union ha he, primeFactors_pow a hk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RadicalMasks/Variantfeb5fac41bda3a75d698cb27ba910b195ac878ad1ce22bbceecc0523235684ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RadicalMasks/Variantfeb5fac41bda3a75d698cb27ba910b195ac878ad1ce22bbceecc0523235684ae.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1190667c59a0f84e2e99ef0937fd2a1537871c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
