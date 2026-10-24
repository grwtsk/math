# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusPerron.Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a4f6174aa7292c2518c10a4b29ce5d659d6e661",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a4f6174aa7292c2518c10a4b29ce5d659d6e661`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SmoothedPerronKernel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mobiusDirichlet_reciprocal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/declarations/mobiusdirichlet-reciprocal--bebe5147307c23ce6fa46caa.md) | 29 | `result-track:bebe5147307c23ce6fa46caa481ced79d6609317a16fa6e08c4b1294d4d4417c` |
| 2 | `def` | [perronTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/declarations/perronterm--680e93d56c2811ea393303dc.md) | 39 | `declaration-track:680e93d56c2811ea393303dce3491e54ca8398b4b4702c3cfa4c3cb6ba0834b7` |
| 3 | `theorem` | [perronTerm_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/declarations/perronterm-norm--b69b5be5b7568e204a035396.md) | 45 | `result-track:b69b5be5b7568e204a0353965c04d6debddfdd07b4ba897c80d0389fbdfd7357` |
| 4 | `theorem` | [perronTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/declarations/perronterm-integrable--46d279cef96a3b5394db6366.md) | 55 | `result-track:46d279cef96a3b5394db63660c25db462d4e778ec79c73bd5bce140cba8a90a7` |
| 5 | `theorem` | [perronTerm_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/declarations/perronterm-norm-integrals-summable--f1bb0fd4b87b2502ef717416.md) | 66 | `result-track:f1bb0fd4b87b2502ef7174163c471ddaaad58fa7861ae65f4b6e19f87483800f` |
| 6 | `theorem` | [perronTerm_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/declarations/perronterm-tsum--bc99fc979ac14a1899104026.md) | 75 | `result-track:bc99fc979ac14a1899104026bee4c447816eddb3d0c1c92b6c158210690f0004` |
| 7 | `theorem` | [perronTerm_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/declarations/perronterm-ratio--1450cb19493525724df94b7f.md) | 90 | `result-track:1450cb19493525724df94b7f31f085c403139505eaa5a517a20440138e48c162` |
| 8 | `theorem` | [mobiusPerron_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/declarations/mobiusperron-integrable--98f38e15af81b01f10eeed3e.md) | 105 | `result-track:98f38e15af81b01f10eeed3e8f9865fe42e8b96696d59250abd748f8401a3368` |
| 9 | `theorem` | [perronTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/declarations/perronterm-integral--588c91e498b3799c497335ab.md) | 130 | `result-track:588c91e498b3799c497335abbbcade0fba5ec894847c7fde1aafa17f330411a2` |
| 10 | `theorem` | [logNormalization_perron](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/declarations/lognormalization-perron--91fcba0b1f9498e51783b47f.md) | 142 | `result-track:91fcba0b1f9498e51783b47fd7b3d19aef9237ec4de7e4da453cb88628175254` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
