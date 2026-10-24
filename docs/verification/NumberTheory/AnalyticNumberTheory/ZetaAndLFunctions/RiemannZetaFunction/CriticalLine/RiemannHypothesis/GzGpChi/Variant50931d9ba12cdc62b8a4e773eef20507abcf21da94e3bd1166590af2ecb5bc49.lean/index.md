# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GzGpChi.Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbaaf0ff65b32817576cb61fdc8c9dde8ba10b5d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbaaf0ff65b32817576cb61fdc8c9dde8ba10b5d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Hypotheses.GzGp` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.AssemblyQ` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [EFrhs_eq_GpChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean/declarations/efrhs-eq-gpchi--99ab752072c205aa0ca2b6c5.md) | 39 | `result-track:99ab752072c205aa0ca2b6c517a38421f00db34833bc34cab98edecf8c4d88f8` |
| 2 | `theorem` | [ZeroConfig.Gz_eq_GpChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean/declarations/zeroconfig-gz-eq-gpchi--58270bd17a4ab3cd0df52669.md) | 55 | `result-track:58270bd17a4ab3cd0df5266903fc9e415ceef82747197768e6f84de433e57ee0` |
| 3 | `theorem` | [ZeroConfig.summable_Gsummand_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant50931d9ba12cdc62b8a4e773eef20507abcf21da94e3bd1166590af2ecb5bc49.lean/declarations/zeroconfig-summable-gsummand-chi--84509afb29e627744f34d764.md) | 66 | `result-track:84509afb29e627744f34d764370763b7aaeeed01e6b71843d61484e9251d57cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
