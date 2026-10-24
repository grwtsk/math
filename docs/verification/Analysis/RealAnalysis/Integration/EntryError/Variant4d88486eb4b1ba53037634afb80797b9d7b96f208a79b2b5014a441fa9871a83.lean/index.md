# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EntryError.Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4fef11a08b062807a2d6326d30b960355b150c0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4fef11a08b062807a2d6326d30b960355b150c0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cauchyK](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/cauchyk--684e8eefdb4100a01d051d3c.md) | 37 | `declaration-track:684e8eefdb4100a01d051d3c6a2d4fee8fd331a445c3e4071f2c71757300ab75` |
| 2 | `theorem` | [cauchyK_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/cauchyk-pos--db119016547fb3269b12d44d.md) | 39 | `result-track:db119016547fb3269b12d44df89de86c362c9dc265aca3932461da1fa9009b31` |
| 3 | `theorem` | [cauchyK_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/cauchyk-nonneg--fd7abc40b91b8081d7f5712f.md) | 40 | `result-track:fd7abc40b91b8081d7f5712f2f415bdc85c683bc47cf8adcb56a333562179428` |
| 4 | `theorem` | [cauchyK_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/cauchyk-le-one--bab04b5e3558b887edf62016.md) | 41 | `result-track:bab04b5e3558b887edf62016dc6569d447adb034eefc23b37b21beb6d205c2b1` |
| 5 | `theorem` | [continuous_cauchyK](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/continuous-cauchyk--ab392e57810a0fa8aba507c3.md) | 44 | `result-track:ab392e57810a0fa8aba507c32438cf2b58e10ce1882893ec805586ae0f088762` |
| 6 | `theorem` | [integrable_cauchyK](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/integrable-cauchyk--96e41e96ae263b860c3cfb0a.md) | 48 | `result-track:96e41e96ae263b860c3cfb0a2513be156913f8afa8e005613d3974d8c1045156` |
| 7 | `theorem` | [integral_cauchyK](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/integral-cauchyk--b06b2ed3d78dc2a2721e5c63.md) | 52 | `result-track:b06b2ed3d78dc2a2721e5c63e25fd219ed256c0c540796426d1dc56e578b4b4c` |
| 8 | `theorem` | [cauchyK_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/cauchyk-mul-le--33d6d8b6d53ef276cfc55707.md) | 59 | `result-track:33d6d8b6d53ef276cfc557076c3c7ef61302ba4c58739cf38ea8ceb1716bf53f` |
| 9 | `theorem` | [integrable_cauchyK_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/integrable-cauchyk-mul--3257c1822ddafb61ed70cdf4.md) | 77 | `result-track:3257c1822ddafb61ed70cdf4b4d5e8b579777e2f723fa0191b3d450734ad46e6` |
| 10 | `theorem` | [integral_cauchyK_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/integral-cauchyk-mul-le--af203b6ae2500c1c054a929d.md) | 84 | `result-track:af203b6ae2500c1c054a929d622fe2c27b93a1b6f04f79f25269eb4fc142885b` |
| 11 | `theorem` | [cauchyK_far](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/cauchyk-far--55b5428c126d69297ee9be5c.md) | 97 | `result-track:55b5428c126d69297ee9be5cf4361e560f70e52a42311dd82ea24e00da591a1c` |
| 12 | `theorem` | [setIntegral_cauchyK_mul_far](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/setintegral-cauchyk-mul-far--dd50630ac2f9ca58393fa775.md) | 108 | `result-track:dd50630ac2f9ca58393fa7750dba5275ef36f0cfcb01a3fe8087711bbd23fe87` |
| 13 | `theorem` | [abs_sub_midpoint_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/abs-sub-midpoint-le--bd8dcbdd93091665c52032c5.md) | 123 | `result-track:bd8dcbdd93091665c52032c5180eb706233e65bf6e4bd7cd6952e864ba783271` |
| 14 | `theorem` | [entry_core](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/entry-core--e01fa05503c07b4862bc7dba.md) | 129 | `result-track:e01fa05503c07b4862bc7dbabc2d8b0696913eb4e5d8724ad065ecac358cc160` |
| 15 | `theorem` | [entry_core_mirror](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/declarations/entry-core-mirror--c38af54f8673aa50948a75de.md) | 207 | `result-track:c38af54f8673aa50948a75de5f819e1e952d97e9eb92c8a203546a4643e30402` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
