# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0567151c50faff738f89924acdb8d469cf324db7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0567151c50faff738f89924acdb8d469cf324db7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/declarations/list-prod-apply--3e85df379416b08bc64127b3.md) | 34 | `result-track:3e85df379416b08bc64127b3513b9cdf3141f009dac54cb5e32e14fbfff88282` |
| 2 | `theorem` | [multiset_prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/declarations/multiset-prod-apply--ec0fb2a457c54ba000ab4f94.md) | 41 | `result-track:ec0fb2a457c54ba000ab4f94783e4b7beb3a03549662655ae23aebd72422f1d0` |
| 3 | `theorem` | [Finset.prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/declarations/finset-prod-apply--9b7a2176eb144441db4d434c.md) | 50 | `result-track:9b7a2176eb144441db4d434c381176efe009cc0262a384848a300e530f3842ab` |
| 4 | `theorem` | [Finset.prod_fn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/declarations/finset-prod-fn--97342d78b15232d49e0a9bc4.md) | 58 | `result-track:97342d78b15232d49e0a9bc49d3f054c4e95660147326d0b4b0bafe5ef526945` |
| 5 | `theorem` | [Fintype.prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/declarations/fintype-prod-apply--5f23398f5e2740be3425157f.md) | 65 | `result-track:5f23398f5e2740be3425157f06996b6bd1480e17c711483ee0758946104d3081` |
| 6 | `theorem` | [prod_mk_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/declarations/prod-mk-prod--6896ee734bc3e869899faa85.md) | 72 | `result-track:6896ee734bc3e869899faa85e09615550ca891266c66ea1be3ea4bbe3e62b592` |
| 7 | `theorem` | [Finset.univ_prod_mulSingle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/declarations/finset-univ-prod-mulsingle--a831d926567f52543490894c.md) | 86 | `result-track:a831d926567f52543490894cd5054872a8ba7c23ec14881be086f39ed62375df` |
| 8 | `theorem` | [MonoidHom.functions_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/declarations/monoidhom-functions-ext--70cc293ca33d81468d822b54.md) | 94 | `result-track:70cc293ca33d81468d822b5431f1047a4bce5b60f9ee65eabd73b13acfa6fd6d` |
| 9 | `theorem` | [MonoidHom.functions_ext'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/declarations/monoidhom-functions-ext--4148fcbafb46f81b50f26ea8.md) | 108 | `result-track:4148fcbafb46f81b50f26ea830eb7e5de7dbe3b5ab6e948db396868613e5bd31` |
| 10 | `theorem` | [RingHom.functions_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/declarations/ringhom-functions-ext--b8493b275382c49e83f1def2.md) | 125 | `result-track:b8493b275382c49e83f1def22e64b594009365909eeb7fdc416643f57f22f375` |
| 11 | `theorem` | [fst_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/declarations/fst-prod--4469eb222735fb5140110376.md) | 138 | `result-track:4469eb222735fb51401103760a73bdc12f25a862ad03849f542616a11f4f6490` |
| 12 | `theorem` | [snd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6055fb2128c844ae2c6e583522c2aa5e7918e95c1a477d9dac52adc54d51650d.lean/declarations/snd-prod--e4228c1983365fa1533ad195.md) | 144 | `result-track:e4228c1983365fa1533ad195988b6193e0eea3138c3fac57df11d8cc62fe944f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
