# Verification target: GRWTSK.Algebra.Tower.Variant9197553bec0aa9cc4facec52c051620060471048970f4806b01497713578c99c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e241af1f4d1eeec6e5acfc56269af459bf5a273",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Tower/Variant9197553bec0aa9cc4facec52c051620060471048970f4806b01497713578c99c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Tower/Variant9197553bec0aa9cc4facec52c051620060471048970f4806b01497713578c99c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Tower/Variant9197553bec0aa9cc4facec52c051620060471048970f4806b01497713578c99c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e241af1f4d1eeec6e5acfc56269af459bf5a273`.

Source path: `GRWTSK/Algebra/Tower/Variant9197553bec0aa9cc4facec52c051620060471048970f4806b01497713578c99c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Tower/Variant9197553bec0aa9cc4facec52c051620060471048970f4806b01497713578c99c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Adjoin.FG` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjoin_restrictScalars](../../../../mathematics/Algebra/Tower/Variant9197553bec0aa9cc4facec52c051620060471048970f4806b01497713578c99c.lean/declarations/adjoin-restrictscalars--0951d635b76fec9a2ab28680.md) | 28 | `result-track:0951d635b76fec9a2ab28680190379e7301a727c96ef53c327d795e1444cd761` |
| 2 | `theorem` | [adjoin_res_eq_adjoin_res](../../../../mathematics/Algebra/Tower/Variant9197553bec0aa9cc4facec52c051620060471048970f4806b01497713578c99c.lean/declarations/adjoin-res-eq-adjoin-res--d5675604cf449db821efc87e.md) | 46 | `result-track:d5675604cf449db821efc87e05070afac8065a247894693047f363f58aa59f99` |
| 3 | `theorem` | [Algebra.fg_trans'](../../../../mathematics/Algebra/Tower/Variant9197553bec0aa9cc4facec52c051620060471048970f4806b01497713578c99c.lean/declarations/algebra-fg-trans--60cac50bebd34b083854b838.md) | 61 | `result-track:60cac50bebd34b083854b838d72d7ffde2342d29474bdc8af9c30d238ca50788` |
| 4 | `theorem` | [exists_subalgebra_of_fg](../../../../mathematics/Algebra/Tower/Variant9197553bec0aa9cc4facec52c051620060471048970f4806b01497713578c99c.lean/declarations/exists-subalgebra-of-fg--64eddfb75ef83b6e9c638ba9.md) | 87 | `result-track:64eddfb75ef83b6e9c638ba94461bb2000fcec9c636dc768d559cee5f90846e5` |
| 5 | `theorem` | [fg_of_fg_of_fg](../../../../mathematics/Algebra/Tower/Variant9197553bec0aa9cc4facec52c051620060471048970f4806b01497713578c99c.lean/declarations/fg-of-fg-of-fg--a2e091659a25c1d152f43dd8.md) | 146 | `result-track:a2e091659a25c1d152f43dd85477e43d6ac0cb4cb33ee1d7a8bd9e0a16c05469` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
