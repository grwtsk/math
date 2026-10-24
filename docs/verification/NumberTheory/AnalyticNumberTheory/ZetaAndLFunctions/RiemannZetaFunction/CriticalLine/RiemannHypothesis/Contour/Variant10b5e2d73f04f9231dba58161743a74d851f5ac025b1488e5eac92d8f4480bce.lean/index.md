# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Contour.Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a006417c0697e9b1bd346a546679415672b8b7b5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a006417c0697e9b1bd346a546679415672b8b7b5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.FullLineAssembly` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiable_Hfn](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean/declarations/differentiable-hfn--eb78cd6e3e964c023f0b7ad0.md) | 26 | `result-track:eb78cd6e3e964c023f0b7ad071ef8467814ba7f9f2265d03dc2627ee1b22a9b7` |
| 2 | `theorem` | [mem_rectangle_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean/declarations/mem-rectangle-iff--93ac1c22e8dbbae57675ecac.md) | 33 | `result-track:93ac1c22e8dbbae57675ecacfb19e89a2d750d1f322b73fcc52df04a2267bf9f` |
| 3 | `theorem` | [rectangle_identity_of](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean/declarations/rectangle-identity-of--6778be6dd4341c3824d3e37c.md) | 43 | `result-track:6778be6dd4341c3824d3e37c06c93a79ba950ad8f91180de6b18ffed2a26e858` |
| 4 | `theorem` | [rectangle_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean/declarations/rectangle-identity--8104422448fbaf55af457337.md) | 114 | `result-track:8104422448fbaf55af457337411d385e2350b6255742b1aa63e4c2437324e176` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
