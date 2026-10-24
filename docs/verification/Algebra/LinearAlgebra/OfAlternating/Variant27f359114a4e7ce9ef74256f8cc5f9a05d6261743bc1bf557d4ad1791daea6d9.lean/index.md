# Verification target: GRWTSK.Algebra.LinearAlgebra.OfAlternating.Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5aad0631df420b25f5b8560b5bb72c3a4c824a23",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5aad0631df420b25f5b8560b5bb72c3a4c824a23`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.ExteriorAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [AlternatingMap.instModuleAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/declarations/alternatingmap-instmoduleaddcommgroup--95f43ff514f5cad1a3a170d4.md) | 31 | `declaration-track:95f43ff514f5cad1a3a170d4e9a03c8818d927b1898f60c1d5e8070493cfc91c` |
| 2 | `def` | [liftAlternating](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/declarations/liftalternating--e206abe1288b217dfebc674b.md) | 41 | `declaration-track:e206abe1288b217dfebc674b8cc7d86815bbc286ed2411bf7d5ac6c630aeb26a` |
| 3 | `theorem` | [liftAlternating_ι](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/declarations/liftalternating--52edc1896299addba43ad2e3.md) | 62 | `result-track:52edc1896299addba43ad2e3f532edcd555913d95a8256fe53d6edb7ad2a201e` |
| 4 | `theorem` | [liftAlternating_ι_mul](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/declarations/liftalternating-mul--2187f9d538961cf9d5e33109.md) | 68 | `result-track:2187f9d538961cf9d5e33109fa68f113d2ef9a724b29499ab362c9de6929d20d` |
| 5 | `theorem` | [liftAlternating_one](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/declarations/liftalternating-one--6caf1036b89fb36f21a9089d.md) | 77 | `result-track:6caf1036b89fb36f21a9089d5382bba9783336b58a65f708db2c7cc2e56d7676` |
| 6 | `theorem` | [liftAlternating_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/declarations/liftalternating-algebramap--81baef3167378b7764ede127.md) | 83 | `result-track:81baef3167378b7764ede127bf33f3d061177149640ad70cc531e81210f6cef1` |
| 7 | `theorem` | [liftAlternating_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/declarations/liftalternating-apply-multi--89f2a810779071496ad8c44e.md) | 89 | `result-track:89f2a810779071496ad8c44e61cfe69dcd4416acd337de70ef69fe9cbbcd8778` |
| 8 | `theorem` | [liftAlternating_comp_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/declarations/liftalternating-comp-multi--d9e75a20e35fb0862e8c0e7f.md) | 101 | `result-track:d9e75a20e35fb0862e8c0e7f39c87df45e499b3f96bcb6d933be4b0bf844d961` |
| 9 | `theorem` | [liftAlternating_comp](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/declarations/liftalternating-comp--285024b589cf6fe036dc0daa.md) | 106 | `result-track:285024b589cf6fe036dc0daaffaa15ff5f30a3f29bb92c549baf3e40189f0ea0` |
| 10 | `theorem` | [liftAlternating_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/declarations/liftalternating-multi--c4362349fd6b1b9649a9c954.md) | 121 | `result-track:c4362349fd6b1b9649a9c954b60a4f36d2e16b81560a016fbe64b1db9270f35f` |
| 11 | `def` | [liftAlternatingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/declarations/liftalternatingequiv--860f869495612c2f43f6d1f4.md) | 134 | `declaration-track:860f869495612c2f43f6d1f44cdd3d2646e0a6000c12af6c75aa9850b0d949a9` |
| 12 | `theorem` | [lhom_ext](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/declarations/lhom-ext--0e79c6968bdf5680baa8ca0f.md) | 148 | `result-track:0e79c6968bdf5680baa8ca0f1fb01e6a2bf1bdb7aa3aa66650e64dca3c196a56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
