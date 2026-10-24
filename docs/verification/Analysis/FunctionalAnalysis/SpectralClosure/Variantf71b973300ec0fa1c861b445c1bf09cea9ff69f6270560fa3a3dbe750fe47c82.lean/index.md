# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SpectralClosure.Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6af6f1b5dea07f9cabb1672d7d0450a51000c72d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralClosure/Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralClosure/Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralClosure/Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6af6f1b5dea07f9cabb1672d7d0450a51000c72d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralClosure/Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralClosure/Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.IsolationMachine` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteHeightSpectralClosureCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralClosure/Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82.lean/declarations/finiteheightspectralclosurecertificate--8e3bc4ad347682888f4a39ce.md) | 17 | `declaration-track:8e3bc4ad347682888f4a39ce37f86bb483c26b16d1829164b0563de8641f2e6d` |
| 2 | `theorem` | [FiniteHeightSpectralClosureCertificate.measureEquality](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralClosure/Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82.lean/declarations/finiteheightspectralclosurecertificate-measureequality--375a662b554920961c0e8d2d.md) | 50 | `result-track:375a662b554920961c0e8d2db3ba8e25376ff9a9e1477a75b319bfb620f24727` |
| 3 | `theorem` | [finiteHeightSpectralClosure_sound](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralClosure/Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82.lean/declarations/finiteheightspectralclosure-sound--bf9a8685c3b563e1a12f72d4.md) | 68 | `result-track:bf9a8685c3b563e1a12f72d4fc88f727af966a5eacbdb069bd18f14f41c91c5c` |
| 4 | `theorem` | [finiteSpectralClosure_places_actualZerosOnLine](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralClosure/Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82.lean/declarations/finitespectralclosure-places-actualzerosonline--0c968f1fc2287153f5f3d8d8.md) | 85 | `result-track:0c968f1fc2287153f5f3d8d887d52293df5f316fe3e110c570beefb894040fb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
