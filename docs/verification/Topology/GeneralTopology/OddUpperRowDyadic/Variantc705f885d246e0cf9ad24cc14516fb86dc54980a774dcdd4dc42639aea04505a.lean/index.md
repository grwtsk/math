# Verification target: GRWTSK.Topology.GeneralTopology.OddUpperRowDyadic.Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c281d182c8b24752ef0c275ca0b64b67395c268",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c281d182c8b24752ef0c275ca0b64b67395c268`.

Source path: `GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.UpperRowInversion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oddColumnRow](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/oddcolumnrow--4a02e1ea20d8498bbcf9fcc9.md) | 12 | `declaration-track:4a02e1ea20d8498bbcf9fcc90ba15c13fe74eb24ce1ec90bcf1a2b69695d14cb` |
| 2 | `theorem` | [oddColumnRow_zero](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/oddcolumnrow-zero--4daa9d774ea6d7b8e2a4fcbb.md) | 17 | `result-track:4daa9d774ea6d7b8e2a4fcbb38ca8b9c8075b09c55f36ee558c063ae0ba1297f` |
| 3 | `theorem` | [oddColumnRow_half_padding](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/oddcolumnrow-half-padding--6f37b697fb5bc08b5ea0e5df.md) | 30 | `result-track:6f37b697fb5bc08b5ea0e5df286dc9e90ebbfd840291fae51ff8d03613679d2c` |
| 4 | `theorem` | [oddColumnRow_two_difference](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/oddcolumnrow-two-difference--6036706772c70183bf158fe7.md) | 57 | `result-track:6036706772c70183bf158fe7194bd0667fda62501429dea864b6397b4a2a4368` |
| 5 | `theorem` | [dyadic_upper_row](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/dyadic-upper-row--4513c9a55c0443c0ab68cde5.md) | 67 | `result-track:4513c9a55c0443c0ab68cde55962f9bb83080a5e56c94f987150691bd31637e9` |
| 6 | `theorem` | [oddColumnRow_telescope](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/oddcolumnrow-telescope--a7b638889564406543047c23.md) | 73 | `result-track:a7b638889564406543047c238420a595912c5ef2a8957ef2a89345af22f664c6` |
| 7 | `theorem` | [oddColumnRow_dyadic_tail_zero](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/oddcolumnrow-dyadic-tail-zero--d15384e9f475765d8777f23d.md) | 88 | `result-track:d15384e9f475765d8777f23db8bc56bd23bbadc144090420a959284e0ade2bf9` |
| 8 | `theorem` | [oddColumnRow_eq_dyadic](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/oddcolumnrow-eq-dyadic--4a5ed14ec22054d29745a579.md) | 104 | `result-track:4a5ed14ec22054d29745a5792b5559724fbbbda19ffcbf4c7377fcd6ff517a5b` |
| 9 | `theorem` | [dyadicCutoff_le](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/dyadiccutoff-le--7939e53e08795b80dc6dda15.md) | 113 | `result-track:7939e53e08795b80dc6dda15f20285810d21c4080ae6193afc71bfef500e6d29` |
| 10 | `theorem` | [positive_odd_sum_split](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/positive-odd-sum-split--5cde9a13ccb4eb865cb19433.md) | 125 | `result-track:5cde9a13ccb4eb865cb19433c6274b611ea63808d85603917a185ce0281472b7` |
| 11 | `theorem` | [odd_upper_interval_theta_eq_sampling](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/odd-upper-interval-theta-eq-sampling--2eaa0d65805e44303124929e.md) | 135 | `result-track:2eaa0d65805e44303124929e3336f680e2ed8e1a7a15c289837e0c6e569c9f99` |
| 12 | `theorem` | [clipped_odd_upper_row_eq](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/clipped-odd-upper-row-eq--a9870166ed13604aedcce37f.md) | 149 | `result-track:a9870166ed13604aedcce37f3577d72959284b0779bc18adf2d75760f20ef387` |
| 13 | `theorem` | [full_odd_upper_row_eq](../../../../../mathematics/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/declarations/full-odd-upper-row-eq--804b57ce170fa381291ced02.md) | 170 | `result-track:804b57ce170fa381291ced02058bcc24a1f7d818b3c3b1295ea4183d488dc75b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
