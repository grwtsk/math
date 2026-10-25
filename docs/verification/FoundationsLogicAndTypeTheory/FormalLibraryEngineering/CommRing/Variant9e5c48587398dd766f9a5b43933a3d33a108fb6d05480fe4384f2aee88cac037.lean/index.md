# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CommRing.Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7831a0fe57c866f00796ca144e5e0c1b15c60b45",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7831a0fe57c866f00796ca144e5e0c1b15c60b45`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Simp` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Util` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Var` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Reify` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.SafePoly` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.Int.Internal.Linear.Poly.isNonlinear](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean/declarations/root-int-internal-linear-poly-isnonlinear--a06dec034b352c32edfa0932.md) | 23 | `declaration-track:a06dec034b352c32edfa0932958988bef4f89d0e1a4d3df2c46f9ea24a7107be` |
| 2 | `def` | [_root_.Int.Internal.Linear.Poly.getGeneration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean/declarations/root-int-internal-linear-poly-getgeneration--ac1fedf7ff52961414b3c394.md) | 28 | `declaration-track:ac1fedf7ff52961414b3c394fa4c60d5a66d1c7cceb0611277e355dd617c26ca` |
| 3 | `def` | [getIntRingId?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean/declarations/getintringid--95f0780dbbe722c1ecac2f39.md) | 35 | `declaration-track:95f0780dbbe722c1ecac2f39f44ab0f861eb9e9dfaa997351acb573e907c6ab1` |
| 4 | `def` | [_root_.Int.Internal.Linear.Poly.normCommRing?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommRing/Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.lean/declarations/root-int-internal-linear-poly-normcommring--770b81a9261c1e07570b8ca9.md) | 39 | `declaration-track:770b81a9261c1e07570b8ca90cd0d7995ada34443967adda52964fc220baa2b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
