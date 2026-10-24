# Verification target: GRWTSK.Algebra.GroupTheory.NoncommCoprod.Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e86894ebe8bc9e0b95fafd36910407ad7777ee6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e86894ebe8bc9e0b95fafd36910407ad7777ee6`.

Source path: `GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Lattice` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Disjoint` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [noncommCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/declarations/noncommcoprod--fb3be204a449aa90367c7912.md) | 48 | `declaration-track:fb3be204a449aa90367c7912b7fed44317a9c3d3befc4316387ba003217b54fe` |
| 2 | `theorem` | [noncommCoprod_apply'](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/declarations/noncommcoprod-apply--2ef256e47fe715e99db5a4b0.md) | 55 | `result-track:2ef256e47fe715e99db5a4b0f9c07e767e81e915a864bbc1bf8ac4d9620eaed4` |
| 3 | `theorem` | [comp_noncommCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/declarations/comp-noncommcoprod--0e361d604004b9ddfd8c4018.md) | 60 | `result-track:0e361d604004b9ddfd8c40183ce64bde6a81e8af7624d2efb5bbdb27bda8bf85` |
| 4 | `def` | [noncommCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/declarations/noncommcoprod--a6312c674cc74de5661031de.md) | 82 | `declaration-track:a6312c674cc74de5661031dedfe132fc75bbaf4edae5403e0d53f2e883ac0a65` |
| 5 | `theorem` | [noncommCoprod_apply'](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/declarations/noncommcoprod-apply--36cd83ec341b416045d86e0d.md) | 90 | `result-track:36cd83ec341b416045d86e0dadc3af49f0e5a49671475e662054433eaad881dc` |
| 6 | `theorem` | [noncommCoprod_comp_inl](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/declarations/noncommcoprod-comp-inl--7afbdff98ce5e81389f3eeda.md) | 95 | `result-track:7afbdff98ce5e81389f3eedac3b7ec3d35e593c64694ada2fea8e6a026806af8` |
| 7 | `theorem` | [noncommCoprod_comp_inr](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/declarations/noncommcoprod-comp-inr--fdb8160b216452b5c7fa6098.md) | 99 | `result-track:fdb8160b216452b5c7fa60984735c1284517aec3c3c8e382c19f8422a4e71b7f` |
| 8 | `theorem` | [noncommCoprod_unique](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/declarations/noncommcoprod-unique--3ce073d7320cac11039995c2.md) | 103 | `result-track:3ce073d7320cac11039995c2a5c8c758cde3eeb0eaeccad6970b75ad9f4fd24e` |
| 9 | `theorem` | [noncommCoprod_inl_inr](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/declarations/noncommcoprod-inl-inr--562d62a6809eecd25e9f1034.md) | 109 | `result-track:562d62a6809eecd25e9f10341af9b678b5f7fec2bef56a5da57cf9f5308081f9` |
| 10 | `theorem` | [comp_noncommCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/declarations/comp-noncommcoprod--8e487463af9820c665ae780b.md) | 114 | `result-track:8e487463af9820c665ae780b812b21150757efdc77c3efb376a9fed0ce98d761` |
| 11 | `lemma` | [noncommCoprod_injective](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/declarations/noncommcoprod-injective--ec11ed6fd3523d2ec5122ebc.md) | 123 | `result-track:ec11ed6fd3523d2ec5122ebc19d836c0b2c6d5b60985f0ccf16768330c11bd95` |
| 12 | `lemma` | [noncommCoprod_range](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef.lean/declarations/noncommcoprod-range--9e8aaefb9495e67ba224f910.md) | 138 | `result-track:9e8aaefb9495e67ba224f910bd9a6de2eaef7f092511a48ec551ec0296ef899c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
