# quadratic_interval_bernstein

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fcf9b35-25f5-adf3-e11b-02b136f0a9fb",
  "kind": "theorem",
  "lexical_name": "quadratic_interval_bernstein",
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
  "slug": "quadratic-interval-bernstein--c0e4d8d3c44d48d414d9b746",
  "source": {
    "blob": "d93e7caee4ab3976171e18399d25ac871bb57cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variant9a9ac5197405fb54c3673fa019a9357a5a72122795ef9a8c3147d0471ae93788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0e4d8d3c44d48d414d9b74616c2e182478e622910734bc3f1c2c47095dbb037",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variant9a9ac5197405fb54c3673fa019a9357a5a72122795ef9a8c3147d0471ae93788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fcf9b35-25f5-adf3-e11b-02b136f0a9fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_interval_bernstein (p q c L U E z : ℝ)
    (hLU : L ≤ U) (hzL : L ≤ z) (hzU : z ≤ U)
    (hleft : p * L ^ 2 + q * L + c ≤ E)
    (hmiddle : p * L * U + q * (L + U) / 2 + c ≤ E)
    (hright : p * U ^ 2 + q * U + c ≤ E) :
    p * z ^ 2 + q * z + c ≤ E := by
  by_cases heq : L = U
  · have hz : z = L := by linarith
    simpa only [hz] using hleft
  · have hwidth : 0 < (U - L) ^ 2 := sq_pos_of_ne_zero (by
      intro hzero
      apply heq
      linarith)
    have h₀ := mul_le_mul_of_nonneg_right hleft (sq_nonneg (U - z))
    have h₁ := mul_le_mul_of_nonneg_right hmiddle
      (show 0 ≤ 2 * (z - L) * (U - z) by positivity)
    have h₂ := mul_le_mul_of_nonneg_right hright (sq_nonneg (z - L))
    have hid :
        (p * L ^ 2 + q * L + c) * (U - z) ^ 2 +
          (p * L * U + q * (L + U) / 2 + c) * (2 * (z - L) * (U - z)) +
          (p * U ^ 2 + q * U + c) * (z - L) ^ 2 =
            (p * z ^ 2 + q * z + c) * (U - L) ^ 2 := by ring
    have hweights :
        (U - z) ^ 2 + 2 * (z - L) * (U - z) + (z - L) ^ 2 = (U - L) ^ 2 := by ring
    have htotal : (p * z ^ 2 + q * z + c) * (U - L) ^ 2 ≤ E * (U - L) ^ 2 := by
      rw [← hid]
      calc
        _ ≤ E * (U - z) ^ 2 + E * (2 * (z - L) * (U - z)) +
            E * (z - L) ^ 2 := add_le_add (add_le_add h₀ h₁) h₂
        _ = _ := by rw [← mul_add, ← mul_add, hweights]
    exact (mul_le_mul_iff_left₀ hwidth).mp htotal

/-- A finite coefficient check establishes the local inequality on a reachable interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variant9a9ac5197405fb54c3673fa019a9357a5a72122795ef9a8c3147d0471ae93788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variant9a9ac5197405fb54c3673fa019a9357a5a72122795ef9a8c3147d0471ae93788.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d93e7caee4ab3976171e18399d25ac871bb57cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
