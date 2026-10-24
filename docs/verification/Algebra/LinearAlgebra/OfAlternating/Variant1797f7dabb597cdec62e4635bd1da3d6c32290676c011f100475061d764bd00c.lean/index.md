# Verification target: GRWTSK.Algebra.LinearAlgebra.OfAlternating.Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12a810d4e9682537c6f128fd9ff49f6490f43492",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12a810d4e9682537c6f128fd9ff49f6490f43492`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.ExteriorAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [AlternatingMap.instModuleAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/declarations/alternatingmap-instmoduleaddcommgroup--d94b249483eec3eee06b17e7.md) | 39 | `declaration-track:d94b249483eec3eee06b17e7de4470f4202d8b9f2c056f8f17ae1cbd0a230e5c` |
| 2 | `def` | [liftAlternating](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/declarations/liftalternating--ead51c5e33019441cf5397b6.md) | 49 | `declaration-track:ead51c5e33019441cf5397b6fb3f19bccf4213a221b8612325be72c4cfd7d3bb` |
| 3 | `theorem` | [liftAlternating_ι](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/declarations/liftalternating--3d556bf359803127518300b9.md) | 70 | `result-track:3d556bf359803127518300b907c700971777b8fb7ac37cdd65857108f77da2aa` |
| 4 | `theorem` | [liftAlternating_ι_mul](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/declarations/liftalternating-mul--45758786ed664c4cb8120bba.md) | 76 | `result-track:45758786ed664c4cb8120bba1a12d1c8dc36a11c30b91c19018d872fe5e566d0` |
| 5 | `theorem` | [liftAlternating_one](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/declarations/liftalternating-one--92f15e832b7d1d7ab3c43dc6.md) | 85 | `result-track:92f15e832b7d1d7ab3c43dc6c778c3d8bb3c303749e450387f52e318dc04bf0f` |
| 6 | `theorem` | [liftAlternating_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/declarations/liftalternating-algebramap--b631275b03ff94e868079150.md) | 91 | `result-track:b631275b03ff94e8680791502324bd536fe6ecc2dec321c3bd9fc22849fb907d` |
| 7 | `theorem` | [liftAlternating_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/declarations/liftalternating-apply-multi--882fa6a0daa95bffc3487992.md) | 97 | `result-track:882fa6a0daa95bffc3487992938bdb54b6a17955c282ca8d68915b099b5e8b1d` |
| 8 | `theorem` | [liftAlternating_comp_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/declarations/liftalternating-comp-multi--d9ce4d1ab9ff727f0b1dd5be.md) | 109 | `result-track:d9ce4d1ab9ff727f0b1dd5be27735847f69c4d53de386ab33007ad378edb759e` |
| 9 | `theorem` | [liftAlternating_comp](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/declarations/liftalternating-comp--38aeba4e3bc7a441965f4af6.md) | 114 | `result-track:38aeba4e3bc7a441965f4af61cf936a52c37e88bce8618eddffcde1ad728e712` |
| 10 | `theorem` | [liftAlternating_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/declarations/liftalternating-multi--def90aa3f3875c55373c7b8e.md) | 129 | `result-track:def90aa3f3875c55373c7b8e9e272e06b18764a81221ab5fbcf8414657932e35` |
| 11 | `def` | [liftAlternatingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/declarations/liftalternatingequiv--a6690bc5e6903a152207e926.md) | 142 | `declaration-track:a6690bc5e6903a152207e926506dee00a1e3e8f0ab41aeaf8dc8cf2f269642ba` |
| 12 | `theorem` | [lhom_ext](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant1797f7dabb597cdec62e4635bd1da3d6c32290676c011f100475061d764bd00c.lean/declarations/lhom-ext--e36c61ca0419470e00373efe.md) | 156 | `result-track:e36c61ca0419470e00373efee3fd3ff198ee294751f41784e239ee39e1fdd3ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
