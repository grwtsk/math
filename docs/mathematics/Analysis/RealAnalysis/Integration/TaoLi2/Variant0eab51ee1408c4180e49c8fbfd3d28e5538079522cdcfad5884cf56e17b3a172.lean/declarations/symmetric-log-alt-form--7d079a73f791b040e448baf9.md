# symmetric_log_alt_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19f85068-9eb3-a7b5-40da-79906a90f4f7",
  "kind": "theorem",
  "lexical_name": "symmetric_log_alt_form",
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
  "slug": "symmetric-log-alt-form--7d079a73f791b040e448baf9",
  "source": {
    "blob": "ee0a3235dff71c7a8c2d22b9cbfc63502feb29bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d079a73f791b040e448baf99594ee5460320c0b17bd16805bfb6a23e8e80768",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19f85068-9eb3-a7b5-40da-79906a90f4f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetric_log_alt_form (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1) :
    1/Real.log (1 + t) + 1/Real.log (1 - t) =
    Real.log (1 - t^2) / (Real.log (1 + t) * Real.log (1 - t)) :=
  LeanCert.Engine.TaylorModel.symmetricLogCombination_alt t ht_pos ht_lt

/-! ## Part D: The li(2) computation path

To compute li(2):
1. Split: li(2) = ∫₀^{1-ε} dt/log(t) + ∫_{1-ε}^{1+ε} dt/log(t) + ∫_{1+ε}^2 dt/log(t)
2. The middle integral is the principal value part
3. Use cancellation: ∫_{1-ε}^{1+ε} dt/log(t) = ∫₀^ε (1/log(1+u) + 1/log(1-u)) du
4. This is absolutely convergent because cancellation makes integrand O(1)

The numerical value: li(2) = Ei(log(2)) = 1.0451637801...

To verify in LeanCert:
- Verify bounds on the integrand
- Use interval integration to bound ∫₀^{0.9} du × (bounded integrand)
- This gives li(2) ∈ [1.04, 1.05] etc.
-/

-- The integrand bound we CAN verify:
-- For t ∈ [0.1, 0.9], |1/log(1+t) + 1/log(1-t)| ≤ some constant

-- Let's try a simpler approach: verify li(2) via direct integration bounds
-- ∫_2^3 dt/log(t) should be computable since no singularity

-- Log bounds on the interval [2, 3]: log(2) ≈ 0.693, log(3) ≈ 1.099
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0a3235dff71c7a8c2d22b9cbfc63502feb29bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
