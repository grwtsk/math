# Cone-to-filled radial quotient from the exact polygon source

**Owner:** [grwtsk/math#976](https://github.com/grwtsk/math/issues/976)  
**Parent:** [draft PR #972](https://github.com/grwtsk/math/pull/972), immutable head `525457c57b9d5b040bbe0c3be46f80c7e4eaaaa0`  
**New Lean source:** `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean`  
**Git source blob:** `b282000a00e561eb12b1fb8522a657fe93c22c25`  
**Status:** `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`

## The exact claim

Let (B_k) be the original disjoint union of (4(k+2)) directed real unit intervals, and (I=[0,1]) their true radial interval. Keep four distinct spaces:

1. (R_k=B_k\times I), the real radial-square source from #859.
2. (C_k=P_k\times I), the cylinder over the **unpaired** cyclic perimeter (P_k) from #872, without opposite-side pairings.
3. (K_k=C_k/(P_k\times\{0\})), the apex-only topological cone from #972.
4. (X_k), the **paired** filled polygon quotient from #859.

Their source-authentic arrows are:

```text
  original radial source R_k
          |  perimeterProductProjection    [PR #962]
          v
      perimeter cylinder C_k
          |  coneProjection                [PR #972]
          v
        unpaired cone K_k
          |  coneToFilled                  [PR #972]
          v
      paired filled quotient X_k
```

The *other* original source arrow is `radialProjection : R_k → X_k` from #859. It is already a quotient map by its coinduced quotient topology. The new source packages

```lean
radialSourceToCone k :
    RadialSource k → PerimeterCone k :=
  coneProjection k ∘ perimeterProductProjection k
```

and proves the exact pointwise equation, not merely a homotopy or comparison of unnamed maps:

```lean
coneToFilled k ∘ radialSourceToCone k = radialProjection k
```

The proof consumes `perimeterJointRadialMap_source` and `coneToFilled_projection`, on *every* original signed edge point and radius.

## Quotient cancellation

The three input statements are:

```lean
IsQuotientMap (perimeterProductProjection k) -- #962
IsQuotientMap (coneProjection k)         -- #972
IsQuotientMap (radialProjection k)       -- #859
```

Pinned Mathlib at `db584cd6d46c92f209a44c0f1c829460d327499d` contains the actual theorems `Topology.IsQuotientMap.comp` and `Topology.IsQuotientMap.of_comp_isQuotientMap` in `Mathlib/Topology/Maps/Basic.lean`.

The first theorem makes `radialSourceToCone k` a quotient map. The second cancels it from the commutative triangle: if (f) and (g\circ f) are quotient maps, then (g) is a quotient map.

Therefore the authored theorem candidate is

```lean
coneToFilled_isQuotientMap (k : ℕ) :
  IsQuotientMap (coneToFilled k)
```

No Hausdorff assumption for (X_k) is required. The result is stronger than a continuous surjection: the topology on (X_k) is the final topology under the map from the genuine perimeter cone. For any topological space (Y) and map (u:X_k\to Y), the new `continuous_iff_comp_coneToFilled` candidate records

\[
\operatorname{Continuous}(u)
\iff
\operatorname{Continuous}(u\circ F_k).
\]

### Hostile comparison

The original side-pairing relations remain effective. The cone boundary keeps different opposite-side source points apart, while the old filled quotient identifies them. Thus `coneToFilled_quotient_but_not_injective` and `coneToFilled_has_distinct_fiber` show explicitly that the new quotient-map candidate is not a homeomorphism. It cannot be an embedding of the unpaired cone into the filled quotient.

Genus (2) and genus (3) fixtures retain directed side periods (8) and (12), respectively. They do not replace genuine source identities with a free-standing finite cardinality.

## Unproved obligations

This bounded result does **not** characterize all fibers of `coneToFilled`, produce a standard closed-disk homeomorphism (K_k\simeq D^2), or supply the full adjunction-space/CW pushout universal property. It also does not establish a genus-(g) surface manifold, actual cellular-to-singular homology, van Kampen/Hurewicz, marked hyperbolic geodesic lengths, Selberg/Weil–Petersson/GUE, sofic/Chowla dynamics, a zeta zero divisor, or the Riemann hypothesis.

The next mathematical supplier is the complete equality-of-fibers characterization matching the original radial-square-sector pairing relation. Only after this should an adjunction-space identification be promoted; an independent cone-to-standard-disk homeomorphism remains required.

## Credit and verification boundary

Mathematical direction and source architecture: R.A. Jacob Martone; proof drafting assistance: OpenAI ChatGPT. The topological quotient-map composition/cancellation theorems are due to Mathlib contributors, not newly proved here. Earlier polygon sources and their mathematical attributions are unchanged.

This new module was **not elaborated or kernel checked**. Its 12 authored declaration names and kinds are a textual source inventory, not generated Lean declarations or accepted theorem types. No Lean/Lake/native/VM/F06/CI/executor/cache, public root, toolchain or dependency was changed or run. The trust gate in #100 requires an accepted immutable exact-head replay and declaration/type/import/axiom/unsafe/hostile audit before any proof acceptance, merge or issue closure.
