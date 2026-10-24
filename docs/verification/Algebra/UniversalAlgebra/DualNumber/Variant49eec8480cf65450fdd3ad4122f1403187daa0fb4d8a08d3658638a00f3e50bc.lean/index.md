# Verification target: GRWTSK.Algebra.UniversalAlgebra.DualNumber.Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22f46dfc4701325f54091186c7b7cf1278b0454f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22f46dfc4701325f54091186c7b7cf1278b0454f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.TrivSqZeroExt` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DualNumber](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/declarations/dualnumber--664b6a2f3d25b60a018aad59.md) | 51 | `declaration-track:664b6a2f3d25b60a018aad592ddc094eecb0fe87fa604560b4a5a043c7e16558` |
| 2 | `def` | [DualNumber.eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/declarations/dualnumber-eps--8117a8a808189de630092b88.md) | 56 | `declaration-track:8117a8a808189de630092b8816cad410bf7ce4ef8a4c3f72a40a9f8c8fc9a624` |
| 3 | `theorem` | [fst_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/declarations/fst-eps--5c13a0b5903c16a820004d11.md) | 73 | `result-track:5c13a0b5903c16a820004d115fbf6e3204065503cd1856b8b6e74d04aace4c50` |
| 4 | `theorem` | [snd_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/declarations/snd-eps--8858db95df099b693a89ae14.md) | 78 | `result-track:8858db95df099b693a89ae14d17fb0ec366e842544685fc2b0f965c2285795e6` |
| 5 | `theorem` | [snd_mul](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/declarations/snd-mul--52112484c4718b1fb1c3c73a.md) | 84 | `result-track:52112484c4718b1fb1c3c73aa513a16e2bb05286ffebe3ef06a8aa17b4f8767f` |
| 6 | `theorem` | [eps_mul_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/declarations/eps-mul-eps--aee7aecb29116459cbccf1ed.md) | 89 | `result-track:aee7aecb29116459cbccf1ede3baa1692518a020731a918184e9b98400043af8` |
| 7 | `theorem` | [inr_eq_smul_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/declarations/inr-eq-smul-eps--0b2af3d8490f39d25d8e8a04.md) | 94 | `result-track:0b2af3d8490f39d25d8e8a04efb2c77518790b5a2e42b5915600488794a6374e` |
| 8 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/declarations/alghom-ext--9d08ec860a2241394dc7916b.md) | 100 | `result-track:9d08ec860a2241394dc7916b8df709f59dbfcf0ca4ffd6c26f52bb514e9b4a2d` |
| 9 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/declarations/lift--308b95b0abce49a38689cb6a.md) | 112 | `declaration-track:308b95b0abce49a38689cb6a9e660a186b8a9ed49386316ffda2c4eb109d8fd7` |
| 10 | `theorem` | [lift_apply_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/declarations/lift-apply-eps--21595444fb676ec7d701ea7a.md) | 124 | `result-track:21595444fb676ec7d701ea7ac1421321ec923f1e06d9ed3e4443d0cf2505cbe9` |
| 11 | `theorem` | [lift_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/declarations/lift-eps--16afa99116fc804edfb6c7ff.md) | 130 | `result-track:16afa99116fc804edfb6c7ffb1230d55d30547daa6d339162f0b28c2b43a7ed0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
