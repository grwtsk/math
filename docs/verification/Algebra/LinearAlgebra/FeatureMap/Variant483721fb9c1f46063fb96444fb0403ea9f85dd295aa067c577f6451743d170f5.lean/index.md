# Verification target: GRWTSK.Algebra.LinearAlgebra.FeatureMap.Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6796eaa9f7edb4fa819ed6d706f14b1b76aeb86a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6796eaa9f7edb4fa819ed6d706f14b1b76aeb86a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Hilbert.Completion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rhetoricalVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/rhetoricalvector--31e2adc29dd265950025a2f2.md) | 29 | `declaration-track:31e2adc29dd265950025a2f2d72cc224c5bce7769724d0ecd88c8ee4a7612ae5` |
| 2 | `def` | [rawToRhetorical](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/rawtorhetorical--8b52620c3b34fdce04fd009a.md) | 36 | `declaration-track:8b52620c3b34fdce04fd009a24c5960d48980fc69ec2c65c7ef4a16d467cec84` |
| 3 | `theorem` | [rawToRhetorical_basisVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/rawtorhetorical-basisvector--5f42cf262bdbcf775a98ef52.md) | 41 | `result-track:5f42cf262bdbcf775a98ef52982cbd11bad61fc561aa9462664039cead63d92f` |
| 4 | `theorem` | [inner_rawToRhetorical](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/inner-rawtorhetorical--4e36ead20fffe0b848111c2e.md) | 48 | `result-track:4e36ead20fffe0b848111c2e79fb7e291f3799e83381a02d4f2daeef86956feb` |
| 5 | `theorem` | [inner_rhetoricalVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/inner-rhetoricalvector--5ac7f17c76c4547056f58dfd.md) | 59 | `result-track:5ac7f17c76c4547056f58dfd8165b82c5c333c3aff43c16cb780a89f3a15e21b` |
| 6 | `theorem` | [norm_rhetoricalVector_sq](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/norm-rhetoricalvector-sq--794b838523c0cdf32c4c3c9e.md) | 68 | `result-track:794b838523c0cdf32c4c3c9ed454b96c9550239cbc3be2336bd1fbc9a8f36ebc` |
| 7 | `def` | [rhetoricalSpan](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/rhetoricalspan--ef78042c3c7a6eb5a31c0312.md) | 75 | `declaration-track:ef78042c3c7a6eb5a31c0312292d684fe0097bb59eb0d1fac058774195fcc3ce` |
| 8 | `theorem` | [rawToRhetorical_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/rawtorhetorical-mem-span--eecb3fbf5d8274231201c6c1.md) | 79 | `result-track:eecb3fbf5d8274231201c6c10f65b42374c479096078d5881c9d3566298bbc9f` |
| 9 | `theorem` | [rhetoricalVector_denseSpan](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/rhetoricalvector-densespan--4586e34041d086aef78da669.md) | 103 | `result-track:4586e34041d086aef78da6691aabc6a67eb879166287f84643ae197ab0421729` |
| 10 | `def` | [roleVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/rolevector--7194e0038ea29a562d7759f0.md) | 118 | `declaration-track:7194e0038ea29a562d7759f0af18749d152540cfc32a1eae98ece5ca35769051` |
| 11 | `def` | [conceptVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/conceptvector--0a32e3442fe97307b23f7cf0.md) | 124 | `declaration-track:0a32e3442fe97307b23f7cf0b160b2b6c7d072b3c681ee55233b9c4712def244` |
| 12 | `def` | [premiseVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/premisevector--94ec23e25fefa03ef3e41697.md) | 128 | `declaration-track:94ec23e25fefa03ef3e41697d7f34d2ef5571c3119792b38f4679fcc47ce701a` |
| 13 | `def` | [conclusionVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/conclusionvector--55112c29374928644b1014f6.md) | 132 | `declaration-track:55112c29374928644b1014f69a7234d02a335ff2f39f1e05b12e41d54b666769` |
| 14 | `def` | [positiveVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/positivevector--8aacde03e5ce5b50ee8eb85c.md) | 136 | `declaration-track:8aacde03e5ce5b50ee8eb85cc6b034f4d636ca247acda5d825e19bfd8661163c` |
| 15 | `def` | [negativeVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/negativevector--7ec8cc74b4e7557d3f8f5ea9.md) | 140 | `declaration-track:7ec8cc74b4e7557d3f8f5ea95fd2407c0a9b41af604de34f7abf7451e0c9ad80` |
| 16 | `def` | [sourceVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/sourcevector--22b34165b6338f7f59c868fe.md) | 144 | `declaration-track:22b34165b6338f7f59c868fe51ba1da3d8a08100ba2d656933a496e7f7390b6e` |
| 17 | `def` | [targetVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/targetvector--502bc89cbaf02f0b89282604.md) | 148 | `declaration-track:502bc89cbaf02f0b89282604e0a8d5a79f7f875ec6a87875afdd8636cb835b4a` |
| 18 | `theorem` | [inner_roleVector](../../../../../mathematics/Algebra/LinearAlgebra/FeatureMap/Variant483721fb9c1f46063fb96444fb0403ea9f85dd295aa067c577f6451743d170f5.lean/declarations/inner-rolevector--b3135d3f60d544e1233c0a8b.md) | 152 | `result-track:b3135d3f60d544e1233c0a8b69a51b6b26d342b0b0ef58024f191ca6e224996f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
