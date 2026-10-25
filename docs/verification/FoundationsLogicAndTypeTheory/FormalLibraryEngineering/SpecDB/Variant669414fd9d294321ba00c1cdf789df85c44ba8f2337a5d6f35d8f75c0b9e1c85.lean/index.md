# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SpecDB.Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a43de50729d035246f57a650e2d10c893ba0406e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a43de50729d035246f57a650e2d10c893ba0406e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.Simp.DiscrTree` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMetaSymIsShared.Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.Lean.Meta.Sym.isShared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--4b7ef3c8f8768645b5ace688.md) | 39 | `declaration-track:4b7ef3c8f8768645b5ace688e376e45df07887c91ff3380795a27bddd45cf932` |
| 2 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMetaSymIsShared.Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.Lean.Meta.Sym.Pattern.shareCommon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--b874f03d1d8d12d6029c0eb7.md) | 50 | `declaration-track:b874f03d1d8d12d6029c0eb7c1b9f9b4f65816acfd436df7713f6912e484b1b7` |
| 3 | `def` | [SpecAttr.SpecTheorem.instantiate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/declarations/specattr-spectheorem-instantiate--fb10428c34f5f70abd6da9ba.md) | 67 | `declaration-track:fb10428c34f5f70abd6da9ba2ad4af29a0685238cd54a4b8a459d7d30db62382` |
| 4 | `def` | [SpecAttr.SpecTheorem.global?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/declarations/specattr-spectheorem-global--fb94315692368703f30a9cc9.md) | 84 | `declaration-track:fb94315692368703f30a9cc9afdfbcc295347b098a133694ad961f8ba7ac87af` |
| 5 | `def` | [extendWithSimpSpecs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/declarations/extendwithsimpspecs--e2a69b388d12943ec8e866ac.md) | 99 | `declaration-track:e2a69b388d12943ec8e866ac42683efa98262986988f8538b697e503d27fb2bc` |
| 6 | `def` | [SpecAttr.SpecTheorems.findSpecs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/declarations/specattr-spectheorems-findspecs--95bda3f8427c429c19bcf118.md) | 138 | `declaration-track:95bda3f8427c429c19bcf11881d6288cddbfe610655706d16201b72b3bc11dcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
