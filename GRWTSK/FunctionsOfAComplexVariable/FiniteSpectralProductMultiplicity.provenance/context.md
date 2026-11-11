# Program 8: finite spectral multiplicity, growth, and cross-program return

Local attribution: grwtsk contributors. Source authoring assistance: OpenAI ChatGPT.
Coordination: https://github.com/grwtsk/math/issues/1805 ; research https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/53 .
Primary ownership: layer 06, with conditional layer-07 consumers. MSC2020: 30C15, 30D15, 11M26, 11M41.

## Exact source identities

Initial inspected math main: `5f66eb82a40921253664f53602851091ccd01d94`. Refreshed complete main: `9fe07ab60646cc470029526c5d315310984aefa7`, tree `308cfc4592260edde3b900bacf6c43555e06e618`. The refresh added unrelated paths; preserve them. Publication commit and branch readback belong in issue #1805, not a predicted hash here.

| Canonical module | Git blob | SHA-256 |
|---|---|---|
| `GRWTSK/FunctionsOfAComplexVariable/FiniteSpectralProductMultiplicity.lean` | `fb029df1e22ac5c4f15922cd979a76924efb957a` | `5cd5fe63aa44c56d0649ae2094ef5d39ac0abdcba1c5848250e7640eeaa59a78` |
| `GRWTSK/FunctionsOfAComplexVariable/FiniteSpectralAnchorGrowth.lean` | `5ede92d4aea2f72dc66cf003ff4446e7e96cfe1f` | `0706b97f67db94b8e49977cbbb6ed2ed0805739c9f062ef26f43dfc80df86829` |
| `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/SpectralProductDivisorReturn.lean` | `a25fc237c478579e197498e1447b7a506e463f9f` | `a0824d50d1410791caf6342391beaf851eb36fd43c2a98eb31c15ba3f448f23e` |

There are 24 theorem declarations in 402 Lean lines. Each has a companion record in its module's provenance directory. The formal source is maintained only in math; it is not mirrored into the research repository.

## Source comparison, performed November 11, 2026

The motivating program is grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, November 10, 2026, section 20.4 / RP-OC-08. These are local standard consequences supporting that program, not theorems attributed to the monograph. No novelty is asserted.

Lean is pinned to `leanprover/lean4:v4.34.1`; mathlib to `d13f23b723b8a846827a245b89c10fc7d3f11612`. The primary upstream source is https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Analytic/Order.lean , blob `5dd01cf403100219545c2c7c5c81cacfbf634460`, authors Vincent Beffara, Stefan Kebekus and mathlib contributors. The order-additivity, centered-monomial, nonvanishing-order and natural-order definitions were inspected. Mathlib retains its upstream attribution and Apache-2.0 license. No upstream proof text is copied.

Local dependencies were inspected at the initial math pin, except the newly published determinant certification, inspected at the refreshed pin:

- Existing Program 8 finite anchors and canonical-product bounds: blobs `0080b2e7299bccd27fe5894770ba631535c10861` and `ecb5736d84716ac395f9c9bba65a13e41c16420a`.
- `AnalyticOrderTransport.lean`, blob `930cad7ce9c6b64663bf02bfa0745919fffdbcc6`: nonvanishing multiplier transport, also used by Program 5.
- Program 6 `ZeroCountCertificates.lean`, blob `231a71d3cb40cce0efe517acf5f102f33fcb13ed`: positive finite divisors, saturation and source reality. Its `IdentifiesZeros` alone does not certify analytic orders.
- Program 4 `ResonanceDeterminantReturn.lean`, blob `b7f5b4f55734b90669c8ee7343b8d59cd70017b5`; `ResonanceDeterminantCertification.lean`, blob `2537ff1e0c5796e402332d35882b8ffa9814ec54`: exact return and the general `finiteDivisor_source_return`. The latter's order hypothesis is supplied here by an actual product-order proof.
- Program 10 `WeilDenseCertificateReduction.lean`, blob `e84a5fded7bb33672f1c80d3e729bb28b2aee83e`: the existing actual primitive character source and open-strip `SatisfiesGRH` proposition. No replacement target is introduced.

## Mathematical boundaries and hostile cases

For real indexed roots, put a=i*beta and G_c(z)=exp(c*(z-a))*product_j((z-lambda_j)/(a-lambda_j)). At beta nonzero, the analytic order at z equals the number of indexed occurrences lambda_j=z. The distinct support and its occurrence weights therefore form an analytic divisor of this finite model. A triple-root regression prevents interpreting support cardinality as total multiplicity.

The exact genus-one slope is logDeriv(G_c,a), not c. With c real, beta positive and norm(logDeriv(G_c,a)) at most M, the imaginary anchor identity bounds the reciprocal-square mass by M/beta. Hence on norm(z-a) at most R the bound is exp(M*R+R^2*M/(2*beta)), independent of dimension. The existing complex-slope counterexample explains the real-slope restriction. No matrix determinant identification or Montel subsequence theorem is implicit.

Source multiplicities transfer only through an exact identity on an open domain and explicit analytic nonvanishing-factor hypotheses. Pointwise sample agreement or equal zero locations is insufficient. The final arithmetic consumer requires exact local source identities and coverage of EVERY open-strip zero. Neither supplier is constructed.

The reused Program 6 coordinate is s=1/2+i*z, opposite to the initial Program 8 written coordinate. Thus s=2 corresponds to beta=-3/2 here. The finite order theorems allow either nonzero sign. The positive-beta growth theorem is not silently applied at this negative anchor. No character evenness is assumed. The final consumer concerns the existing open-strip LFunction target, not an asserted equivalence with every completed-source GRH convention.

Arithmetic operator construction, full pole-inclusive Weil-form return with all prime powers and conductor/gamma/parity contributions, exact arithmetic logarithmic-derivative approximation, compactness, Hurwitz/Rouche multiplicity recovery in a limit, and the retained-lattice cutoff obstruction remain separate obligations.

## Evidence and clean-checkout reproduction

Source proof candidates; novelty `UNASSESSED`, with no novelty claim. Elaboration, fresh kernel replay, transitive axiom audit, independent analytic review, and arithmetic certification: `NOT_RUN`. Static inspection and source hashing are not proof checks. The same analytic argument underlies the Lean script; it is not an independent proof.

From a clean checkout of the published main-reachable commit recorded in issue #1805, keep the existing toolchain and lake-manifest pins and run:

```sh
lake build GRWTSK.FunctionsOfAComplexVariable.FiniteSpectralProductMultiplicity \
  GRWTSK.FunctionsOfAComplexVariable.FiniteSpectralAnchorGrowth \
  GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.SpectralProductDivisorReturn
```

Expected verification goal: all three targets elaborate at the pinned dependencies without placeholders; this is not an observed result. Subsequent fresh kernel replay and transitive axiom checks must bind to these source hashes and distinguish all inherited dependencies. No numerical data, random seed or third-party binary is needed for these symbolic statements.

Local Lean/Lake and verified canonical skill links were absent. Canonical Noe main `0126ba445446dea25047a89884df1adf6b10251a` was read and the prescribed proof-automation SKILL.md returned 404. Dependent proof automation was not invoked. Ordinary authorized GitHub authoring/publication uses the logged-in account under the current repository policy. The .github tree inspected has no workflow definitions; no CI success is asserted.
