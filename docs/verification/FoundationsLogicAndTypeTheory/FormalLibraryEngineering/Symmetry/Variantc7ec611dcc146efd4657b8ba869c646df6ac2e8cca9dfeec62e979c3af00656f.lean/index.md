# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symmetry.Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebd9c4624afb8012938930f473cc708918609841",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebd9c4624afb8012938930f473cc708918609841`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Boundary` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.AbelReynolds.Orbit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.AbelReynolds.Tally` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Involution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean/declarations/involution--8975b1f8e1246d5668cdde0f.md) | 23 | `declaration-track:8975b1f8e1246d5668cdde0f37247faadc88be3d586c2e36ab1f7cb7360276f9` |
| 2 | `def` | [Involution.Fixed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean/declarations/involution-fixed--13e2bbcc2a909fb4ecc6570e.md) | 27 | `declaration-track:13e2bbcc2a909fb4ecc6570ea0f3a3429cc773dd4c1dd9e367af1bac222de57b` |
| 3 | `theorem` | [Involution.act_act](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean/declarations/involution-act-act--93a42ca6d2a6ad4852abdc1a.md) | 32 | `result-track:93a42ca6d2a6ad4852abdc1a357586d4b6a826cf3562c20ff0187fec6abcf9b6` |
| 4 | `structure` | [BoundaryInvolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean/declarations/boundaryinvolution--0210e17b70cd4bc90b90bbb7.md) | 38 | `declaration-track:0210e17b70cd4bc90b90bbb74416b490642ba846e7fb3eb5f2a07a2bfdbaf818` |
| 5 | `structure` | [TwistedFixedWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean/declarations/twistedfixedwitness--42c1bda6939ab7a18787b4c7.md) | 43 | `declaration-track:42c1bda6939ab7a18787b4c700f3235d17eb2f75555d52e3c3d6a2e24c4978c7` |
| 6 | `structure` | [CertifiedTallyInvolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean/declarations/certifiedtallyinvolution--eff14fb84ad134005de5c7f3.md) | 53 | `declaration-track:eff14fb84ad134005de5c7f3da1bd3c44150c623ec7ad1c725acf0f96aa11aab` |
| 7 | `def` | [CertifiedTallyInvolution.act](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean/declarations/certifiedtallyinvolution-act--54e1257469f9f8fd37a965de.md) | 56 | `declaration-track:54e1257469f9f8fd37a965de057e7e143264f784122fc2f8ff39b93ca149242f` |
| 8 | `theorem` | [CertifiedTallyInvolution.act_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean/declarations/certifiedtallyinvolution-act-involutive--63036e3e214ec202bb46642f.md) | 61 | `result-track:63036e3e214ec202bb46642fe8044b4b3fd540a77d3f2411131f618a7b2bb04e` |
| 9 | `structure` | [FixedReusableBlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean/declarations/fixedreusableblock--fa448b57126226431f467615.md) | 68 | `declaration-track:fa448b57126226431f46761557323ba5d1b668bfdd889fefa3af0be4cd88b1c2` |
| 10 | `structure` | [ReynoldsSymmetryCompatibility](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f.lean/declarations/reynoldssymmetrycompatibility--f43567666d7988c124eca3f5.md) | 74 | `declaration-track:f43567666d7988c124eca3f56db8a498a222d04e13f143a8cad5509708f9bef1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
