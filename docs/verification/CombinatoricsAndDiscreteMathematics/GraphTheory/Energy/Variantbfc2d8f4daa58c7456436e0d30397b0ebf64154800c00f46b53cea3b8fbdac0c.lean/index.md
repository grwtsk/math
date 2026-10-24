# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Energy.Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc844a1765b00a1b4776e517a00ac7bebed10baa",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc844a1765b00a1b4776e517a00ac7bebed10baa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Density` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.BigOperators` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean/declarations/macro-rules--c5fe6004f959c59416cd805e.md) | 43 | `declaration-track:c5fe6004f959c59416cd805e0d6c3336d5025328f425648bf86c295908a2126a` |
| 2 | `def` | [energy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean/declarations/energy--843536efe89fad3b5b53d064.md) | 49 | `declaration-track:843536efe89fad3b5b53d064ee3b304ee9232aaca68e801064028851717270b0` |
| 3 | `theorem` | [energy_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean/declarations/energy-nonneg--6c9b37f71f98d6a3fd90e1d1.md) | 53 | `result-track:6c9b37f71f98d6a3fd90e1d10aeb00c5582d7c5607719c5a609543f3929c81fc` |
| 4 | `theorem` | [energy_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean/declarations/energy-le-one--f75bb281e227ba36a2b112b9.md) | 57 | `result-track:f75bb281e227ba36a2b112b993419116a163f9ec08fbb7ab2df867cf6706d143` |
| 5 | `theorem` | [coe_energy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean/declarations/coe-energy--15194d979e22641ef357365a.md) | 72 | `result-track:15194d979e22641ef357365a3c6830e2dddb5c301853cb90fd7140c7f9263436` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
