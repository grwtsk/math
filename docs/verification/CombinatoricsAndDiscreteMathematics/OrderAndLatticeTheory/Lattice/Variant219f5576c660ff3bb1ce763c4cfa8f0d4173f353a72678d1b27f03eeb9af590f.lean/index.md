# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81503ab58d6853e88ff54d9abe3f748ebc37011e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81503ab58d6853e88ff54d9abe3f748ebc37011e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sum.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSemilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean/declarations/instsemilatticesup--e04aebf5d7afd22746faff67.md) | 34 | `declaration-track:e04aebf5d7afd22746faff67aa02fc7134f14cfbd57b61c128d75e3dd7a58693` |
| 2 | `lemma` | [inl_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean/declarations/inl-sup--71f422d1315e4ae09558ba11.md) | 57 | `result-track:71f422d1315e4ae09558ba1177165dd7a459d2b28c022a9aee5782e71d382c4c` |
| 3 | `lemma` | [inr_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean/declarations/inr-sup--d37f4e5bd455b52b2c0fd72f.md) | 58 | `result-track:d37f4e5bd455b52b2c0fd72f27c54f022646fc510062263b09e9b1632da46928` |
| 4 | `instance` | [instSemilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean/declarations/instsemilatticeinf--92283d97ffc893d3418d5c44.md) | 67 | `declaration-track:92283d97ffc893d3418d5c44e8dd95ebba65bbf3cc3647061a21579214e83be5` |
| 5 | `lemma` | [inl_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean/declarations/inl-inf--19a8459436dd3847c7b358c2.md) | 90 | `result-track:19a8459436dd3847c7b358c2df6f12c07979697d816eccc3dd7049f5f48d38a1` |
| 6 | `lemma` | [inr_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean/declarations/inr-inf--6ef71f6155366724e10d14fe.md) | 91 | `result-track:6ef71f6155366724e10d14fe8077e355b4130d1e33c274b6cf25331d594d4cfa` |
| 7 | `instance` | [instLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean/declarations/instlattice--5e9727f43d6b5ded975c998c.md) | 98 | `declaration-track:5e9727f43d6b5ded975c998c0142627004b386ecb38f5ebe40f1c929301e488a` |
| 8 | `def` | [inlLatticeHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean/declarations/inllatticehom--b3b810b9efea54964aca344e.md) | 101 | `declaration-track:b3b810b9efea54964aca344ee4defc7af0a88d9c9c5dc36d0a122cc7c715885e` |
| 9 | `def` | [inrLatticeHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean/declarations/inrlatticehom--2b46fcf21cb5bc805c34d30f.md) | 107 | `declaration-track:2b46fcf21cb5bc805c34d30f4d99aa6db33f6d4527a570ea063afb1ed1f3c6b4` |
| 10 | `instance` | [instDistribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant219f5576c660ff3bb1ce763c4cfa8f0d4173f353a72678d1b27f03eeb9af590f.lean/declarations/instdistriblattice--7fac1acee8867b07bfb71340.md) | 114 | `declaration-track:7fac1acee8867b07bfb71340af1ad109ad0f46c5397331aab87bce5d7f993553` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
