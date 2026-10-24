# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95251a47322bd316612c968efd43a500fa95bf93",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95251a47322bd316612c968efd43a500fa95bf93`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.ByCases` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.List.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [numElems](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/declarations/numelems--26d7433285f7781a524929d6.md) | 15 | `declaration-track:26d7433285f7781a524929d688624aa514afaf27797f0bcfdb8f5066ca99ca68` |
| 2 | `theorem` | [numElems_stop_le_start](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/declarations/numelems-stop-le-start--2f36a1c4a5273b505311cd53.md) | 22 | `result-track:2f36a1c4a5273b505311cd537b60194362819e0b7fedfe8d035f57d001af87c7` |
| 3 | `theorem` | [numElems_step_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/declarations/numelems-step-1--a53e54c5385ead470d381d3a.md) | 28 | `result-track:a53e54c5385ead470d381d3a1104b1bced7231b5b886ed99ce7d23c7e40a7fa0` |
| 4 | `theorem` | [numElems_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/declarations/numelems-le-iff--fde610bc2a25e65c16ec5b6e.md) | 31 | `result-track:fde610bc2a25e65c16ec5b6ed63af4ddfdba3541d24f3b237f8c16c686d5197a` |
| 5 | `theorem` | [mem_range'_elems](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/declarations/mem-range-elems--538d265e3523a57f82578219.md) | 42 | `result-track:538d265e3523a57f8257821929783e436465866d319f9c2337e365efc423bf12` |
| 6 | `theorem` | [forIn'_eq_forIn_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/declarations/forin-eq-forin-range--41af630363377a3fe84e1a64.md) | 51 | `result-track:41af630363377a3fe84e1a6435b9d5ea08b65445cf85a0b2a8edec0c2891f701` |
| 7 | `theorem` | [forIn_eq_forIn_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/declarations/forin-eq-forin-range--ab3832b53b84795622c7274d.md) | 96 | `result-track:ab3832b53b84795622c7274d89891dd2d417e47d6df4e901d4fc9ade855aca21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
