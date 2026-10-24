# Verification target: GRWTSK.Algebra.LinearAlgebra.Permanent.Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a8f0d979ee34cb3672aea15f5c6495cb7c5742c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a8f0d979ee34cb3672aea15f5c6495cb7c5742c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Perm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.RowCol` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [permanent](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent--1cbc6668ba098a9e1b9a88f5.md) | 36 | `declaration-track:1cbc6668ba098a9e1b9a88f509429847f83107f8f82a247675779e43cba1a448` |
| 2 | `theorem` | [permanent_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-diagonal--1e91cd3c8fe03cf326963040.md) | 39 | `result-track:1e91cd3c8fe03cf3269630403f58795d548e6b71bd2fec268545e111443d25a9` |
| 3 | `theorem` | [permanent_zero](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-zero--1dfc9a437aac9fdfbf70137a.md) | 46 | `result-track:1dfc9a437aac9fdfbf70137a45cd6fd250524d8aa909558566b31c4d84b5054f` |
| 4 | `theorem` | [permanent_one](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-one--dbe842d91ff7b866718f4a9b.md) | 49 | `result-track:dbe842d91ff7b866718f4a9b74c68a7c29623880e2d0b832b18fd04e9d25eed6` |
| 5 | `theorem` | [permanent_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-isempty--a6fbad48c3b8a8ab77950d01.md) | 52 | `result-track:a6fbad48c3b8a8ab77950d010905745675ac36638aad2560f6c067c83514cbb6` |
| 6 | `theorem` | [permanent_eq_one_of_card_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-eq-one-of-card-eq-zero--bb316751aa2bfb1d89b15d75.md) | 54 | `result-track:bb316751aa2bfb1d89b15d75aca8330b0fd4409c3443c4cabf0fbd7f852746f4` |
| 7 | `theorem` | [permanent_unique](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-unique--4134dde68d5bc3c3d5514f54.md) | 62 | `result-track:4134dde68d5bc3c3d5514f54c8b59c13974c8596df2b0fe9b4503d4c877fe30d` |
| 8 | `theorem` | [permanent_eq_elem_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-eq-elem-of-subsingleton--e64c2589880ea0c243999678.md) | 65 | `result-track:e64c2589880ea0c243999678989d5811dba9b305526995b138e5304606f24eb7` |
| 9 | `theorem` | [permanent_eq_elem_of_card_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-eq-elem-of-card-eq-one--81b417d92b8e79f34951fd4e.md) | 70 | `result-track:81b417d92b8e79f34951fd4e14ac83eae2530bf000e114e9eb71c4dbf4cbf879` |
| 10 | `theorem` | [permanent_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-transpose--b43b8a4cbff69eaed3de9cfb.md) | 77 | `result-track:b43b8a4cbff69eaed3de9cfbfcbdbd7b7ed4303a9b457833dda59d7fb51fbce3` |
| 11 | `theorem` | [permanent_permute_cols](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-permute-cols--7aad3ad9d9b7dfddced78fd2.md) | 84 | `result-track:7aad3ad9d9b7dfddced78fd2d3b8bb91740f933ac4b41362800ce63ac47adccc` |
| 12 | `theorem` | [permanent_permute_rows](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-permute-rows--5eb6b4f4b47c1e3c077c5263.md) | 89 | `result-track:5eb6b4f4b47c1e3c077c526373cd69af8656566505fe202f7b10198626e3a350` |
| 13 | `theorem` | [permanent_smul](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-smul--5d5a9f42b87e403e6802e224.md) | 94 | `result-track:5d5a9f42b87e403e6802e224c23a57b193cf07367bfb078aedbb5b9184ec6d63` |
| 14 | `theorem` | [permanent_updateCol_smul](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-updatecol-smul--9f2515f3a8b2bb1624d79a6a.md) | 104 | `result-track:9f2515f3a8b2bb1624d79a6a2def5b12e5a1c2ab64f077e3eddcaf8714b0ebd1` |
| 15 | `theorem` | [permanent_updateRow_smul](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variant938b9d22194871d04abd7c1322a85c6719e4b12e1fc0d3aa7e16c6bfc621ae5f.lean/declarations/permanent-updaterow-smul--d36081c27a3c9f9fb2937b68.md) | 116 | `result-track:d36081c27a3c9f9fb2937b684842dfc58ee19cd394b3f3f03c5d698137ffcdd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
