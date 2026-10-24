# Verification target: GRWTSK.Algebra.LinearAlgebra.Flag.Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c3bae91a146472f7b8f2f88860c81f85bef7750",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c3bae91a146472f7b8f2f88860c81f85bef7750`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.FlagRange` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/flag--5cebd3664700f23fa2c18b2a.md) | 27 | `declaration-track:5cebd3664700f23fa2c18b2ab066dcaa2dc2a200738ab2e1b634f74c31985c8b` |
| 2 | `theorem` | [flag_zero](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/flag-zero--f3e931f69d1b165c8f716c31.md) | 31 | `result-track:f3e931f69d1b165c8f716c311000567d274f9a1287178f986475049754c7a239` |
| 3 | `theorem` | [flag_last](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/flag-last--5b3ff8a2324e435b18adfbcd.md) | 34 | `result-track:5b3ff8a2324e435b18adfbcde47835bbba6fb98d84500204148b019c0d95cf41` |
| 4 | `theorem` | [flag_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/flag-le-iff--d36fbaa45872a395a42d2226.md) | 37 | `result-track:d36fbaa45872a395a42d222644989851beae16d2902baf775ff28e85b6e0ea3f` |
| 5 | `theorem` | [flag_succ](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/flag-succ--96ffca2038c5e19042bcc7ac.md) | 41 | `result-track:96ffca2038c5e19042bcc7ac9e24220dde9bfb26cfd82e9f2aa1137f30cb33c0` |
| 6 | `theorem` | [self_mem_flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/self-mem-flag--709a7c5fafe2b5854a8c9c54.md) | 46 | `result-track:709a7c5fafe2b5854a8c9c545bb5840acb584fcf1360ca52f997555ce507c849` |
| 7 | `theorem` | [self_mem_flag_iff](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/self-mem-flag-iff--e2b60a5a2266e018d3b0069f.md) | 51 | `result-track:e2b60a5a2266e018d3b0069f8619e926fdf98c83808f12ab95ce9fc96d00bac1` |
| 8 | `theorem` | [flag_mono](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/flag-mono--6a092d808206e9e60edf648a.md) | 56 | `result-track:6a092d808206e9e60edf648a02d5dade1504ce6b1f330afbe82ffbd67ae3642a` |
| 9 | `theorem` | [isChain_range_flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/ischain-range-flag--87a4db3c201f81fb54e3b69c.md) | 59 | `result-track:87a4db3c201f81fb54e3b69c92715f376eeabd8ba220913ac42d94aaaebb98dd` |
| 10 | `theorem` | [flag_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/flag-strictmono--fcfc252c414f8839dfa1aeb7.md) | 63 | `result-track:fcfc252c414f8839dfa1aeb7296bf05bb4b6c506bc1c748c1547a89ed073ee1a` |
| 11 | `theorem` | [flag_le_ker_coord_iff](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/flag-le-ker-coord-iff--3d83e3e8f3db15078b1d1767.md) | 73 | `result-track:3d83e3e8f3db15078b1d17673fabfde6e01891a5db9967d6b4784123801ca2c1` |
| 12 | `theorem` | [flag_le_ker_coord](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/flag-le-ker-coord--e3b5991ce238b9577efd3ad3.md) | 77 | `result-track:e3b5991ce238b9577efd3ad334d9955fc02af2a7d228435ace889016d6e65b32` |
| 13 | `theorem` | [flag_covby](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/flag-covby--11c9ed32014ec6f97f627d68.md) | 88 | `result-track:11c9ed32014ec6f97f627d687bb0c53081d0ca37074af15cfac3cfea4e6e6a6f` |
| 14 | `theorem` | [flag_wcovby](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/flag-wcovby--8e246a81ff5056c68d00ede6.md) | 94 | `result-track:8e246a81ff5056c68d00ede65b497b63b28cd8a01e0248cae7142963fb0d19e6` |
| 15 | `def` | [toFlag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/toflag--038b9d4a7bc2645d46c3e13d.md) | 100 | `declaration-track:038b9d4a7bc2645d46c3e13d84884948d21525c5ed51b43ef3a252e0e2dcdae7` |
| 16 | `theorem` | [mem_toFlag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/mem-toflag--3cf3c0b1e58d112cbc28d6f7.md) | 104 | `result-track:3cf3c0b1e58d112cbc28d6f768b0a4609d2747ffd5f31a0aee264bf2ac870868` |
| 17 | `theorem` | [isMaxChain_range_flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517.lean/declarations/ismaxchain-range-flag--b2b824c4cc51b4492bade47f.md) | 107 | `result-track:b2b824c4cc51b4492bade47f90550a3c76ac60d52a99ad1a81840bc13776e5da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
