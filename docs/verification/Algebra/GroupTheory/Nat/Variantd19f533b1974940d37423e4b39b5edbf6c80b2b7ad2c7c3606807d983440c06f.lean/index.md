# Verification target: GRWTSK.Algebra.GroupTheory.Nat.Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6896f59347dc3f785f3dc474ae663b1a3d9f182",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Nat/Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6896f59347dc3f785f3dc474ae663b1a3d9f182`.

Source path: `GRWTSK/Algebra/GroupTheory/Nat/Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Nat/Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsOrderedAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.lean/declarations/instisorderedaddmonoid--832f38e073e3b9a9b5f2e041.md) | 22 | `declaration-track:832f38e073e3b9a9b5f2e041df674bb0a6540af136f2485bcfc26cdba6d340f0` |
| 2 | `instance` | [instIsOrderedCancelAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.lean/declarations/instisorderedcanceladdmonoid--44334540ce27a73ecd3afbe8.md) | 25 | `declaration-track:44334540ce27a73ecd3afbe8508c9b241c0851606a0c68b788d240af4dbed037` |
| 3 | `instance` | [instCanonicallyOrderedAdd](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.lean/declarations/instcanonicallyorderedadd--5220ab7c2983b7719d8ee9ea.md) | 29 | `declaration-track:5220ab7c2983b7719d8ee9ea6be08bd600e177dc520a1b483de4e4b1477bcfbb` |
| 4 | `instance` | [instOrderedSub](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.lean/declarations/instorderedsub--94d6e70f97b6a7b498976c58.md) | 33 | `declaration-track:94d6e70f97b6a7b498976c58a29ba9245c1c42869ec82cd2f995f7bcf5983d34` |
| 5 | `lemma` | [pow_left_strictMono](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.lean/declarations/pow-left-strictmono--0367cab3b513343f01d3706a.md) | 44 | `result-track:0367cab3b513343f01d3706af2198ba0e8a28126ec3632957e03383caae7db47` |
| 6 | `lemma` | [_root_.StrictMono.nat_pow](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.lean/declarations/root-strictmono-nat-pow--146c679bf3fd14bb12e12622.md) | 47 | `result-track:146c679bf3fd14bb12e12622e79e6bc49ebba9e741f3765378cd538837eeebdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
