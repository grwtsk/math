# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProveSupported.Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99b6e5e627322cb7ec0928e0f12f25e5470664a3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99b6e5e627322cb7ec0928e0f12f25e5470664a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ToExpr` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.AD` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkUsesOnlyVar0Proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean/declarations/mkusesonlyvar0proof--d0bec895445941842526ca41.md) | 64 | `declaration-track:d0bec895445941842526ca41ec212a54ff1ef834323ae457ab838d5015bc2763` |
| 2 | `def` | [mkSupportedProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean/declarations/mksupportedproof--98551774f60119cf0b4e7192.md) | 160 | `declaration-track:98551774f60119cf0b4e7192226fdec0ee2bddb4800b25796628d4f4b5e31c29` |
| 3 | `def` | [mkSupportedCoreProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean/declarations/mksupportedcoreproof--a81fb3e8664c58cfe050c37f.md) | 225 | `declaration-track:a81fb3e8664c58cfe050c37f290bc69a168d5268f1b23cf767c1995de5750e53` |
| 4 | `def` | [mkSupportedWithInvProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean/declarations/mksupportedwithinvproof--f2fe7f42973a9599771ee570.md) | 335 | `declaration-track:f2fe7f42973a9599771ee570408ad3089c1a2c5e63c53268b25c19c75581c78f` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean/declarations/elab--95fb21caccc88aeb993eb663.md) | 435 | `declaration-track:95fb21caccc88aeb993eb663ab27121c3bbc4b6f353b78f1fe9202fdedeae69d` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean/declarations/elab--24a1cdb52eb38a2d9b96d483.md) | 450 | `declaration-track:24a1cdb52eb38a2d9b96d483b57c38562bda118dc233bee95ed48ee9956ca4b3` |
| 7 | `def` | [reifyWithSupportCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean/declarations/reifywithsupportcore--5a226231cdf468acc9081a89.md) | 468 | `declaration-track:5a226231cdf468acc9081a895ef76cbb49fd5b2fc5bb43ba572b290295c86144` |
| 8 | `def` | [reifyWithSupportInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean/declarations/reifywithsupportinv--0006274629fbe0a1d33b6120.md) | 474 | `declaration-track:0006274629fbe0a1d33b6120dae1a153d3578197a88730d07e03682e9f65a605` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
