# log_0_5_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0345fe6a-cec0-ae10-9aa9-2e5ba0b2106e",
  "kind": "theorem",
  "lexical_name": "log_0_5_bounds",
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
  "slug": "log-0-5-bounds--8065532986b8eef5ab8c55fe",
  "source": {
    "blob": "ee0a3235dff71c7a8c2d22b9cbfc63502feb29bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8065532986b8eef5ab8c55fe8d337a31df9d486f17be4ff26f18ab9b378bf0e2",
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

Occurrence: `result:0345fe6a-cec0-ae10-9aa9-2e5ba0b2106e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_0_5_bounds :
    ∀ x ∈ Set.Icc (1/2 : ℝ) (1/2), -(70:ℚ)/100 ≤ Real.log x ∧ Real.log x ≤ -(69:ℚ)/100 := by
  intro x hx
  exact ⟨log_0_5_lower x hx, log_0_5_upper x hx⟩

-- So 1/log(1.5) ≈ 2.47, 1/log(0.5) ≈ -1.44
-- Sum ≈ 2.47 - 1.44 = 1.03
-- Bound: 1/(2×0.5625) = 0.889... Hmm, that's tighter than 1.03

-- Actually the bound should be for the REGULARIZED version
-- The key is: 1/log(1+t) - 1/t + 1/log(1-t) + 1/t = 1/log(1+t) + 1/log(1-t)
-- Wait, let me re-read Tao's bound...

/-! ## Part C: The correct formulation

Actually Tao uses: g(t) = 1/sin(πt) - 1/(πt) for the Fourier estimate.

For the li(x) integral, the key is:
  ∫₀² dt/log(t) = ∫₀¹ (1/log(1+u) + 1/log(1-u)) du  (via u = t-1)

And bounding this integrand.
-/

-- The integrand near u=0:
-- 1/log(1+u) ≈ 1/u (singular)
-- 1/log(1-u) ≈ -1/u (singular)
-- Sum: the singularities cancel!

-- Taylor: log(1+u) = u - u²/2 + u³/3 - ...
--         log(1-u) = -u - u²/2 - u³/3 - ...
-- So: 1/log(1+u) + 1/log(1-u) = 1/(u - u²/2 + ...) - 1/(u + u²/2 + ...)

-- For small u, both ≈ 1/u, so they DO cancel to leading order.
-- The remainder is O(1), hence integrable!

-- Verify: |1/log(1+0.1) + 1/log(1-0.1)|
-- log(1.1) ≈ 0.0953, 1/log(1.1) ≈ 10.49
-- log(0.9) ≈ -0.1054, 1/log(0.9) ≈ -9.49
-- Sum ≈ 1.0 (small!)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0a3235dff71c7a8c2d22b9cbfc63502feb29bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
