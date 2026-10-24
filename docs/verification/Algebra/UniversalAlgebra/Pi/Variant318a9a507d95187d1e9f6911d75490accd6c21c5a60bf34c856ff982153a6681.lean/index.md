# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e93b7a0c9019c9d06556be2c9cdbad2d72589a9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e93b7a0c9019c9d06556be2c9cdbad2d72589a9`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Spectrum.Quasispectrum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Units` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreQuasiregular.toPi](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/declarations/prequasiregular-topi--90ce32fd08a938e8850b1bb2.md) | 47 | `declaration-track:90ce32fd08a938e8850b1bb27e3c1f49ad49141bd35d672a5956e2b9cdb15a25` |
| 2 | `def` | [PreQuasiregular.toProd](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/declarations/prequasiregular-toprod--0ddfd57b90a71e4213e08986.md) | 58 | `declaration-track:0ddfd57b90a71e4213e0898613ce61b367d93ca68ac65e125e5df8f79b4c624f` |
| 3 | `lemma` | [isQuasiregular_pi_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/declarations/isquasiregular-pi-iff--b8b330bd58534e5bad45dbfd.md) | 66 | `result-track:b8b330bd58534e5bad45dbfd3840a5b6b8b813893d4281941ca789b47e5e7200` |
| 4 | `lemma` | [isQuasiregular_prod_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/declarations/isquasiregular-prod-iff--881f557c5a8cd5c32374de56.md) | 71 | `result-track:881f557c5a8cd5c32374de56c8ea59d76b6ba035eb459a5a73c3bc1019486161` |
| 5 | `lemma` | [quasispectrum.mem_iff_of_isUnit](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/declarations/quasispectrum-mem-iff-of-isunit--6790767cfa19ff347f258cdf.md) | 76 | `result-track:6790767cfa19ff347f258cdfbbdbc951e2ec43774d5d330fb4e29c88800d7252` |
| 6 | `lemma` | [Pi.spectrum_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/declarations/pi-spectrum-eq--5b08501728892fb0f3aa8cc5.md) | 85 | `result-track:5b08501728892fb0f3aa8cc5395dcd5468b5c2d3ea35d12f3a539aec7644d3fa` |
| 7 | `lemma` | [Prod.spectrum_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/declarations/prod-spectrum-eq--97da3560ac733f7bb31d6d01.md) | 91 | `result-track:97da3560ac733f7bb31d6d01921c1f6dc3e719fde88cac120f8afa4be2a4c117` |
| 8 | `lemma` | [Pi.quasispectrum_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/declarations/pi-quasispectrum-eq--15e0ba077f0c29b7526a8df4.md) | 97 | `result-track:15e0ba077f0c29b7526a8df4e2f4d748706857f2bdef426c66d42dce6173ec35` |
| 9 | `lemma` | [Prod.quasispectrum_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/declarations/prod-quasispectrum-eq--67855f8300514ffd42fce2c3.md) | 109 | `result-track:67855f8300514ffd42fce2c31c41cb716e2643fef431cbeb5c825d17329a211e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
