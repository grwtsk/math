# Verification target: GRWTSK.Algebra.GroupTheory.EnoughRootsOfUnity.Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54b9ba4fc3a5c896a48dd6569371cb0b1ef31fad",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54b9ba4fc3a5c896a48dd6569371cb0b1ef31fad`.

Source path: `GRWTSK/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasEnoughRootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean/declarations/hasenoughrootsofunity--0c5b208c171db34de01ef960.md) | 23 | `declaration-track:0c5b208c171db34de01ef960bed1c19932f860b2f2e768982122a7c4904b78d2` |
| 2 | `lemma` | [exists_primitiveRoot](../../../../../mathematics/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean/declarations/exists-primitiveroot--9af9606b9cf6a063c1dc9cd7.md) | 29 | `result-track:9af9606b9cf6a063c1dc9cd71e0016ba9b48b30b0f0ba1effd6fe584bc461d00` |
| 3 | `instance` | [rootsOfUnity_isCyclic](../../../../../mathematics/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean/declarations/rootsofunity-iscyclic--175414a13b4912e962a88a62.md) | 33 | `declaration-track:175414a13b4912e962a88a621d6acb9f8ffb8ef6c05f1799cd4a94a991f7be3f` |
| 4 | `lemma` | [of_dvd](../../../../../mathematics/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean/declarations/of-dvd--348072eca03ed262a6330fc7.md) | 38 | `result-track:348072eca03ed262a6330fc76aca51d918e3ab9f20986162c99ad005b92b537d` |
| 5 | `instance` | [finite_rootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean/declarations/finite-rootsofunity--141b8743fc08748222677ab8.md) | 49 | `declaration-track:141b8743fc08748222677ab8c93f62306e663b40d25af5bcce37b18c66778d4d` |
| 6 | `lemma` | [natCard_rootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean/declarations/natcard-rootsofunity--183d6fc1a7127cbf237e3759.md) | 63 | `result-track:183d6fc1a7127cbf237e375978f47854e317e185fdb0385785fe912fee24a1aa` |
| 7 | `lemma` | [MulEquiv.hasEnoughRootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean/declarations/mulequiv-hasenoughrootsofunity--eb74314c4e5a8ad5d04f02ee.md) | 80 | `result-track:eb74314c4e5a8ad5d04f02ee72246b0acc559e5712ecc0901f74d7c594a9f164` |
| 8 | `lemma` | [IsCyclic.monoidHom_equiv_self](../../../../../mathematics/Algebra/GroupTheory/EnoughRootsOfUnity/Variant967f53267d6f47c24503f1cc223b9a7f11b9c241e20d3eee18adfa41211f391a.lean/declarations/iscyclic-monoidhom-equiv-self--e2299b1742e26e7498ca4f66.md) | 95 | `result-track:e2299b1742e26e7498ca4f66d71adcf1cd8e381f883098c0e22066cfdda78851` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
