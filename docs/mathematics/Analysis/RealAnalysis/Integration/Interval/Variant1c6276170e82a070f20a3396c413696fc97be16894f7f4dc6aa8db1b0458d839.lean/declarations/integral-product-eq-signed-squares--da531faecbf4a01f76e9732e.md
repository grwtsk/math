# integral_product_eq_signed_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06abe314-2c0e-03c7-9614-7e242fed0646",
  "kind": "theorem",
  "lexical_name": "integral_product_eq_signed_squares",
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
  "slug": "integral-product-eq-signed-squares--da531faecbf4a01f76e9732e",
  "source": {
    "blob": "d9c7c85022e1d8459d0c0f4d771152753dc01c31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da531faecbf4a01f76e9732ec80bd5115124919a4616d9e3a21dad0da9fdf635",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06abe314-2c0e-03c7-9614-7e242fed0646`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_product_eq_signed_squares (a b : ℝ) (f g : ℝ → ℝ)
    (hplus : IntervalIntegrable (fun t ↦ (f t + g t) ^ 2) volume a b)
    (hminus : IntervalIntegrable (fun t ↦ (f t - g t) ^ 2) volume a b) :
    (∫ t in a..b, f t * g t) =
      ((∫ t in a..b, (f t + g t) ^ 2) - (∫ t in a..b, (f t - g t) ^ 2)) / 4 := by
  calc
    (∫ t in a..b, f t * g t) =
        ∫ t in a..b, ((f t + g t) ^ 2 - (f t - g t) ^ 2) / 4 := by
      apply intervalIntegral.integral_congr
      intro t _
      ring
    _ = _ := by rw [intervalIntegral.integral_div, intervalIntegral.integral_sub hplus hminus]

/-- Exact orthogonal integral decomposition. Integrability of all four sector
products is explicit; in particular no unproved regularity of an RH weight is
silently introduced by this generic identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9c7c85022e1d8459d0c0f4d771152753dc01c31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
