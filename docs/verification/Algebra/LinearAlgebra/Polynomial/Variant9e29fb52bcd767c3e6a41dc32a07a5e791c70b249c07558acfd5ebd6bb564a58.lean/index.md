# Verification target: GRWTSK.Algebra.LinearAlgebra.Polynomial.Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ddeda3f5caa35dfcdaef82cdeaf833735f59427",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ddeda3f5caa35dfcdaef82cdeaf833735f59427`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Expand` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [C_dvd_iff_zmod](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/c-dvd-iff-zmod--3ccdbc93fe88bb551577d425.md) | 31 | `result-track:3ccdbc93fe88bb551577d425da97eb8e5eeacd0c516973ce2192932afefeddb3` |
| 2 | `theorem` | [frobenius_zmod](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/frobenius-zmod--d11cd6395fb1d402611c085f.md) | 39 | `result-track:d11cd6395fb1d402611c085faac215741dac0e80bc95cf9351d40ac035d58c5b` |
| 3 | `theorem` | [expand_zmod](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/expand-zmod--848074c18194590be3f4ee42.md) | 46 | `result-track:848074c18194590be3f4ee4226afa59f5596dd44bad882443ffb9476df5dbfdc` |
| 4 | `def` | [indicator](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/indicator--0a0e3a17270c5422c3aa2331.md) | 66 | `declaration-track:0a0e3a17270c5422c3aa2331c137a4d991a5fb997800d1a250047d057f2d8b6c` |
| 5 | `theorem` | [eval_indicator_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/eval-indicator-apply-eq-one--8c821ab47f910a46c740995b.md) | 73 | `result-track:8c821ab47f910a46c740995bff8ce58dbc2e009074ad75bbb96bd3f0e3f5c68e` |
| 6 | `theorem` | [degrees_indicator](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/degrees-indicator--d57c55eaafb7570167bb1afa.md) | 79 | `result-track:d57c55eaafb7570167bb1afa6279ebd8afa5ed81885499def69b32959dae6e76` |
| 7 | `theorem` | [indicator_mem_restrictDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/indicator-mem-restrictdegree--3ae97fcf0e2a41930b6a6247.md) | 90 | `result-track:3ae97fcf0e2a41930b6a624747ad4ad455e004e7c216ffb73eb674fd618a50cd` |
| 8 | `theorem` | [eval_indicator_apply_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/eval-indicator-apply-eq-zero--51030873a26500e16871c30b.md) | 109 | `result-track:51030873a26500e16871c30b91139c63c27bd8ffced7c6ffc34e700a8303623d` |
| 9 | `def` | [evalₗ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/eval--18a61c7f470f6b4bf35bbda3.md) | 125 | `declaration-track:18a61c7f470f6b4bf35bbda316e2022fbfbc401e30f2eb698659938f94cd509b` |
| 10 | `theorem` | [map_restrict_dom_evalₗ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/map-restrict-dom-eval--3a5e51d226e21dde7b19b910.md) | 132 | `result-track:3a5e51d226e21dde7b19b910c8a11703947574fa327b158bfca8f13fbd47c29f` |
| 11 | `def` | [R](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/r--cf46fd75033917cd9aa57ab3.md) | 165 | `declaration-track:cf46fd75033917cd9aa57ab3f3825eebc43268557183590770fcad4f41dbb8d4` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/instance--d31e01cefa39df3d4801ed09.md) | 169 | `declaration-track:d31e01cefa39df3d4801ed09c5ecca7cfd414ad9eafdb13393042163724b9f6b` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/instance--61094bcea051f678123ff2e1.md) | 172 | `declaration-track:61094bcea051f678123ff2e12d4eb2a20015863cb09df333eae105cd0f0d5ce7` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/instance--8d0064920be057d3fcbed7e5.md) | 175 | `declaration-track:8d0064920be057d3fcbed7e53866b88a8a71bb05f38a00d102de845b9a49fba8` |
| 15 | `def` | [evalᵢ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/eval--8b6e9f9e2a23301789896c2c.md) | 179 | `declaration-track:8b6e9f9e2a23301789896c2c223ac73e17ac270fe7beabfe7457f5105aecc5f0` |
| 16 | `instance` | [decidableRestrictDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/decidablerestrictdegree--8cf97a195d5088ea43687107.md) | 184 | `declaration-track:8cf97a195d5088ea43687107cafd4c581ad399477090abe8f64ac224ca87623e` |
| 17 | `theorem` | [rank_R](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/rank-r--c73e3837022bce6d2ebf2f4d.md) | 191 | `result-track:c73e3837022bce6d2ebf2f4d6df118285e0570f61f91c450c28330340f0adf21` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/instance--d74dfa556befe7da03555eca.md) | 209 | `declaration-track:d74dfa556befe7da03555eca3388f87b6f606d65bb7f958acd9aeb3ef9575bbe` |
| 19 | `theorem` | [finrank_R](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/finrank-r--5ab3e6c6618486fc32fe5919.md) | 218 | `result-track:5ab3e6c6618486fc32fe5919b4952bb20205232c51ce36808cb7ac338925a370` |
| 20 | `theorem` | [range_evalᵢ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/range-eval--9c87f14ffe47deee879a2563.md) | 221 | `result-track:9c87f14ffe47deee879a2563889f78ddce1a33debe387d4810683cefb6251284` |
| 21 | `theorem` | [ker_evalₗ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/ker-eval--8a301e1d2e2d7b929bf8dc41.md) | 225 | `result-track:8a301e1d2e2d7b929bf8dc41dde87718d031e3f980caf5ea93a7412e1ec9f234` |
| 22 | `theorem` | [eq_zero_of_eval_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/declarations/eq-zero-of-eval-eq-zero--a48d0241d6a07c5de1ac647b.md) | 231 | `result-track:a48d0241d6a07c5de1ac647bfa06095be92a426bc671b5f50a8f10f519bdd744` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
