# Verification target: GRWTSK.Algebra.GroupTheory.Membership.Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47cddeb84a27a07f1bf835c07f37792d08f85631",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47cddeb84a27a07f1bf835c07f37792d08f85631`.

Source path: `GRWTSK/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subsemigroup.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_iSup_of_directed](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/declarations/mem-isup-of-directed--7b365d4c53e60bffdb785051.md) | 53 | `result-track:7b365d4c53e60bffdb78505194374bc4d409a9542b4bfc7dc3e73f2b47a5d51d` |
| 2 | `theorem` | [coe_iSup_of_directed](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/declarations/coe-isup-of-directed--8dc3be0ef9b6e6e1b227236d.md) | 64 | `result-track:8dc3be0ef9b6e6e1b227236d776c2be35db6cd5e59093670c31485d25fae7203` |
| 3 | `theorem` | [mem_sSup_of_directed_on](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/declarations/mem-ssup-of-directed-on--b1eeeab7a1797fd58ad6e661.md) | 69 | `result-track:b1eeeab7a1797fd58ad6e6618b786eea447801aaa38d12b334144bce051617df` |
| 4 | `theorem` | [coe_sSup_of_directed_on](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/declarations/coe-ssup-of-directed-on--a7cbe5358ceb06c44b2cd567.md) | 75 | `result-track:a7cbe5358ceb06c44b2cd5672ab05c92835d98457da50fc642626e6656ade646` |
| 5 | `theorem` | [mem_sup_left](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/declarations/mem-sup-left--242083ccda0dc2f649eba8f0.md) | 80 | `result-track:242083ccda0dc2f649eba8f02f107ee8fd0ec437921f1edb57e8b0f9f1cad0e9` |
| 6 | `theorem` | [mem_sup_right](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/declarations/mem-sup-right--90c9d9860522ced5e6753ec6.md) | 85 | `result-track:90c9d9860522ced5e6753ec6355262ab61623d9be3f21a110a33860231a4ba6d` |
| 7 | `theorem` | [mul_mem_sup](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/declarations/mul-mem-sup--0efb14989a4edfd6195af502.md) | 90 | `result-track:0efb14989a4edfd6195af50248a1863e9a3a078facf1a988816f39ba0c6bec62` |
| 8 | `theorem` | [mem_iSup_of_mem](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/declarations/mem-isup-of-mem--ee71b0b1237fed4aff1b33a4.md) | 94 | `result-track:ee71b0b1237fed4aff1b33a4f2be764e6c07ba4ee202d410c2f1da624f8698db` |
| 9 | `theorem` | [mem_sSup_of_mem](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/declarations/mem-ssup-of-mem--a724616f79d5b977ab530edc.md) | 99 | `result-track:a724616f79d5b977ab530edc88f020da5a1cc41f6195730840a1588959875ace` |
| 10 | `theorem` | [iSup_induction](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/declarations/isup-induction--d3fc41eac22dde7e5ac99494.md) | 111 | `result-track:d3fc41eac22dde7e5ac99494dd1c4d596b7371b4ba95eda576461e95841aa146` |
| 11 | `theorem` | [iSup_induction'](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant0eb4c135067e6f4e3cbf736df48c466565702c6f2a798fbd74f8ed6d9b8f96e5.lean/declarations/isup-induction--a73d2671fbcc72ef7a5d05b7.md) | 121 | `result-track:a73d2671fbcc72ef7a5d05b71b5ca30f0ef8f756af5731ac3173f0ef7b35176d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
