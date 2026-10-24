# Verification target: GRWTSK.Algebra.Basic.Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9ed21c55fcccd87fede17fb4cfd37b1e27fe07d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9ed21c55fcccd87fede17fb4cfd37b1e27fe07d`.

Source path: `GRWTSK/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HopfAlgebraStruct](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/hopfalgebrastruct--321e66eb25e3339dab0f08d4.md) | 58 | `declaration-track:321e66eb25e3339dab0f08d4f47a40f3815632c63e4469384661e94566e14778` |
| 2 | `class` | [HopfAlgebra](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/hopfalgebra--9d9557f84b56cdd6733f2711.md) | 65 | `declaration-track:9d9557f84b56cdd6733f27112308c170af46d8916385dd5565af490f5afb7bb4` |
| 3 | `theorem` | [mul_antipode_rTensor_comul_apply](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/mul-antipode-rtensor-comul-apply--0bf46d20c18c706f1cb8eddb.md) | 82 | `result-track:0bf46d20c18c706f1cb8eddbbb4ee337b48a1b63150d43de89f9316b1c336e8e` |
| 4 | `theorem` | [mul_antipode_lTensor_comul_apply](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/mul-antipode-ltensor-comul-apply--5f53bbafb74e84821935373d.md) | 88 | `result-track:5f53bbafb74e84821935373d8459cff58331441e1bbf611a11de3a0ff6bd5a02` |
| 5 | `theorem` | [antipode_one](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/antipode-one--52f933cd858b612934dea9b5.md) | 94 | `result-track:52f933cd858b612934dea9b56b2b2503d9aac28ed26b2da964edc7a4602435bf` |
| 6 | `lemma` | [sum_antipode_mul_eq_algebraMap_counit](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/sum-antipode-mul-eq-algebramap-counit--3eb254bb24dc5f7a560e4993.md) | 100 | `result-track:3eb254bb24dc5f7a560e4993ddc5aecca73842fa55655252ea0186ac73375b76` |
| 7 | `lemma` | [sum_mul_antipode_eq_algebraMap_counit](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/sum-mul-antipode-eq-algebramap-counit--e253922f399121cc2d4d2bc0.md) | 105 | `result-track:e253922f399121cc2d4d2bc06abff4f973f2c7c9faa816aca5b0a0bb19963496` |
| 8 | `lemma` | [sum_antipode_mul_eq_smul](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/sum-antipode-mul-eq-smul--c107d02b5fc1bcefe6693a8e.md) | 110 | `result-track:c107d02b5fc1bcefe6693a8e7cb5c23fadff686d236a5f0b327913d080fb34a4` |
| 9 | `lemma` | [sum_mul_antipode_eq_smul](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/sum-mul-antipode-eq-smul--21d4b66810d6a217e07a3964.md) | 115 | `result-track:21d4b66810d6a217e07a396487643b60a72b5153c17257ae42c50fee70fc8f09` |
| 10 | `lemma` | [counit_antipode](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/counit-antipode--c55e02264acdb77dc7dabfa0.md) | 120 | `result-track:c55e02264acdb77dc7dabfa0169d2d82ad9630aff796ffb22c646ed5557fb252` |
| 11 | `lemma` | [counit_comp_antipode](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/counit-comp-antipode--5b0c0d1d6f3d0f7a8bf04a29.md) | 127 | `result-track:5b0c0d1d6f3d0f7a8bf04a29a3e05e5e76f5f5211793a183095dfa69ade545aa` |
| 12 | `instance` | [toHopfAlgebra](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/tohopfalgebra--51a1a1975df5cadbbed61dd4.md) | 139 | `declaration-track:51a1a1975df5cadbbed61dd43fd8fd5894b50c3c7949d0ad024e0dcadc6ce420` |
| 13 | `theorem` | [antipode_eq_id](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/antipode-eq-id--282e476b091782825de66d61.md) | 145 | `result-track:282e476b091782825de66d6193e2b4bc46214a65c4976540826cf280ea0b87e8` |
| 14 | `abbrev` | [ofConvInverse](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/ofconvinverse--7a993dfc0d669cbac346fe76.md) | 156 | `declaration-track:7a993dfc0d669cbac346fe767fa010aa1888a07e87a97691a7d22f8ee22f2e23` |
| 15 | `abbrev` | [ofAlgHom](../../../../mathematics/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/declarations/ofalghom--e528eb25c1cdbf32e050386a.md) | 167 | `declaration-track:e528eb25c1cdbf32e050386a79283091d1704f21dea2d7dd83378702f69dead6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
