# Finite E8 covering references

Local attribution: grwtsk contributors. Basic.E8 source authors Bhavik Mehta and
Gareth Ma and the Sphere Packing in Lean project retain their public attribution
and Apache-2.0 obligations. The MainTheorem sorry placeholder remains excluded.

New source commit 63ea24924f18f87132e153ef59fb02c0e9aa314b, blob cd61fa5ac0d35d0642132d21b241012799dedfb6, turns the exact Euclidean
separation into external closed-ball covering cost equal to the finite sample's
cardinality when 2*epsilon<sqrt2. Arbitrary cover centers, empty samples and zero
radius are included; no boundary-radius/density/algorithmic statement is supplied.
[Canonical ledger](../../documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#e8-finite-covering-consumer-20261029)
and [target](../../documentation/mathematics/_verification/targets/ConvexAndDiscreteGeometry/GeneralConvexity/e8-finite-covering-20261029.json) preserve exact source/API/type/version scopes.
All native checks remain NOT_RUN; root/arithmetic mass transports remain unsupplied.

<a id="e8-cover-matching-20261029"></a>
### Radius-close E8 cover matching source candidates

Local attribution: grwtsk contributors. New source `6336a394397cca8587c4b0ba713b36e0ba4b5bee` / blob `719bf5797ad0d64246a718661340278b5b15a49f` exposes an actual injection from each finite E8 sample to any closed-ball cover center set when STRICT `2*epsilon<sqrt2`, with pointwise Euclidean `dist≤epsilon`. Finite equal-cardinality covers give an equivalence with the same forward map. Empty samples, zero radius and arbitrary nonlattice/infinite centers are retained in the injection theorem. The two exact roots are `GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8CoverMatching.exists_close_embedding_of_isCover` and `GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8CoverMatching.exists_close_equiv_of_isCover_and_card_eq`.

The Basic.E8 bound by Bhavik Mehta/Gareth Ma and the public Mathlib covering/finite-cardinality APIs retain Apache-2.0 attribution. Sphere `77cf0a0c104f2e31501eab04d88bbc068d61c169`, Basic.E8 `c369209e9ae2a7e358e2b312cd251bf9caf20cd2`; exact native Lean4.35.0-rc4/Mathlib `1f414401f69059aa7eead47b53ee40bd38455eeb` stays isolated. The actual covering-number consumer gains point-center witnesses behind the previous cardinal obstruction; no root-version port, nearest-center algorithm, arithmetic mass map or optimal-density theorem is supplied. MainTheorem remains excluded. All compilation/Comparator/interface/discovery/fresh replay/full axiom facets are NOT_RUN; independent checker UNSUPPLIED. Source/API/import/type review is not acceptance. Historical scopes remain unchanged.

[Canonical ledger](../../documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#e8-cover-matching-20261029) and [exact source-bound target](../../documentation/mathematics/_verification/targets/ConvexAndDiscreteGeometry/GeneralConvexity/e8-cover-matching-20261029.json) retain both literal expected types, source identities and remaining obligations.
