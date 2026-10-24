# Verification target: GRWTSK.Analysis.TestFunction.Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4936e51ba9207d82509b419d88e7ea4f7c8723f2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TestFunction/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/index.md) · [Full source](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4936e51ba9207d82509b419d88e7ea4f7c8723f2`.

Source path: `GRWTSK/Analysis/TestFunction/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TestFunction/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimitiveWeilTestFunction](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/declarations/primitiveweiltestfunction--cd05e92ac9c4514f1b87299e.md) | 34 | `declaration-track:cd05e92ac9c4514f1b87299ee45e4b77ac69575ee96212817e22da2d2a28b845` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/declarations/instance--78bfa7022aa25c2cfd002b17.md) | 44 | `declaration-track:78bfa7022aa25c2cfd002b17c53dd0cc3f26b4dff2c47253abd971db3f8f8867` |
| 3 | `theorem` | [coe_mk](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/declarations/coe-mk--38a24e1283433433f91f7950.md) | 48 | `result-track:38a24e1283433433f91f7950a1cb3cedeaa0d9e830bceae4f3b137fa8010e269` |
| 4 | `theorem` | [continuous](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/declarations/continuous--8d1694fe87b16bdc6e00f5df.md) | 55 | `result-track:8d1694fe87b16bdc6e00f5df588ed5502ab362c585fe6d4a3708153e2beac6f5` |
| 5 | `theorem` | [hasCompactSupport](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/declarations/hascompactsupport--d67ee0e02266b61309ffeea1.md) | 59 | `result-track:d67ee0e02266b61309ffeea1fa3dc11351bed3b7495e8016aa542606b7649483` |
| 6 | `theorem` | [integrable](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/declarations/integrable--750274361d9e50e2c88a0e3b.md) | 64 | `result-track:750274361d9e50e2c88a0e3b10f42bacdc8fe2562e79932e7b51621fae460c55` |
| 7 | `theorem` | [locallyIntegrable](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/declarations/locallyintegrable--7e975969e11941a5aeef0a7b.md) | 68 | `result-track:7e975969e11941a5aeef0a7b644541ffccd54568a07cf00a74454d9b99e7d6cd` |
| 8 | `def` | [star](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/declarations/star--6278dfb438a18131bd7dd9f8.md) | 74 | `declaration-track:6278dfb438a18131bd7dd9f8a3ad751a112b2d899642bcbfc5f9a61ac4169f78` |
| 9 | `theorem` | [star_apply](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/declarations/star-apply--fce297dc009ad6ca319f5366.md) | 95 | `result-track:fce297dc009ad6ca319f5366eb3eaa1dcf31a2aea59c194fac56bfed96c58a01` |
| 10 | `theorem` | [star_supportRadius](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/declarations/star-supportradius--a32f60e7c1b6f88e95b9828f.md) | 100 | `result-track:a32f60e7c1b6f88e95b9828f18779f48b8e5157b3ac6a685bb8bcec5b0279330` |
| 11 | `theorem` | [star_star_apply](../../../../mathematics/Analysis/TestFunctions/Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989.lean/declarations/star-star-apply--0d9f17f4b41b2f6a8af7d4fb.md) | 105 | `result-track:0d9f17f4b41b2f6a8af7d4fb82f82a1dd1e829ef6d49b065b39257229773b5fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
