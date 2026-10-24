# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ZeroLEOne.Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf6384f03955eb1b1ed6315fd64ce70b03f0a8d6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf6384f03955eb1b1ed6315fd64ce70b03f0a8d6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ZeroLEOneClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54.lean/declarations/zeroleoneclass--414dece82d150fd65f45f591.md) | 25 | `declaration-track:414dece82d150fd65f45f591a57efd87fdaf2efadca94e770abea05b0d23f00d` |
| 2 | `lemma` | [zero_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54.lean/declarations/zero-le-one--be7818c8dc414e290e0b6443.md) | 30 | `result-track:be7818c8dc414e290e0b6443a4b071ffa5ea25785922d8fe6b3e7e66ab3809f9` |
| 3 | `instance` | [ZeroLEOneClass.factZeroLeOne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54.lean/declarations/zeroleoneclass-factzeroleone--e84b57ae9857681ffc7c463d.md) | 33 | `declaration-track:e84b57ae9857681ffc7c463dbdf780954f3a6d49f7de34bfe9ae832607151745` |
| 4 | `lemma` | [zero_le_one'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54.lean/declarations/zero-le-one--383325e9d203629a12366f12.md) | 38 | `result-track:383325e9d203629a12366f1208a0ac7545f2f1b4b9a03ab93996ffe4e27e6633` |
| 5 | `lemma` | [zero_lt_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54.lean/declarations/zero-lt-one--e1e4ddd12d43c4cf7b8015fa.md) | 45 | `result-track:e1e4ddd12d43c4cf7b8015fa626438b24171c5025912ac0b20f118e1c5348c21` |
| 6 | `instance` | [ZeroLEOneClass.factZeroLtOne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54.lean/declarations/zeroleoneclass-factzeroltone--2186d100847c3db37bd8b0ae.md) | 47 | `declaration-track:2186d100847c3db37bd8b0ae984f4afe4d934142568f2fa802c825035257c7be` |
| 7 | `lemma` | [zero_lt_one'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroLEOne/Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54.lean/declarations/zero-lt-one--6d0bdc76f42ae34e4e94a8f9.md) | 53 | `result-track:6d0bdc76f42ae34e4e94a8f93bbff7e28ecb10dcc34151fa1d63d18e4b43a85a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
