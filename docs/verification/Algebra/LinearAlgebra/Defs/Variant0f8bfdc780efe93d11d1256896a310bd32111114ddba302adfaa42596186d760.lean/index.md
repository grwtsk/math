# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07ea2c832a16c963165b95efa4068d57642abb01",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07ea2c832a16c963165b95efa4068d57642abb01`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean.json)

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
| 1 | `def` | [FG](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/fg--59dfb1cadd1a6eba3669e5f9.md) | 42 | `declaration-track:59dfb1cadd1a6eba3669e5f91ee4a301ed3b03494c49cccbafc4cc2648939ca4` |
| 2 | `theorem` | [fg_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/fg-def--24c0f6e328b7d196cc0746ff.md) | 45 | `result-track:24c0f6e328b7d196cc0746ffb51d292f5ec53030831bc817963b6cea57fae239` |
| 3 | `theorem` | [fg_iff_addSubmonoid_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/fg-iff-addsubmonoid-fg--68747b2f3a54dc7707ff600f.md) | 51 | `result-track:68747b2f3a54dc7707ff600fb6bd425d4889b4a5dce0a93e8aab20694d5cb2ab` |
| 4 | `theorem` | [fg_iff_addSubgroup_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/fg-iff-addsubgroup-fg--ee51aa3452a0e7ecba0a7f47.md) | 55 | `result-track:ee51aa3452a0e7ecba0a7f47ae10e7bc52eeec3f29144cd94ae31e4f7a9ff308` |
| 5 | `theorem` | [fg_iff_exists_fin_generating_family](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/fg-iff-exists-fin-generating-family--d47cfb520ddce4c4dcc4fb67.md) | 60 | `result-track:d47cfb520ddce4c4dcc4fb6717451244b0f6940dd424e61bb298e53c1797f87a` |
| 6 | `lemma` | [fg_iff_exists_finite_generating_family](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/fg-iff-exists-finite-generating-family--5579d631bda13666f4799ba4.md) | 71 | `result-track:5579d631bda13666f4799ba49a7985e2c51d6a9fd7b3b98c3b3a4d446a8896d0` |
| 7 | `theorem` | [fg_span_iff_fg_span_finset_subset](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/fg-span-iff-fg-span-finset-subset--c516bf6dc4c4dea880be47b9.md) | 85 | `result-track:c516bf6dc4c4dea880be47b915255989aff40afaa4070053779afb69732ec434` |
| 8 | `def` | [FG](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/fg--ed1c613a70c51a0e8b45e5d1.md) | 107 | `declaration-track:ed1c613a70c51a0e8b45e5d172b0d233e7012120054f2ef79dd6ed4b5e8466ea` |
| 9 | `class` | [Module.Finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/module-finite--826847aa9511a0b80c840eca.md) | 117 | `declaration-track:826847aa9511a0b80c840eca4f6ab79a3c9267d5fddb553a9a4b778382a5538d` |
| 10 | `theorem` | [finite_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/finite-def--caece4f3e1b01d89c8538f4e.md) | 128 | `result-track:caece4f3e1b01d89c8538f4e65bfc234f9405a59bcc9b8c601db36c5a6457aeb` |
| 11 | `theorem` | [iff_addMonoid_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/iff-addmonoid-fg--0c133db116e391c8aa9c3ab0.md) | 136 | `result-track:0c133db116e391c8aa9c3ab0cf764699bfa1b501f63e3a575567b1759f1f763d` |
| 12 | `theorem` | [iff_addGroup_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/iff-addgroup-fg--fe045b730586bca0018ead89.md) | 140 | `result-track:fe045b730586bca0018ead89eb4c936aedb488545fa1e0928ef70419182e57ff` |
| 13 | `lemma` | [exists_fin](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/exists-fin--7ac84baa4cafdedde8cb84e3.md) | 147 | `result-track:7ac84baa4cafdedde8cb84e3fa1670a31fd8ce9bfdb542100d273496ab4f8a62` |
| 14 | `instance` | [AddMonoid.FG.to_moduleFinite_nat](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/addmonoid-fg-to-modulefinite-nat--4be29ecf72fab00b050af6d4.md) | 154 | `declaration-track:4be29ecf72fab00b050af6d407ba3d39c01ea633e90916fb7b02af61c935a369` |
| 15 | `instance` | [AddMonoid.FG.to_moduleFinite_int](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/addmonoid-fg-to-modulefinite-int--369b011f91da8995f9933e67.md) | 158 | `declaration-track:369b011f91da8995f9933e6701ee3d7b323a43a14a49d3ac4ea283fcae17715d` |
| 16 | `def` | [Finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/finite--9da3f6db2708a64ce484dc05.md) | 170 | `declaration-track:9da3f6db2708a64ce484dc057744120b47ef14ce10b3a1d3268dcb52c00823ab` |
| 17 | `lemma` | [finite_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/finite-algebramap--d881b13491bd2bc3b6cd5404.md) | 175 | `result-track:d881b13491bd2bc3b6cd5404c8ab81738a04fce2648f17e4d862d70958237d9a` |
| 18 | `def` | [Finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/declarations/finite--20d751fcf648090bbf7206db.md) | 189 | `declaration-track:20d751fcf648090bbf7206dbb4b28c31ca18958e1228efc811fdfb4c9f45d48a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
