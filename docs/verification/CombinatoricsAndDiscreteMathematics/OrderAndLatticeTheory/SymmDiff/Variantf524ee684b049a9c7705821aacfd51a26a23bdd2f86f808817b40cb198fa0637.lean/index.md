# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SymmDiff.Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83dd10819ab10b36ccf879a5327e7972aaf494b4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83dd10819ab10b36ccf879a5327e7972aaf494b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BooleanAlgebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Delaborators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SymmDiff` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_symmDiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean/declarations/mem-symmdiff--69cd69c43473458c1ad82fd5.md) | 27 | `result-track:69cd69c43473458c1ad82fd57c6eeebd5d294831b5fa2e899b9ecfc8b985b808` |
| 2 | `theorem` | [symmDiff_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean/declarations/symmdiff-def--db5493da2d4935809f28f39d.md) | 30 | `result-track:db5493da2d4935809f28f39d06f02405f3bef612b6196d124b0a917a42cebb1c` |
| 3 | `theorem` | [symmDiff_subset_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean/declarations/symmdiff-subset-union--3bcae80c5ef79da80e253240.md) | 33 | `result-track:3bcae80c5ef79da80e253240a70ebac735aa15b8e40efcd344fd2a85fe5f16f2` |
| 4 | `theorem` | [symmDiff_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean/declarations/symmdiff-eq-empty--13b3c6f9cef1042629eaa253.md) | 37 | `result-track:13b3c6f9cef1042629eaa253943fa85165cd9c2a82023753fe92c568b4612f43` |
| 5 | `theorem` | [symmDiff_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean/declarations/symmdiff-nonempty--a855439e573255e3c62eb319.md) | 41 | `result-track:a855439e573255e3c62eb3199abac62f5240747241ee441b5dfec249fb9b17d7` |
| 6 | `theorem` | [inter_symmDiff_distrib_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean/declarations/inter-symmdiff-distrib-left--8629311986334c23e07b41e8.md) | 44 | `result-track:8629311986334c23e07b41e89731470c7ba6b53aa7179fbf826d41ea58420c1d` |
| 7 | `theorem` | [inter_symmDiff_distrib_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean/declarations/inter-symmdiff-distrib-right--3f610500bccceb0706c6232d.md) | 47 | `result-track:3f610500bccceb0706c6232d44984555d94e484c20503a15695c94ee20b0a3ca` |
| 8 | `theorem` | [subset_symmDiff_union_symmDiff_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean/declarations/subset-symmdiff-union-symmdiff-left--b5b83e54fcb50aa77814e8c7.md) | 50 | `result-track:b5b83e54fcb50aa77814e8c7ba19d1759178484a9f83687992cfc9b155d00821` |
| 9 | `theorem` | [subset_symmDiff_union_symmDiff_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SymmDiff/Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637.lean/declarations/subset-symmdiff-union-symmdiff-right--1f7d458f25f5c0b86702bb08.md) | 53 | `result-track:1f7d458f25f5c0b86702bb089381445c9b23fcfd354eed9236371304d333400a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
