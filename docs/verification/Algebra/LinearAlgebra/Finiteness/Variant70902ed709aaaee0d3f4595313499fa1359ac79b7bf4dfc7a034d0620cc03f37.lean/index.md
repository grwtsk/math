# Verification target: GRWTSK.Algebra.LinearAlgebra.Finiteness.Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "096873808204db26c093654b3cb57bffa78835ec",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `096873808204db26c093654b3cb57bffa78835ec`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.RelSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.AssociatedPrime.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submodule.IsQuotientEquivQuotientPrime](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean/declarations/submodule-isquotientequivquotientprime--dfd5e03b4321b067d96d1a39.md) | 45 | `declaration-track:dfd5e03b4321b067d96d1a39ef147ab7d27267925009cc80f9543cd14cc45a6f` |
| 2 | `theorem` | [Submodule.isQuotientEquivQuotientPrime_iff](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean/declarations/submodule-isquotientequivquotientprime-iff--21ec8b97562ef3f01c9e931b.md) | 49 | `result-track:21ec8b97562ef3f01c9e931b7cc9946540b9d1962b7fb4c8e29a46b127675e98` |
| 3 | `theorem` | [IsNoetherianRing.exists_relSeries_isQuotientEquivQuotientPrime](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean/declarations/isnoetherianring-exists-relseries-isquotientequivquotientprime--239cfea37df60bc13943b5b0.md) | 85 | `result-track:239cfea37df60bc13943b5b0ec46fd7f1fd6eb1e93cf28f08e146b17b50d771e` |
| 4 | `theorem` | [IsNoetherianRing.induction_on_isQuotientEquivQuotientPrime](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean/declarations/isnoetherianring-induction-on-isquotientequivquotientprime--89d800fb51049f45aa36a2ec.md) | 110 | `result-track:89d800fb51049f45aa36a2ecf1c1fb9c8e13a2480ac04f60161ab03615ca8060` |
| 5 | `theorem` | [associatedPrimes.finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant70902ed709aaaee0d3f4595313499fa1359ac79b7bf4dfc7a034d0620cc03f37.lean/declarations/associatedprimes-finite--a4bf3151a1393f35ae35d576.md) | 149 | `result-track:a4bf3151a1393f35ae35d576696c97fce81667c8cd9151f9f25d621207cd3c8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
