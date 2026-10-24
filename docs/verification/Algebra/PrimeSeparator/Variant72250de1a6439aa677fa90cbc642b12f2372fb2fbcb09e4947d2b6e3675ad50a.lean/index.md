# Verification target: GRWTSK.Algebra.PrimeSeparator.Variant72250de1a6439aa677fa90cbc642b12f2372fb2fbcb09e4947d2b6e3675ad50a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "973ca5a2ca5b1d74ef77199b4a59853f4177302f",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PrimeSeparator/Variant72250de1a6439aa677fa90cbc642b12f2372fb2fbcb09e4947d2b6e3675ad50a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PrimeSeparator/Variant72250de1a6439aa677fa90cbc642b12f2372fb2fbcb09e4947d2b6e3675ad50a.lean/index.md) · [Full source](../../../../mathematics/Algebra/PrimeSeparator/Variant72250de1a6439aa677fa90cbc642b12f2372fb2fbcb09e4947d2b6e3675ad50a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `973ca5a2ca5b1d74ef77199b4a59853f4177302f`.

Source path: `GRWTSK/Algebra/PrimeSeparator/Variant72250de1a6439aa677fa90cbc642b12f2372fb2fbcb09e4947d2b6e3675ad50a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PrimeSeparator/Variant72250de1a6439aa677fa90cbc642b12f2372fb2fbcb09e4947d2b6e3675ad50a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.PrimeIdeal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Zorn` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mem_ideal_sup_principal](../../../../mathematics/Algebra/PrimeSeparator/Variant72250de1a6439aa677fa90cbc642b12f2372fb2fbcb09e4947d2b6e3675ad50a.lean/declarations/mem-ideal-sup-principal--e1234230ac306ab4e5da064f.md) | 49 | `result-track:e1234230ac306ab4e5da064f1ae38969d5aebd1cded9dba77c42c7c5052dc173` |
| 2 | `theorem` | [prime_ideal_of_disjoint_filter_ideal](../../../../mathematics/Algebra/PrimeSeparator/Variant72250de1a6439aa677fa90cbc642b12f2372fb2fbcb09e4947d2b6e3675ad50a.lean/declarations/prime-ideal-of-disjoint-filter-ideal--153b651b426879ff96bd58df.md) | 53 | `result-track:153b651b426879ff96bd58dffacf925bcf4b784d0b970d9ab1ea875081ce68c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
