# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Functor.Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7103f5ec6ba52bff71ad0a3b3d36024be6b00ddf",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7103f5ec6ba52bff71ad0a3b3d36024be6b00ddf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Union` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NAry` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Functor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [functor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/functor--e681072bfcddd015e04219aa.md) | 45 | `declaration-track:e681072bfcddd015e04219aac7ad579be52bb9fc994e3dec185c63c6ff053e50` |
| 2 | `instance` | [lawfulFunctor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/lawfulfunctor--978f6e1551bdec8a439b2527.md) | 47 | `declaration-track:978f6e1551bdec8a439b2527dd8fda98e93cfded15ddc382a1e294186281c076` |
| 3 | `theorem` | [fmap_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/fmap-def--6bcb96e500f5ef2482d0cfd7.md) | 53 | `result-track:6bcb96e500f5ef2482d0cfd7f38359b820be77433b39cdc0956d2067e9dd7564` |
| 4 | `instance` | [pure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/pure--91a076cc7ea1f46b0b2cc0bb.md) | 60 | `declaration-track:91a076cc7ea1f46b0b2cc0bbd9f5b1ece5c5355e306b4a37c30942feb1c27e84` |
| 5 | `theorem` | [pure_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/pure-def--d56570e3245e2c43d7aa3e50.md) | 64 | `result-track:d56570e3245e2c43d7aa3e500e61028fc957b0a94daedd0dcac0f14db3a5287e` |
| 6 | `instance` | [applicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/applicative--06a785e8a7583d1ce0b658b3.md) | 73 | `declaration-track:06a785e8a7583d1ce0b658b376830faef5abf945678d2f1d53b8220be56e6d91` |
| 7 | `theorem` | [seq_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/seq-def--b9dc59dd82254fc76c06cdd1.md) | 80 | `result-track:b9dc59dd82254fc76c06cdd1d7c41dc4a2ff4a5a61e1c791cf1e00c95faee28b` |
| 8 | `theorem` | [seqLeft_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/seqleft-def--f61b9050781f896016132eef.md) | 84 | `result-track:f61b9050781f896016132eefb5d5c0a51e99681a6a4a567f822792b90270e1bc` |
| 9 | `theorem` | [seqRight_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/seqright-def--a6b892f29229ca44b3686eef.md) | 88 | `result-track:a6b892f29229ca44b3686eef9eaf18840d1d82c166710a561fa81d8d9bcdbb5d` |
| 10 | `theorem` | [image₂_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/image-def--bff573d5f655a96dc9dfe9bf.md) | 93 | `result-track:bff573d5f655a96dc9dfe9bf5f274021f7e974adc05f804675e6f385b0498668` |
| 11 | `instance` | [lawfulApplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/lawfulapplicative--e3b44a5ac877644d51752f73.md) | 98 | `declaration-track:e3b44a5ac877644d51752f734a4d1dc3b933ae2abc05eab84fb249bd4d295191` |
| 12 | `instance` | [commApplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/commapplicative--e1b39010729ca64d1451f032.md) | 138 | `declaration-track:e1b39010729ca64d1451f032f269e7c2d323a6a2cf3e82be4784a3bf7e908f07` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/instance--4164dfaaea249fda1e5732e9.md) | 155 | `declaration-track:4164dfaaea249fda1e5732e92aeed0d8689f9f5312ade6591c471ff4a451e31b` |
| 14 | `theorem` | [bind_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/bind-def--a44dd23457f46cd093a6d7cb.md) | 159 | `result-track:a44dd23457f46cd093a6d7cb01d02d848993754d8d6c5272c7686e533617f6d7` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/instance--4be10b442865e7629660e2d0.md) | 162 | `declaration-track:4be10b442865e7629660e2d03fa538b440033c2aa055da36aed23f27ff5f36d7` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/instance--34f7f52a16ad4e3055fc359c.md) | 178 | `declaration-track:34f7f52a16ad4e3055fc359c81432d7376791ef63ee6077a539daf103f5e7302` |
| 17 | `def` | [traverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/traverse--23c67a261c275b4ddf0c2e51.md) | 194 | `declaration-track:23c67a261c275b4ddf0c2e516af6fc1f70a65516b5029100ce2e252c784531b1` |
| 18 | `theorem` | [id_traverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/id-traverse--5656b8ee593614f92e99e168.md) | 198 | `result-track:5656b8ee593614f92e99e168b3604ab2fda1fe7c0dba2766c0bbeffddd3daa4e` |
| 19 | `theorem` | [map_comp_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/map-comp-coe--384d1ff9508fdd05db01c315.md) | 204 | `result-track:384d1ff9508fdd05db01c31543555f8ccbad1339f6a76dfcc8a26f4d9daac92e` |
| 20 | `theorem` | [map_comp_coe_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/map-comp-coe-apply--9d2019088b30487c02319b7b.md) | 210 | `result-track:9d2019088b30487c02319b7be7827074e1c3e63609436d6dc74a53732fc720b2` |
| 21 | `theorem` | [map_traverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Functor/Variant63f9902c07562ff68cb775c0c52adb5174e816b45acb6975838535c9e1cb50dc.lean/declarations/map-traverse--5dba2937e67d74a82e7e11be.md) | 215 | `result-track:5dba2937e67d74a82e7e11be6dc8bbb165f35287030a5099929ef194bdf185e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
