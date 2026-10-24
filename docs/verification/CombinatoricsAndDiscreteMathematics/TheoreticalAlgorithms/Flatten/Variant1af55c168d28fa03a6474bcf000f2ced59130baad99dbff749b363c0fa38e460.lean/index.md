# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Flatten.Variant1af55c168d28fa03a6474bcf000f2ced59130baad99dbff749b363c0fa38e460

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5040e197bc86763d21de116aca8a1286c428c5f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant1af55c168d28fa03a6474bcf000f2ced59130baad99dbff749b363c0fa38e460.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant1af55c168d28fa03a6474bcf000f2ced59130baad99dbff749b363c0fa38e460.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant1af55c168d28fa03a6474bcf000f2ced59130baad99dbff749b363c0fa38e460.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5040e197bc86763d21de116aca8a1286c428c5f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant1af55c168d28fa03a6474bcf000f2ced59130baad99dbff749b363c0fa38e460.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant1af55c168d28fa03a6474bcf000f2ced59130baad99dbff749b363c0fa38e460.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.GCongr.Core` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Sublist.flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant1af55c168d28fa03a6474bcf000f2ced59130baad99dbff749b363c0fa38e460.lean/declarations/sublist-flatten--960089fdd6daa5b9106e77df.md) | 32 | `result-track:960089fdd6daa5b9106e77dfb7e4b6379be4376dee5d0a970c7b7b4e945efe9c` |
| 2 | `theorem` | [Sublist.flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant1af55c168d28fa03a6474bcf000f2ced59130baad99dbff749b363c0fa38e460.lean/declarations/sublist-flatmap--24ea254c75c75ac79c84cda1.md) | 42 | `result-track:24ea254c75c75ac79c84cda1f2c525542afe5b8c66d275133854cbc1638a8b08` |
| 3 | `theorem` | [drop_take_succ_eq_cons_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant1af55c168d28fa03a6474bcf000f2ced59130baad99dbff749b363c0fa38e460.lean/declarations/drop-take-succ-eq-cons-getelem--8ef3567bd7f918731055ca34.md) | 52 | `result-track:8ef3567bd7f918731055ca3446193d6a097f1f14f0ea22f3a66ebb62fb3f5bc9` |
| 4 | `theorem` | [append_flatten_map_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant1af55c168d28fa03a6474bcf000f2ced59130baad99dbff749b363c0fa38e460.lean/declarations/append-flatten-map-append--f4b24b061f91f5e1693ac365.md) | 63 | `result-track:f4b24b061f91f5e1693ac365ba2163307c275e6dc546d125f4f9ae6c456a9587` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
