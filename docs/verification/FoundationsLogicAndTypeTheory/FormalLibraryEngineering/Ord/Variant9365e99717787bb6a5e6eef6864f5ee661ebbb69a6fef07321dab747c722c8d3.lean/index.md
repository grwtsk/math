# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ord.Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97781cb68c69a5103985c99e31e77d46c3d50bc7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97781cb68c69a5103985c99e31e77d46c3d50bc7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CtorIdx` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CasesOnSameCtor` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.SameCtorUtils` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Array.OfFn` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkOrdHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/declarations/mkordheader--de224f96639e367ba6acfb88.md) | 29 | `declaration-track:de224f96639e367ba6acfb8809f140f183e1d0064f7c2a359142e2fa19d1a9a4` |
| 2 | `def` | [mkMatchOld](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/declarations/mkmatchold--6af9bc83b7963344f1efa57f.md) | 32 | `declaration-track:6af9bc83b7963344f1efa57fc86f1e69975289bc8d35bc7e038728854d431d15` |
| 3 | `def` | [mkMatchNew](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/declarations/mkmatchnew--346ba9efcf60bcdc9ee9638b.md) | 86 | `declaration-track:346ba9efcf60bcdc9ee9638bd814c4c79c5faa4449d29400cae3cf2161c5b153` |
| 4 | `def` | [mkMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/declarations/mkmatch--0e5af6a0d7158b08e17f162d.md) | 136 | `declaration-track:0e5af6a0d7158b08e17f162db03847b1767cec612b8a7bea4e55b4deb2520fd1` |
| 5 | `def` | [mkAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/declarations/mkauxfunction--c8fd3b7899dd73528904e7aa.md) | 142 | `declaration-track:c8fd3b7899dd73528904e7aaf7369fa286dbcd4dec10ea89b1826523cac5eafc` |
| 6 | `def` | [mkMutualBlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/declarations/mkmutualblock--ff8da54872f7b126b6d40ad2.md) | 156 | `declaration-track:ff8da54872f7b126b6d40ad2e3cdc91829b4a6c6f9ed1ff7514c8b4c22e337ad` |
| 7 | `def` | [mkOrdInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/declarations/mkordinstancecmds--3436f83a8054ee96e3e0604c.md) | 165 | `declaration-track:3436f83a8054ee96e3e0604cfe1cd1eab8ce85c000751e7b2ce1ae5ef0e1ad34` |
| 8 | `def` | [mkOrdEnumFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/declarations/mkordenumfun--89d3592f2b6cdc00b54b2578.md) | 173 | `declaration-track:89d3592f2b6cdc00b54b257824419d10578e77a7731812aa9597e59b2c5916ba` |
| 9 | `def` | [mkOrdEnumCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/declarations/mkordenumcmd--a43b38078efbaade8fa6d33a.md) | 177 | `declaration-track:a43b38078efbaade8fa6d33a63e118cd982f885d5b2b72b14dafffd992ec9ff2` |
| 10 | `def` | [mkOrdInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/declarations/mkordinstance--bb337f5d58972d640ee6b420.md) | 185 | `declaration-track:bb337f5d58972d640ee6b420c3ff9a4900274324a4eb61d41d03884d98d5f3a1` |
| 11 | `def` | [mkOrdInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/declarations/mkordinstancehandler--5d28d0ac5d2c4c972b3dbe1e.md) | 194 | `declaration-track:5d28d0ac5d2c4c972b3dbe1ebbb65a2b8c90b4f9aa4dc6419f4d48adad17af78` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant9365e99717787bb6a5e6eef6864f5ee661ebbb69a6fef07321dab747c722c8d3.lean/declarations/builtin-initialize--7333b1dd505d20241b14b75f.md) | 202 | `declaration-track:7333b1dd505d20241b14b75f497b2bac3e0007d5e27effe22408c1f7bb306b14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
