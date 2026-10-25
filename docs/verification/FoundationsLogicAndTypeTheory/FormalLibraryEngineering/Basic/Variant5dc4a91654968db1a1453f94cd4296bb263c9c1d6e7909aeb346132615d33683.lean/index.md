# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant5dc4a91654968db1a1453f94cd4296bb263c9c1d6e7909aeb346132615d33683

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "801988702bd58b927bf02ab92540716ec6f8e8b7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5dc4a91654968db1a1453f94cd4296bb263c9c1d6e7909aeb346132615d33683.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5dc4a91654968db1a1453f94cd4296bb263c9c1d6e7909aeb346132615d33683.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5dc4a91654968db1a1453f94cd4296bb263c9c1d6e7909aeb346132615d33683.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `801988702bd58b927bf02ab92540716ec6f8e8b7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5dc4a91654968db1a1453f94cd4296bb263c9c1d6e7909aeb346132615d33683.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5dc4a91654968db1a1453f94cd4296bb263c9c1d6e7909aeb346132615d33683.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.Meta.preservingMCtx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5dc4a91654968db1a1453f94cd4296bb263c9c1d6e7909aeb346132615d33683.lean/declarations/lean-meta-preservingmctx--e890ae26c2807a7cca9c3840.md) | 27 | `declaration-track:e890ae26c2807a7cca9c38408ea74c0eb57b56a26b1480cf927f366c47d4d975` |
| 2 | `def` | [Lean.Meta.forallMetaTelescopeReducingUntilDefEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5dc4a91654968db1a1453f94cd4296bb263c9c1d6e7909aeb346132615d33683.lean/declarations/lean-meta-forallmetatelescopereducinguntildefeq--e5d798060c4cb420761903fd.md) | 45 | `declaration-track:e5d798060c4cb420761903fdde4f9f947345de05813e787827fcdbc5b3f87e2f` |
| 3 | `def` | [Lean.Meta.pureIsDefEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5dc4a91654968db1a1453f94cd4296bb263c9c1d6e7909aeb346132615d33683.lean/declarations/lean-meta-pureisdefeq--6118464b8136c300a514af11.md) | 68 | `declaration-track:6118464b8136c300a514af11e1b9a63c7e6465a48c90cafb4f495628e4a8d212` |
| 4 | `def` | [Lean.Meta.mkRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5dc4a91654968db1a1453f94cd4296bb263c9c1d6e7909aeb346132615d33683.lean/declarations/lean-meta-mkrel--aab9525ea9c06d328ac9e4bc.md) | 72 | `declaration-track:aab9525ea9c06d328ac9e4bc14621889b9ae09a86013ffa7b32fa5de2d158b68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
