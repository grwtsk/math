# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PowerSeries.Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "791b8c529534024ad46d06248621083886e908e3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `791b8c529534024ad46d06248621083886e908e3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean.json)

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
| 1 | `def` | [toPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/topowerseries--b2cce54ba29ea5978b3c1af0.md) | 55 | `declaration-track:b2cce54ba29ea5978b3c1af0e4a84a0415932a7304bc1cbbb8ce2e7438b50ac1` |
| 2 | `theorem` | [coeff_toPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/coeff-topowerseries--4f3d2c06e6072721da13c076.md) | 79 | `result-track:4f3d2c06e6072721da13c0761e226d1677b86409a0038763f411ab87cc7edd3b` |
| 3 | `theorem` | [coeff_toPowerSeries_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/coeff-topowerseries-symm--9051f34c9090a322462e1de0.md) | 83 | `result-track:9051f34c9090a322462e1de00bc8266111c06e835fd338dd5e1bd0412e9de535` |
| 4 | `def` | [ofPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/ofpowerseries--3ceb4ca9026b7f9b1a818941.md) | 90 | `declaration-track:3ceb4ca9026b7f9b1a818941150f8649f0fd33dc391608f244fe27fc800e9ea4` |
| 5 | `theorem` | [ofPowerSeries_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/ofpowerseries-injective--11917ec09c512cd127dbab74.md) | 97 | `result-track:11917ec09c512cd127dbab7444bde6330449c879db3fa870160e9e35c45051e8` |
| 6 | `theorem` | [ofPowerSeries_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/ofpowerseries-apply--3e4b2bec35ee85410f3d6c83.md) | 101 | `result-track:3e4b2bec35ee85410f3d6c8351eee657f052514bb41d93a107587d51263ebaa3` |
| 7 | `theorem` | [ofPowerSeries_apply_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/ofpowerseries-apply-coeff--666f9cf193726367db2def73.md) | 105 | `result-track:666f9cf193726367db2def73effe8cfd2dafdc34308e69c7239c38937dc78fa3` |
| 8 | `theorem` | [ofPowerSeries_C](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/ofpowerseries-c--ca0f6119e29e7af61d018848.md) | 114 | `result-track:ca0f6119e29e7af61d01884880020b614cc1dc86e2620097d344f14dd90ba3c5` |
| 9 | `theorem` | [ofPowerSeries_X](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/ofpowerseries-x--eece909ca9730534bc6e8c36.md) | 128 | `result-track:eece909ca9730534bc6e8c363d02fb15fe07f6a944d5360474786e9c12437d51` |
| 10 | `theorem` | [ofPowerSeries_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/ofpowerseries-x-pow--1bf06f888820128d70513a00.md) | 140 | `result-track:1bf06f888820128d70513a001d470d226013fbb3d92e958e7f8d89b14718285e` |
| 11 | `def` | [toMvPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/tomvpowerseries--19ec1683e2824d6664dd8889.md) | 153 | `declaration-track:19ec1683e2824d6664dd88895be6445f071170decf20cc4a459c323aeedb1e69` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/instance--8936d2765dda033fe7c230f3.md) | 183 | `declaration-track:8936d2765dda033fe7c230f3ef8002e0c341f2ae406ee4735e7f60e9184ba6ed` |
| 13 | `theorem` | [coeff_toMvPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/coeff-tomvpowerseries--d139b13d9b4a61256389c00f.md) | 186 | `result-track:d139b13d9b4a61256389c00f0eaf7e3cbb039026a59354d3e51968a8d9d2d37e` |
| 14 | `theorem` | [coeff_toMvPowerSeries_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/coeff-tomvpowerseries-symm--cfeb22c928b0855f64933c96.md) | 190 | `result-track:cfeb22c928b0855f64933c9612148c74d00563a051f20d4e36b89f2e13af5d64` |
| 15 | `def` | [toPowerSeriesAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/topowerseriesalg--7dfdc9476aec7827f14da8d7.md) | 202 | `declaration-track:7dfdc9476aec7827f14da8d75b2f6130ebbca0df995c8e22155f3a5f481b1e4a` |
| 16 | `def` | [ofPowerSeriesAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/ofpowerseriesalg--c1685c6eb89d8bb45b44ec3a.md) | 212 | `declaration-track:c1685c6eb89d8bb45b44ec3a7f41a8b502ab12907bd6f3f62816749d8e5e9977` |
| 17 | `instance` | [powerSeriesAlgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/powerseriesalgebra--202b2c05fd004bbdabc17879.md) | 217 | `declaration-track:202b2c05fd004bbdabc1787969e77fbac79a06147bab91b16a11f7cc71692e36` |
| 18 | `theorem` | [algebraMap_apply'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/algebramap-apply--0a895aa855261f5268c39a6b.md) | 224 | `result-track:0a895aa855261f5268c39a6b268bdcc32d47d47c95985914405aba96142f6cb7` |
| 19 | `theorem` | [_root_.Polynomial.algebraMap_hahnSeries_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/root-polynomial-algebramap-hahnseries-apply--3c7895e7f1f6a3bc96cc6a4c.md) | 229 | `result-track:3c7895e7f1f6a3bc96cc6a4ce9d43b88487eefcff3a3611369b246a23a80efb4` |
| 20 | `theorem` | [_root_.Polynomial.algebraMap_hahnSeries_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/declarations/root-polynomial-algebramap-hahnseries-injective--6f9ec0f42902dc19b9338005.md) | 233 | `result-track:6f9ec0f42902dc19b9338005400a13c3e73a18c4b5be088aa50ef6a29d4b9ee6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
