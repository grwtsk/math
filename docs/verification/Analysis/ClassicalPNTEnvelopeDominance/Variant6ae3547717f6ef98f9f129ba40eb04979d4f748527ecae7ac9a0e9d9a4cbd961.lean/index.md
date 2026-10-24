# Verification target: GRWTSK.Analysis.ClassicalPNTEnvelopeDominance.Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e81a1c9c8f040b0571e0b93e3c7e7d8bc7392b99",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean/index.md) · [Full source](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e81a1c9c8f040b0571e0b93e3c7e7d8bc7392b99`.

Source path: `GRWTSK/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [envelope](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean/declarations/envelope--20b49a6f349be5ef4148e7b8.md) | 23 | `declaration-track:20b49a6f349be5ef4148e7b8609f13a0e0daa48a2d51d6ec33decb05cc758bd1` |
| 2 | `def` | [entrance](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean/declarations/entrance--93b0c14b89b7099ac22d1090.md) | 28 | `declaration-track:93b0c14b89b7099ac22d1090d41cd7e4ca46b5d0dba9f891948d861fc0256f30` |
| 3 | `theorem` | [classical_pnt_envelope_dominates_quarter_power](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean/declarations/classical-pnt-envelope-dominates-quarter-power--6dbd03ce0d0053e0345de191.md) | 30 | `result-track:6dbd03ce0d0053e0345de191edcdf3c9a5873728557768fb98af6dbfb23c4e43` |
| 4 | `theorem` | [full_source_window_has_quarter_envelope](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean/declarations/full-source-window-has-quarter-envelope--76f02a925079a13dfe630508.md) | 43 | `result-track:76f02a925079a13dfe6305088438e80ccb3c5db19d7c575acfd6822244d3139a` |
| 5 | `theorem` | [classical_source_window_payment_integrable](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean/declarations/classical-source-window-payment-integrable--2f82bd439c11369bf86a7762.md) | 59 | `result-track:2f82bd439c11369bf86a7762bc4f564603ae3d3853885379d60ce751b9c826fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
