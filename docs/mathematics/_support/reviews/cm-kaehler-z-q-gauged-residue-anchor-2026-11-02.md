# Kähler Z→Q and complete signed residue gauge anchor

Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Source status: SOURCE_PROOF_CANDIDATE; compilation, expected types, fresh
kernel and transitive axiom audit are NOT_RUN.

## Pinned sources

- Parent main is the existing complete grwtsk/math tree at the guarded
  publication parent (see this review's commit parent and verification target).
- Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
- Original mu and pickupResponse:
  GRWTSK/NumberTheory/ElementaryNumberTheory/
  ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean,
  source blob 45e06c371d67bcf8c939d20a95fcbc63570546fa.
- Complete signed parity/additive classes:
  GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
  NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/
  DyadicSignedResidueWaveform.lean,
  source blob 07dfdae4a60b05f5da55cc20882411c85444fa82.
- Upstream geometric comparisons for FUTURE adapter only:
  openai/math@4eaee87548250b2682affda7d05d947c05554bae,
  OAI/Algebra/DeRham/Basic.lean,
  OAI/Analysis/HodgeTheory/Decomposition/KahlerCommutator.lean,
  OAI/AlgebraicGeometry/AbelianModuli/ReferenceFamily/Intrinsic/RationalLattice.lean,
  OAI/AlgebraicGeometry/Betti/ProjectiveCohomology.lean.

## Exact primary mathematical steps

1. Use Mathlib's actual Kähler differential module Ω[A/Z] for A a
   commutative Q algebra and the universal derivation D_Z, *before* the
   coefficient comparison Ω[A/Z]→Ω[A/Q]. Naturality on D and surjectivity
   come from KaehlerDifferential.map_D and map_surjective. Preserve the
   integer-source/rational-image pair even if later maps lose information.
2. Separately, for the standard integral lattice (Z²)^g, take
   J(x,y)=(-y,x), ω_Z(v,w)=Σ(x_v y_w−y_v x_w). The integral identity
   ω_Z(v,Jv)=Σ(x²+y²)≥0 is proved BEFORE rationalization. Its chosen
   complex coordinates are a model polarization, NOT a canonical
   geometric Kähler/Chern/Betti comparison.
3. Retain all original integer Möbius coefficients in Z, then Q, then
   complex responses with the unchanged real pickupResponse. The full
   integer-labelled vector is independent of the lossy sector quotient.
4. Use every sector Fin 2 × ZMod(d²), including nonunits and squareful
   zeros. Any unit-circle phase gauge changes sector coordinates;
   the inverse-phase detector exactly undoes the rephasing. Its
   positive norm invariance does not remove signed coherent cross terms.
5. The original pickup-energy identity in the *anchor* source is
   explicitly conditional on the equality of the new raw complex
   sector detector's REAL part with the original completeWave.
   That source-specific return is a separate finite-sum proof candidate
   in the expanded local formalization; it must not be hidden or
   represented as a kernel-verified theorem.

The integral Kähler differential and the integral symplectic
polarization are DIFFERENT mathematical objects; there is no
canonical map to an actual CM variety in the present anchor file.
A complete geometric source would need an ample line bundle,
its integral Chern class, a positive real (1,1)-form, its rational
Betti period comparison and a norm-compatible Hilbert realization.

## Alternate/hostile tests

A separate local expanded implementation contains a full integer→Q→C
source graph, all-sector aggregate, a lattice U(1) link connection,
covariant differences, triangular holonomy and an injective mixed
Kähler/arithmetic ledger. Its independent finite diagnostics passed
36,641 assertions at j=0..7 and d=1..5. These test exact arithmetic
and gauge identities, NOT compilation of this anchor source and NOT
a CERN experiment.

- Rationalizing arbitrary integral Betti cohomology may erase torsion.
  The universal Kähler differential map is not the Betti map.
- A nontrivial gauge can alter the UNCOMPENSATED coherent sum; the
  inverse-phase detector is essential.
- Aggregating multiple integer labels into one residue is not an
  isometry, so retain the full labelled source.
- The original source includes nonunit residues, zero symbols and
  both mixed parity orientations.
- No physically sourced gauge links, measured coupling, source
  polarization, original all-positive-rate Möbius energy bound, RH,
  or Schwartz-to-periodic Lp transference is established.
- CERN data anchors are only source-plus-unpaid-residual bookkeeping;
  no actual CERN event rows or fit are used here.

## Acceptance

Mathematically qualified admission requires a source-specific
geometric positive Kähler/cycle comparison and complete signed return,
then Lean parsing/compilation, exact theorem signatures, kernel replay
and full transitive axiom auditing at this exact source tree.
All these facets remain NOT_RUN or OPEN, and no runner, scheduler, CI,
root import or dependency migration was dispatched.
