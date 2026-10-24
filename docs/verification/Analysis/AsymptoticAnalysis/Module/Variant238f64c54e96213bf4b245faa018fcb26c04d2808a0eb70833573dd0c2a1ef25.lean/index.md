# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Module.Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c955284d566b67078cde64bad79184a0941c4dc",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c955284d566b67078cde64bad79184a0941c4dc`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasSum.const_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/hassum-const-smul--9257bd7daae8a077f677a2ef.md) | 32 | `result-track:9257bd7daae8a077f677a2ef00fb675227e96616cbb731b457b1b7a559455e4d` |
| 2 | `theorem` | [Summable.const_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/summable-const-smul--8efabddffb9f313717702610.md) | 36 | `result-track:8efabddffb9f313717702610a3332174041e0794661ab5fb383bba388b891d00` |
| 3 | `theorem` | [Summable.tsum_const_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/summable-tsum-const-smul--6f21d45dbc4887bae1f32f9f.md) | 41 | `result-track:6f21d45dbc4887bae1f32f9fb003c55693746e8d3c633c2b9d77d14e764f2f56` |
| 4 | `lemma` | [tsum_const_smul'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/tsum-const-smul--42824290ea9089c374bd3d76.md) | 47 | `result-track:42824290ea9089c374bd3d76bc004cb82f9c0e79d2722863419496033e4b1c95` |
| 5 | `lemma` | [tsum_const_smul''](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/tsum-const-smul--9a83219a94245cc2cc24120f.md) | 58 | `result-track:9a83219a94245cc2cc24120f2ea29030e9d93b0f9a552769a5ec44800bea0a8d` |
| 6 | `theorem` | [HasSum.smul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/hassum-smul-const--eb9b1575e72ac8f6d796c53e.md) | 76 | `result-track:eb9b1575e72ac8f6d796c53e061b1b9cdc233c425cff2567acf4fa6cfe9c10a9` |
| 7 | `theorem` | [Summable.smul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/summable-smul-const--386a234b5f9818d47ae967bd.md) | 80 | `result-track:386a234b5f9818d47ae967bddb4679b9df494c9133137a5e6e9b3867b122a481` |
| 8 | `theorem` | [Summable.tsum_smul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/summable-tsum-smul-const--60a8b96f29f6eac5fb95fc96.md) | 83 | `result-track:60a8b96f29f6eac5fb95fc961174f6c9ace922c3b5a3f79ddab2e3b35969a3e0` |
| 9 | `theorem` | [HasSum.smul_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/hassum-smul-eq--e886d935b6d3c02b5fead21f.md) | 100 | `result-track:e886d935b6d3c02b5fead21f272ea31db0c97c0123418f7238f63b3682b4fd25` |
| 10 | `theorem` | [HasSum.smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/hassum-smul--8c059f6faa8998221df61e86.md) | 107 | `result-track:8c059f6faa8998221df61e86142ab9842142552ae7c3a44c748e4b6283286749` |
| 11 | `theorem` | [tsum_smul_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/tsum-smul-tsum--6d0a85d9ae8c0313f3607841.md) | 114 | `result-track:6d0a85d9ae8c0313f3607841d855956269503d0bfa178aa7d637078e1740a320` |
| 12 | `theorem` | [ContinuousLinearMap.hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/continuouslinearmap-hassum--b7333bf7d33fecf638e9a913.md) | 130 | `result-track:b7333bf7d33fecf638e9a9134a1847ef5329b428ec5c36d3f300a26cd117e789` |
| 13 | `theorem` | [ContinuousLinearMap.summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/continuouslinearmap-summable--ce29707650552de5788380ea.md) | 136 | `result-track:ce29707650552de5788380ea4098bc923efcab985bfbe1010c41a4207bb749f1` |
| 14 | `theorem` | [ContinuousLinearMap.map_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/continuouslinearmap-map-tsum--11b2338d443611b048a58391.md) | 142 | `result-track:11b2338d443611b048a58391705d6dce41dc5df920f10289891251468f8d960e` |
| 15 | `theorem` | [ContinuousLinearEquiv.hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/continuouslinearequiv-hassum--ab6b333ffde19fd2f21f6c5e.md) | 147 | `result-track:ab6b333ffde19fd2f21f6c5ebfe59b29313eccb389b019ade359b169cb8d69b4` |
| 16 | `theorem` | [ContinuousLinearEquiv.hasSum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/continuouslinearequiv-hassum--6eb2651b5ab8b4500aae09dc.md) | 153 | `result-track:6eb2651b5ab8b4500aae09dc61796e75fecfd8e31ed3deeb7e4f84e6fbe069e4` |
| 17 | `theorem` | [ContinuousLinearEquiv.summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/continuouslinearequiv-summable--750bda92070a47d300fc9cba.md) | 157 | `result-track:750bda92070a47d300fc9cba1e43bdae285f06a1bd654691ee793881d9337947` |
| 18 | `theorem` | [ContinuousLinearEquiv.tsum_eq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/continuouslinearequiv-tsum-eq-iff--baada440bc8852fc4b022fec.md) | 161 | `result-track:baada440bc8852fc4b022fec15b8d99095cefc10851ef92aae6119312b2453af` |
| 19 | `theorem` | [ContinuousLinearEquiv.map_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/continuouslinearequiv-map-tsum--0a78706b5d9c1fac52cd8dbb.md) | 178 | `result-track:0a78706b5d9c1fac52cd8dbbdababa6043f231cfd75ee0fe2a808a9482ade7d1` |
| 20 | `def` | [MulAction.automorphize](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/mulaction-automorphize--2265c572cd965ca8de087db7.md) | 197 | `declaration-track:2265c572cd965ca8de087db78469ff35a5cdc70b855a9f35dcee95df215dfb7b` |
| 21 | `lemma` | [MulAction.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/mulaction-automorphize-smul-left--5be88a6e3e63b5492e5a4e64.md) | 214 | `result-track:5be88a6e3e63b5492e5a4e6405b3f6cb3625b1b5f8ffdcf7c497f679201addbf` |
| 22 | `def` | [QuotientGroup.automorphize](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/quotientgroup-automorphize--7c953ca92cd0e39e8fc854cc.md) | 239 | `declaration-track:7c953ca92cd0e39e8fc854cc0b7a8f6003820c8c5f5b12e052ff424c57184a50` |
| 23 | `lemma` | [QuotientGroup.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/quotientgroup-automorphize-smul-left--ad53f702319a069696e11899.md) | 243 | `result-track:ad53f702319a069696e11899d6327d27be7344b7043e00e9f105fb0b7562d7a4` |
| 24 | `lemma` | [QuotientAddGroup.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant238f64c54e96213bf4b245faa018fcb26c04d2808a0eb70833573dd0c2a1ef25.lean/declarations/quotientaddgroup-automorphize-smul-left--ac6006455e4c2fce03396a28.md) | 256 | `result-track:ac6006455e4c2fce03396a28314c1b6195fc1a663eab81a66b6da4527db8d489` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
