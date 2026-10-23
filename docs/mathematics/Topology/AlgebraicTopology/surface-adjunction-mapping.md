# Continuous mapping equivalence for the polygon adjunction

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

Issue #1021 is a direct child of draft PR #1019 at exact parent head `dd8f9b97281ebc678fc767923a08462b15e2d8d9`.

The new source packages continuous maps from the authentic filled polygon quotient as exactly the compatible pairs of continuous maps from the standard closed disk and the paired polygon boundary one-skeleton. Compatibility is measured on the original unpaired perimeter and its exact attaching map; no abstract replacement of the boundary source is used.

It defines:

```lean
CompatibleContinuousPair k Y
restrictContinuousPair k
extendContinuousPair k
```

and scripts both inverse laws, yielding the type equivalence

```lean
continuousMappingEquiv (k : ℕ) (Y : Type*) [TopologicalSpace Y] :
  C(FilledPolygonQuotient k, Y) ≃ CompatibleContinuousPair k Y.
```

This is an equivalence of underlying types of continuous maps. It is not a homeomorphism of compact-open function spaces; no topology on the compatible-pair type is introduced.

The child branch also repairs one malformed inherited proof line in `SurfacePolygonAdjunctionUniversal.lean`: the parent source contained a literal backslash-`n` token inside the final uniqueness proof. The repair replaces only that token with the intended Lean line break, preserving the theorem statement and proof term structure.

No CW complex, manifold structure, cellular/singular comparison, homology, fundamental group, hyperbolic geometry, trace formula, GUE, sofic, Chowla, zeta-divisor, or Riemann-Hypothesis result is asserted. Exact-head Lean elaboration, generated-declaration reconciliation, and full transitive trust review remain required under issue #100.
