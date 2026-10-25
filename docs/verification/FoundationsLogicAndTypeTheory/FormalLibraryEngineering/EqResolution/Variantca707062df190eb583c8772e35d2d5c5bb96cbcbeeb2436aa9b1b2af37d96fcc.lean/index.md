# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqResolution.Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51f495d43caa5e46fefe8f6f4245a76a6f48b6ba",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51f495d43caa5e46fefe8f6f4245a76a6f48b6ba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.AppBuilder` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.MatchUtil` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Util.ForEachExpr` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forallMetaTelescopeReducingAndUnfoldingNot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc.lean/declarations/forallmetatelescopereducingandunfoldingnot--5f2504643b9353a03eda38b5.md) | 28 | `declaration-track:5f2504643b9353a03eda38b51576acee84c6381417065e39da1013456d0db834` |
| 2 | `structure` | [TopSort.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc.lean/declarations/topsort-state--a550d2ca98de315c7147accd.md) | 35 | `declaration-track:a550d2ca98de315c7147accd1f0e3dc72efed6fba9ae9f50f62a3c71911be258` |
| 3 | `abbrev` | [TopSortM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc.lean/declarations/topsortm--49b74501cdd3f0e47c1640fe.md) | 40 | `declaration-track:49b74501cdd3f0e47c1640fe8c53d4faa5319aee54e115eca5056d53c99c1ba7` |
| 4 | `def` | [topsortMVars?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc.lean/declarations/topsortmvars--a441bd31b648481447fe3758.md) | 66 | `declaration-track:a441bd31b648481447fe37585a1f96294886aa562068dae7e3bd4ab60a8bf815` |
| 5 | `def` | [eqResCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc.lean/declarations/eqrescore--73f3c890f48c1b34bf43de1b.md) | 96 | `declaration-track:73f3c890f48c1b34bf43de1b2a9036170bae1651a11b6cb633796c24f3c3de5f` |
| 6 | `def` | [eqResolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc.lean/declarations/eqresolution--2e537836d73a966d927062dc.md) | 136 | `declaration-track:2e537836d73a966d927062dc7a19663716ff17ff1437aeb5c5f1371b9b246d34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
