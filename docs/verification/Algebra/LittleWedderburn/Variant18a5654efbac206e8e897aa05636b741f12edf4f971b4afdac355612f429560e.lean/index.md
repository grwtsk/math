# Verification target: GRWTSK.Algebra.LittleWedderburn.Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f08adb7eb45251c7e6e2c19efe4a0c716f818da6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean/index.md) · [Full source](../../../../mathematics/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f08adb7eb45251c7e6e2c19efe4a0c716f818da6`.

Source path: `GRWTSK/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Center` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.ClassEquation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Eval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InductionHyp](../../../../mathematics/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean/declarations/inductionhyp--d0f5d17355bd141169ca9d63.md) | 50 | `declaration-track:d0f5d17355bd141169ca9d634ac64845745194bf5ff9d7eb2c6a847f51e85615` |
| 2 | `def` | [field](../../../../mathematics/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean/declarations/field--a1006ecd199de4f23c784269.md) | 60 | `declaration-track:a1006ecd199de4f23c78426985769ddb126f23fb465a7197bab840024114a85b` |
| 3 | `theorem` | [center_eq_top](../../../../mathematics/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean/declarations/center-eq-top--f3a993285ffd7ff157a7843d.md) | 68 | `result-track:f3a993285ffd7ff157a7843ddf965c05c09d0596686aa8d87716280b022fde5d` |
| 4 | `theorem` | [center_eq_top](../../../../mathematics/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean/declarations/center-eq-top--8133e2533260349f686eb9d9.md) | 145 | `result-track:8133e2533260349f686eb9d9d5511e3ae04d7d730285130a3979b58cf900a4f2` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean/declarations/instance--7f6e0816e6eae187742619b0.md) | 169 | `declaration-track:7f6e0816e6eae187742619b0c4998dc0e7a2d1cbb67fe0b620feb36904c38241` |
| 6 | `theorem` | [Finite.isDomain_to_isField](../../../../mathematics/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean/declarations/finite-isdomain-to-isfield--3ecb6326f084a8b93dc105cc.md) | 176 | `result-track:3ecb6326f084a8b93dc105ccf628fc7034de178823473dec352b65dd82273954` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
