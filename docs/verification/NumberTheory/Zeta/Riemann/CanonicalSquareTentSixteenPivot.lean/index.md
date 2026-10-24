# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenPivot

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a43ff15fae6628b6f57324576d7b4aed4c0b6a25",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a43ff15fae6628b6f57324576d7b4aed4c0b6a25`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictRatioBridge`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentStrictRatioBridge.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sixteenPivot](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean/declarations/sixteenpivot--0ca2c94b2fd20e22dcd4a518.md) | 28 | `declaration-track:0ca2c94b2fd20e22dcd4a518f334a529c88d68461be02f81b9c96601487aef92` |
| 2 | `def` | [stageThreeSixteenGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean/declarations/stagethreesixteengap--4a145187f2aad6364de0b923.md) | 30 | `declaration-track:4a145187f2aad6364de0b9232bf990f775a8f03c8a245458ac45adef8647d33c` |
| 3 | `def` | [stageFourSixteenGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean/declarations/stagefoursixteengap--95ee7a42893ea058bca1be10.md) | 33 | `declaration-track:95ee7a42893ea058bca1be103e8b2fb36118e7bff72a47426b5f8aadfd362c23` |
| 4 | `theorem` | [stageThreeSixteenGap_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean/declarations/stagethreesixteengap-pos--4642cec40ae0ddb52caacf35.md) | 38 | `result-track:4642cec40ae0ddb52caacf35e7770e2c3cbbb79f8970a205ef11567e110c23bc` |
| 5 | `theorem` | [stageFourSixteenGap_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean/declarations/stagefoursixteengap-pos--8d79cb68932b01672786856c.md) | 59 | `result-track:8d79cb68932b01672786856c1a44fc49d80ea59feb8651681bcf5ebd4c8af75e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
