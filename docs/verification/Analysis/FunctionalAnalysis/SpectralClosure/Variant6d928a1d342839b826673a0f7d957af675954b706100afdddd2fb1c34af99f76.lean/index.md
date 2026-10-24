# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SpectralClosure.Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e66af66c2fdda972a92c0e4728fe3ffe3f08c33b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e66af66c2fdda972a92c0e4728fe3ffe3f08c33b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.IsolationMachine` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteHeightSpectralClosureCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean/declarations/finiteheightspectralclosurecertificate--883cc0f4df8b31c553c08336.md) | 25 | `declaration-track:883cc0f4df8b31c553c08336da93f4f4aa9c9382e673738be7301540868e71cb` |
| 2 | `theorem` | [FiniteHeightSpectralClosureCertificate.measureEquality](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean/declarations/finiteheightspectralclosurecertificate-measureequality--d016ed5d07ec0066dbd4dffc.md) | 58 | `result-track:d016ed5d07ec0066dbd4dffc48127a30ac3eb0febc4f2a02804600142fa5b6ed` |
| 3 | `theorem` | [finiteHeightSpectralClosure_sound](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean/declarations/finiteheightspectralclosure-sound--acf33bf2f6dae7989fb6228c.md) | 76 | `result-track:acf33bf2f6dae7989fb6228c4d738a09dc497a21168a4d43c706268deee61c18` |
| 4 | `theorem` | [finiteSpectralClosure_places_actualZerosOnLine](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean/declarations/finitespectralclosure-places-actualzerosonline--c513568054eb8bbcdb3c70dd.md) | 93 | `result-track:c513568054eb8bbcdb3c70dd5253c3b9e2b6799efcccd6015b5ff27c494d5b66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
