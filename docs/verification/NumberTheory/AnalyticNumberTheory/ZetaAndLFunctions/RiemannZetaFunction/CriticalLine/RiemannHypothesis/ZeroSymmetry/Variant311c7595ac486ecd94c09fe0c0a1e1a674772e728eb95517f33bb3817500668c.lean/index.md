# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZeroSymmetry.Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36d0866dcd116f989ed9c0bc44c3696043a4b5b5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36d0866dcd116f989ed9c0bc44c3696043a4b5b5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Definitions` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_conjugate_involutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/zero-conjugate-involutive--0a352240aecfae18d94a6b74.md) | 20 | `result-track:0a352240aecfae18d94a6b74fd6d9f15aa9826a608e54dabf142e9b18328c5d7` |
| 2 | `theorem` | [zero_reflect_involutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/zero-reflect-involutive--766994261846fbc217d8a464.md) | 24 | `result-track:766994261846fbc217d8a464158399e98e5e6a46146366864ef23e22222b7a0e` |
| 3 | `theorem` | [zero_conjugate_reflect_commute](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/zero-conjugate-reflect-commute--7ab79d42887cfa4ff65a4321.md) | 27 | `result-track:7ab79d42887cfa4ff65a43213537f7305f908cd8bf17107deb7b9232371a39fd` |
| 4 | `theorem` | [critical_reflection_eq_composite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/critical-reflection-eq-composite--24faec3ca7962396c17cfca2.md) | 31 | `result-track:24faec3ca7962396c17cfca26db2ea0476aeb24dc0577c25febf213f6f975710` |
| 5 | `theorem` | [critical_reflection_involutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/critical-reflection-involutive--3fb827d67995dc28d9952bf8.md) | 35 | `result-track:3fb827d67995dc28d9952bf878d06fbb268437e5eaca3e981187a3e2a16a7558` |
| 6 | `theorem` | [NontrivialZetaZero.ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/nontrivialzetazero-ne-zero--a4749fa1c4596d7b20aeea99.md) | 40 | `result-track:a4749fa1c4596d7b20aeea9928a0d125c17f01c1cedea7f7955418436f8901e5` |
| 7 | `theorem` | [NontrivialZetaZero.gamma_real_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/nontrivialzetazero-gamma-real-ne-zero--1fa77900c5b0325dd6427a7b.md) | 47 | `result-track:1fa77900c5b0325dd6427a7b5ea85f68e4a9d49b30dc1ccbe824c2120146d385` |
| 8 | `theorem` | [NontrivialZetaZero.conjugate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/nontrivialzetazero-conjugate--5090d75ada5e58582af72604.md) | 60 | `result-track:5090d75ada5e58582af72604190a6e59d977b1e69f1ebd36aa71d2817548e2bd` |
| 9 | `theorem` | [NontrivialZetaZero.reflect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/nontrivialzetazero-reflect--d582f273c1ece1c6ca069010.md) | 76 | `result-track:d582f273c1ece1c6ca06901032e9662be4c7e90b5023f7e116f0664940f8ab68` |
| 10 | `theorem` | [NontrivialZetaZero.critical_reflection](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/nontrivialzetazero-critical-reflection--193aae24bc87d8583846a78b.md) | 100 | `result-track:193aae24bc87d8583846a78b0db8de1c65e0dfae56b8c7bbda88215fb38c8b6a` |
| 11 | `theorem` | [NontrivialZetaZero.mem_critical_strip](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/nontrivialzetazero-mem-critical-strip--7f996817a6908ced370f819d.md) | 105 | `result-track:7f996817a6908ced370f819df353c974c19e6317ac1fab6e19efbce67d29d2e9` |
| 12 | `theorem` | [nontrivial_zero_conjugate_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/nontrivial-zero-conjugate-iff--254ed0bb63f21da5a85157b0.md) | 115 | `result-track:254ed0bb63f21da5a85157b08c0b4fcab1a3b05cfcdd5a448c9f022da62c86cc` |
| 13 | `theorem` | [nontrivial_zero_reflect_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/nontrivial-zero-reflect-iff--3534ac9d9196ca0b031e4608.md) | 123 | `result-track:3534ac9d9196ca0b031e460816e7d368b89524580b003c6d665be116cdc0beb1` |
| 14 | `theorem` | [nontrivial_zero_critical_reflection_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variant311c7595ac486ecd94c09fe0c0a1e1a674772e728eb95517f33bb3817500668c.lean/declarations/nontrivial-zero-critical-reflection-iff--c0278f7667624cf79ddad869.md) | 131 | `result-track:c0278f7667624cf79ddad869bd68cea87f586b2f9391d313a24f257fffc40ef6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
