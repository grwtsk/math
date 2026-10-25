# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Core.Variant766259f6d9b1dbf481284e103bcbb383a2341cf3414d3308516bede0f639585d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f40a8712d19a792ab4b513f8f41b2d28f37e02fe",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant766259f6d9b1dbf481284e103bcbb383a2341cf3414d3308516bede0f639585d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant766259f6d9b1dbf481284e103bcbb383a2341cf3414d3308516bede0f639585d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant766259f6d9b1dbf481284e103bcbb383a2341cf3414d3308516bede0f639585d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f40a8712d19a792ab4b513f8f41b2d28f37e02fe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant766259f6d9b1dbf481284e103bcbb383a2341cf3414d3308516bede0f639585d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant766259f6d9b1dbf481284e103bcbb383a2341cf3414d3308516bede0f639585d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Qq.MetaM` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Core` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subsingleton_or_nontrivial_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant766259f6d9b1dbf481284e103bcbb383a2341cf3414d3308516bede0f639585d.lean/declarations/subsingleton-or-nontrivial-elim--ce23e9322fbcfdf5d241c0a8.md) | 25 | `result-track:ce23e9322fbcfdf5d241c0a85a29fe9bc8a8b3293c0bad3b00f96121763676da` |
| 2 | `def` | [nontrivialityByElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant766259f6d9b1dbf481284e103bcbb383a2341cf3414d3308516bede0f639585d.lean/declarations/nontrivialitybyelim--9532ffa1bc82402a28886713.md) | 35 | `declaration-track:9532ffa1bc82402a28886713caa6daceec831490e5433f01c3b0e308c0ce7111` |
| 3 | `def` | [nontrivialityByAssumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant766259f6d9b1dbf481284e103bcbb383a2341cf3414d3308516bede0f639585d.lean/declarations/nontrivialitybyassumption--07260917eb9ac05f2c20c0ca.md) | 60 | `declaration-track:07260917eb9ac05f2c20c0ca54d91e6708a7369219bb66a785f391803ce83329` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant766259f6d9b1dbf481284e103bcbb383a2341cf3414d3308516bede0f639585d.lean/declarations/syntax--079af75d5de9c70c26f5f7e0.md) | 108 | `declaration-track:079af75d5de9c70c26f5f7e0bcf47190dc3a13c3ef70cd127d881748e2efffe5` |
| 5 | `def` | [elabNontriviality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant766259f6d9b1dbf481284e103bcbb383a2341cf3414d3308516bede0f639585d.lean/declarations/elabnontriviality--731adbecb30aca5989032db7.md) | 112 | `declaration-track:731adbecb30aca5989032db71e07742d374f5e7eb9087b4f69805f1f4a9bee66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
