# Verification target: GRWTSK.Algebra.Quotient.Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3148a4c5343279d170658fd20042219e381079d4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Quotient/Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Quotient/Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Quotient/Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3148a4c5343279d170658fd20042219e381079d4`.

Source path: `GRWTSK/Algebra/Quotient/Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Quotient/Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.OrderOfElement` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Nonunits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_intAlgebraMap_eq_span](../../../../mathematics/Algebra/Quotient/Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2.lean/declarations/ker-intalgebramap-eq-span--02a88565bca965b562354ac5.md) | 20 | `result-track:02a88565bca965b562354ac5f47a6b3963512f6d32b6c0dd3488f5544e4106d0` |
| 2 | `theorem` | [quotient](../../../../mathematics/Algebra/Quotient/Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2.lean/declarations/quotient--97f2c2f7c4135f35729c501b.md) | 26 | `result-track:97f2c2f7c4135f35729c501b54efb249d3ec1e64391dd1bae78e910a988de198` |
| 3 | `theorem` | [quotient'](../../../../mathematics/Algebra/Quotient/Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2.lean/declarations/quotient--4e43242d3919c2e9963c6b57.md) | 41 | `result-track:4e43242d3919c2e9963c6b5710586b297eecf131ca6bae4b2a65f67e369456a4` |
| 4 | `theorem` | [quotient_iff](../../../../mathematics/Algebra/Quotient/Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2.lean/declarations/quotient-iff--33c87c407d1eaef0a2f72a57.md) | 50 | `result-track:33c87c407d1eaef0a2f72a57fe88ce65cd280e62ba2197bf7e41fcfb0a94091b` |
| 5 | `theorem` | [quotient_iff_le_ker_natCast](../../../../mathematics/Algebra/Quotient/Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2.lean/declarations/quotient-iff-le-ker-natcast--3cff4759aa8d78c06afbfc28.md) | 57 | `result-track:3cff4759aa8d78c06afbfc2890344bb979e0dbf07beff12161668e508f49c2a4` |
| 6 | `theorem` | [Ideal.Quotient.index_eq_zero](../../../../mathematics/Algebra/Quotient/Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2.lean/declarations/ideal-quotient-index-eq-zero--13030ba8b076be36ca42aae2.md) | 63 | `result-track:13030ba8b076be36ca42aae25d067623771fc87c4db2559f120b23196bd73b9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
