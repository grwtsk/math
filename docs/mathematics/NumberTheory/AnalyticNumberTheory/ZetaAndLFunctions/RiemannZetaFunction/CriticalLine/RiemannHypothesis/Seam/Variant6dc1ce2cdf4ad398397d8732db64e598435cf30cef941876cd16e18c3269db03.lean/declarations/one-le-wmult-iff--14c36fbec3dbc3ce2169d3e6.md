# one_le_wMult_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36b60869-ed48-bd59-68aa-d56f4d402b3a",
  "kind": "theorem",
  "lexical_name": "one_le_wMult_iff",
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
  "slug": "one-le-wmult-iff--14c36fbec3dbc3ce2169d3e6",
  "source": {
    "blob": "9d7c149696a39bbaa0e7c3ec69ecc0bd056f1473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14c36fbec3dbc3ce2169d3e621fa3bf883478bf74fbc5be5e11eba694d425b72",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36b60869-ed48-bd59-68aa-d56f4d402b3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_le_wMult_iff {ρ : ℂ} (hρ : ρ.im ≠ 0) : 1 ≤ wMult ρ ↔ hardyW ρ = 0 := by
  have ha := hardyW_analyticAt hρ
  have h0 : wMult ρ = 0 ↔ hardyW ρ ≠ 0 := by
    rw [← ha.analyticOrderAt_eq_zero, ← wMult_cast hρ]; norm_cast
  constructor
  · intro h; by_contra hne; have := h0.mpr hne; omega
  · intro h; by_contra hlt; exact (h0.mp (by omega)) h

/-! ### finiteness of height windows (uses the strip hypothesis) -/

/-- zeros of W with |Im| ≥ t₀ inside a compact height range are finite (in the half-strip [0,2] × [a,b], a ≥ t₀ > 0,
or its mirror image). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7c149696a39bbaa0e7c3ec69ecc0bd056f1473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
