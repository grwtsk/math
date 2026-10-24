# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePrimitiveMassAttempt04.Variant8c70a98b8bf7672895604d087730296d0703ea20624b769c9031d1749a541170

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc28138f46c9084cf435d412cd588f862069ef33",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variant8c70a98b8bf7672895604d087730296d0703ea20624b769c9031d1749a541170.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variant8c70a98b8bf7672895604d087730296d0703ea20624b769c9031d1749a541170.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variant8c70a98b8bf7672895604d087730296d0703ea20624b769c9031d1749a541170.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc28138f46c9084cf435d412cd588f862069ef33`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variant8c70a98b8bf7672895604d087730296d0703ea20624b769c9031d1749a541170.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variant8c70a98b8bf7672895604d087730296d0703ea20624b769c9031d1749a541170.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [expHalfMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variant8c70a98b8bf7672895604d087730296d0703ea20624b769c9031d1749a541170.lean/declarations/exphalfmoment-integrable--38537a7f82376c3c3d27094b.md) | 16 | `result-track:38537a7f82376c3c3d27094bcf03de3ce95b1d02a89b968c8345b886d1e63023` |
| 2 | `theorem` | [expHalfMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variant8c70a98b8bf7672895604d087730296d0703ea20624b769c9031d1749a541170.lean/declarations/exphalfmoment-integral--62a710bcfcbce234c9d16004.md) | 37 | `result-track:62a710bcfcbce234c9d160045c228abd24b436f24b918ac8cd1e99b3523ceb62` |
| 3 | `theorem` | [reflectedEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variant8c70a98b8bf7672895604d087730296d0703ea20624b769c9031d1749a541170.lean/declarations/reflectedenvelope-integrable--9482f191d25c6cfafab05fb7.md) | 50 | `result-track:9482f191d25c6cfafab05fb707dbf0d797053430b33dee1f363d9d35e4235f5d` |
| 4 | `theorem` | [reflectedEnvelope_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variant8c70a98b8bf7672895604d087730296d0703ea20624b769c9031d1749a541170.lean/declarations/reflectedenvelope-integral--6e71065e30661ae3ca5b58c9.md) | 62 | `result-track:6e71065e30661ae3ca5b58c9cf0db85d182fe09ae0aef3b87780651a48a5bb8c` |
| 5 | `theorem` | [reflectedPrimitive_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variant8c70a98b8bf7672895604d087730296d0703ea20624b769c9031d1749a541170.lean/declarations/reflectedprimitive-intervalintegrable--cc5402c4d326126266be2205.md) | 79 | `result-track:cc5402c4d326126266be22053e4894ad545e52202f159bddce81340aaec05a60` |
| 6 | `theorem` | [reflectedPrimitive_mass_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt04/Variant8c70a98b8bf7672895604d087730296d0703ea20624b769c9031d1749a541170.lean/declarations/reflectedprimitive-mass-bounds--b6861896f3525e9fbbacf22f.md) | 87 | `result-track:b6861896f3525e9fbbacf22f468271356595bcf49d1bd23a36c4f3911372931e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
