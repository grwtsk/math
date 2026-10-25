# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Actions.Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ad257dbe1370d19c4d7176a1d675643bd9a737b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ad257dbe1370d19c4d7176a1d675643bd9a737b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Build.Run` — import line 15; external provider; requires a separately pinned dependency.
- `Lake.Build.Actions` — import line 16; external provider; requires a separately pinned dependency.
- `Lake.Build.Targets` — import line 17; external provider; requires a separately pinned dependency.
- `Lake.Build.Module` — import line 18; external provider; requires a separately pinned dependency.
- `Lake.Util.Proc` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [env](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean/declarations/env--6e0bae3cb124555f0fd0a3ee.md) | 28 | `declaration-track:6e0bae3cb124555f0fd0a3ee3f7466c448e0014fb37b188a85b7f3c675b3ae71` |
| 2 | `def` | [exe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean/declarations/exe--46e447a0f2b22c333f4f35ad.md) | 31 | `declaration-track:46e447a0f2b22c333f4f35ad06b541a1d0125e647c35cb52c931f498014ad4a2` |
| 3 | `def` | [Package.pack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean/declarations/package-pack--bf64cfb399c732bafddf2c7d.md) | 40 | `declaration-track:bf64cfb399c732bafddf2c7d2218bb9f7c135a882953456840a8ee845927d7dd` |
| 4 | `def` | [Package.unpack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean/declarations/package-unpack--f0f5a5f8b0a60b4f786f380e.md) | 46 | `declaration-track:f0f5a5f8b0a60b4f786f380ec1ffe6be339e7efaa614e01f7f6e350c1045391f` |
| 5 | `def` | [Package.uploadRelease](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean/declarations/package-uploadrelease--ccb2405b02b15951fbab0cfb.md) | 52 | `declaration-track:ccb2405b02b15951fbab0cfbbd479ac88aa95287d39c5de195d537836ed937a3` |
| 6 | `def` | [Package.resolveDriver](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean/declarations/package-resolvedriver--5e4e6c19e25e6c99ad5025d6.md) | 63 | `declaration-track:5e4e6c19e25e6c99ad5025d6db510551fd2305a7377bc1eda7484437c9a9cf92` |
| 7 | `def` | [Package.test](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean/declarations/package-test--adbe820e5f4323c161d216b3.md) | 79 | `declaration-track:adbe820e5f4323c161d216b3aa6c1d2af6eb2340fa37f6677dce04df9bbf4efd` |
| 8 | `def` | [Package.lint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean/declarations/package-lint--0392c9f8afeb36bc50cf4a4f.md) | 97 | `declaration-track:0392c9f8afeb36bc50cf4a4f578a46998bfd46027571c842b2bda17cff659cd2` |
| 9 | `def` | [Workspace.evalLeanFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variantb5aca4d3b8966b20afc82ace0597adf865d31fe49c421d3e374e5e80831a2609.lean/declarations/workspace-evalleanfile--33659d37c32c795e8dc86d4f.md) | 116 | `declaration-track:33659d37c32c795e8dc86d4faae56a57295b9fa1d4d0fb9ca679547315c98742` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
