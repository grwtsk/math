# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3dfd643410c6caa59a76743bd495c0dbdf9c8ce",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3dfd643410c6caa59a76743bd495c0dbdf9c8ce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.ZeroCons` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/tolist--effeb037de6923113d65ba2b.md) | 29 | `declaration-track:effeb037de6923113d65ba2bacfae91b4144a9361be717a5894b5a513d75dd9e` |
| 2 | `theorem` | [coe_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/coe-tolist--a8d61d61cd3a8490938dbf0c.md) | 33 | `result-track:a8d61d61cd3a8490938dbf0cb815f92cebd3372949fbdd732aeeb518dbb0d8fd` |
| 3 | `theorem` | [toList_eq_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/tolist-eq-nil--e95fc2c208be8e74d80cd3a2.md) | 37 | `result-track:e95fc2c208be8e74d80cd3a2580486b190fd5e70963ea3498ad8e55dc1ce6f0e` |
| 4 | `theorem` | [empty_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/empty-tolist--276deefe898ba301f96d05f2.md) | 40 | `result-track:276deefe898ba301f96d05f2fe5fb2cceeae02025508dad8145f723be2b13ce6` |
| 5 | `theorem` | [toList_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/tolist-zero--19cbe5ce059ceb809db4fe7c.md) | 43 | `result-track:19cbe5ce059ceb809db4fe7c8950f492fda707b831b8e7c43fc34b4192ef8d9a` |
| 6 | `theorem` | [mem_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/mem-tolist--d8467953635f92c9a2aa059a.md) | 47 | `result-track:d8467953635f92c9a2aa059aea404d496234235312493554a46ce33633a03754` |
| 7 | `theorem` | [toList_eq_singleton_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/tolist-eq-singleton-iff--d74fdd803c36e29046622b9a.md) | 51 | `result-track:d74fdd803c36e29046622b9a31216e8e7a8f2ffb24fc575ab5762cdb215108ff` |
| 8 | `theorem` | [toList_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/tolist-singleton--130c182cd3ad25c824192408.md) | 55 | `result-track:130c182cd3ad25c824192408ebb8527b47658cefa3ac589fc2f5f84ddf19c348` |
| 9 | `theorem` | [length_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/length-tolist--fa0255a92e2433e3f483a760.md) | 59 | `result-track:fa0255a92e2433e3f483a7604adc58a1458ca9e69bd6bd7c54cb73b1864ca24c` |
| 10 | `def` | [strongInductionOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/stronginductionon--040f2ad495f29a7425795d57.md) | 68 | `declaration-track:040f2ad495f29a7425795d57c673a4f17b3bc7ea255ec401b8db05f7e62970d2` |
| 11 | `theorem` | [strongInductionOn_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/stronginductionon-eq--530106fab7c8c39c805ac7d9.md) | 75 | `result-track:530106fab7c8c39c805ac7d90ce7b82c1afd8d1bf6cbad5c91148218b49bf547` |
| 12 | `theorem` | [case_strongInductionOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/case-stronginductionon--5882e2c3d588db0f77c97c6f.md) | 80 | `result-track:5882e2c3d588db0f77c97c6fd03d65c01f30b0efc4b17b900a231323a7280d8a` |
| 13 | `def` | [strongDownwardInduction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/strongdownwardinduction--7de61eb613bcbf231fa01499.md) | 90 | `declaration-track:7de61eb613bcbf231fa01499fd8667cafcca55f8f8f0b2242f63758848faa205` |
| 14 | `theorem` | [strongDownwardInduction_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/strongdownwardinduction-eq--a203897d2dfdbd3221f792ce.md) | 99 | `result-track:a203897d2dfdbd3221f792ce0a78c30c25364fcd2ef8eaa88cc3d5cd705508bf` |
| 15 | `def` | [strongDownwardInductionOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/strongdownwardinductionon--0b27a3ea4609e316abc86fee.md) | 107 | `declaration-track:0b27a3ea4609e316abc86fee70c9a0e4fcc919eb9e6916ffeb2fd450e9acdd7c` |
| 16 | `theorem` | [strongDownwardInductionOn_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/strongdownwardinductionon-eq--6426f09044edfeda8c42631f.md) | 113 | `result-track:6426f09044edfeda8c42631ffe5a90a00d714444d99003fee24e180fc8cc4066` |
| 17 | `def` | [chooseX](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/choosex--be631f3f081083ad84272f02.md) | 125 | `declaration-track:be631f3f081083ad84272f022a78d96e5a7ffec2bea826699a7a051a94f176b8` |
| 18 | `def` | [choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/choose--aa01f12de62502eb91049850.md) | 142 | `declaration-track:aa01f12de62502eb910498509470f71be23e433817dbdf993ecef5c41a8bdd30` |
| 19 | `theorem` | [choose_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/choose-spec--11a096b4c629e55f9d996227.md) | 145 | `result-track:11a096b4c629e55f9d9962277b53a6cb104f6c387713440a9a8bb7420218f51e` |
| 20 | `theorem` | [choose_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/choose-mem--4c1a76316de2a4f6f3a8e91f.md) | 148 | `result-track:4c1a76316de2a4f6f3a8e91ffbe57214438a95fa4d9a44b26e54f30450db70b7` |
| 21 | `theorem` | [choose_property](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/choose-property--adc92ae020fa10ed7c5748b7.md) | 151 | `result-track:adc92ae020fa10ed7c5748b76e1e08e3ad0637578b5666716e120596567490c3` |
| 22 | `def` | [subsingletonEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/subsingletonequiv--04ef1ac6f37b559e863bea10.md) | 158 | `declaration-track:04ef1ac6f37b559e863bea10e99ba4ab1fd98f0c57c688566ea4145037af2c60` |
| 23 | `theorem` | [coe_subsingletonEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/coe-subsingletonequiv--f39720d58114f0a3b660e0c1.md) | 167 | `result-track:f39720d58114f0a3b660e0c14583a433486fdef85dd13e44545a754b2781c345` |
| 24 | `theorem` | [sizeOf_lt_sizeOf_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant484338d40cbf49916fe234a258e64aec46b42e9ba48f6846225ea655ebf20802.lean/declarations/sizeof-lt-sizeof-of-mem--d4d77a1a0343a744b5a7cde6.md) | 175 | `result-track:d4d77a1a0343a744b5a7cde6231c8fbca141b063f6a51ccdd4d004d01e3ade11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
