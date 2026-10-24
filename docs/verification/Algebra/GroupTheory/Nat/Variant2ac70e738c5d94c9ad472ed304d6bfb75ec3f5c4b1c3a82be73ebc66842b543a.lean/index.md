# Verification target: GRWTSK.Algebra.GroupTheory.Nat.Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "421824cacce26a52489c1cec0bb63a95228ee873",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `421824cacce26a52489c1cec0bb63a95228ee873`.

Source path: `GRWTSK/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsOrderedAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean/declarations/instisorderedaddmonoid--ca08f8e885e311b790501c35.md) | 30 | `declaration-track:ca08f8e885e311b790501c35a2d032b4a9a2c7a9345974e046c7a4334e69b0e5` |
| 2 | `instance` | [instIsOrderedCancelAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean/declarations/instisorderedcanceladdmonoid--5673eeb790ded7fe29d5877b.md) | 33 | `declaration-track:5673eeb790ded7fe29d5877b9ee23beabe05343f433f4cfb9150b80b474fdaf2` |
| 3 | `instance` | [instCanonicallyOrderedAdd](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean/declarations/instcanonicallyorderedadd--44c27c513a5ce4711e7c261b.md) | 37 | `declaration-track:44c27c513a5ce4711e7c261bbc70c5868d0395d4ba3c492c05fb654d2347f58f` |
| 4 | `instance` | [instOrderedSub](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean/declarations/instorderedsub--27e98d985b5b2af7e43b6320.md) | 41 | `declaration-track:27e98d985b5b2af7e43b6320ead93ab4b5c0e970e1f3b684cbfef89c37c9c80e` |
| 5 | `lemma` | [pow_left_strictMono](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean/declarations/pow-left-strictmono--32638ce5691b14bcbb53d3ce.md) | 52 | `result-track:32638ce5691b14bcbb53d3ce314e45587f014d83c3b93062c1f3b2d7452aef8a` |
| 6 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.PowLeftStrictMono.Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.StrictMono.nat_pow](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant2ac70e738c5d94c9ad472ed304d6bfb75ec3f5c4b1c3a82be73ebc66842b543a.lean/declarations/root-grwtsk-algebra-grouptheory-powleftstrictmono-variantd19f533b1974940--f80df1777656211412f7eb69.md) | 55 | `result-track:f80df1777656211412f7eb697d3f1443cc20eddd133b36d7b04ef9f627512630` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
