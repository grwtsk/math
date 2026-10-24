# Verification target: GRWTSK.Algebra.Primitive.Variantb77ff7884768eb9c27fb5274e7487089be637cb40fd956676ae61b275d635627

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1031797c5c5949aa208e984530621345729960e7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Primitive/Variantb77ff7884768eb9c27fb5274e7487089be637cb40fd956676ae61b275d635627.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Primitive/Variantb77ff7884768eb9c27fb5274e7487089be637cb40fd956676ae61b275d635627.lean/index.md) · [Full source](../../../../mathematics/Algebra/Primitive/Variantb77ff7884768eb9c27fb5274e7487089be637cb40fd956676ae61b275d635627.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1031797c5c5949aa208e984530621345729960e7`.

Source path: `GRWTSK/Algebra/Primitive/Variantb77ff7884768eb9c27fb5274e7487089be637cb40fd956676ae61b275d635627.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Primitive/Variantb77ff7884768eb9c27fb5274e7487089be637cb40fd956676ae61b275d635627.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsPrimitiveElem](../../../../mathematics/Algebra/Primitive/Variantb77ff7884768eb9c27fb5274e7487089be637cb40fd956676ae61b275d635627.lean/declarations/isprimitiveelem--8ec12a070b06a03ae37a3319.md) | 46 | `declaration-track:8ec12a070b06a03ae37a3319aec9ef8043f120d148aca75b91e56ce8f73f5216` |
| 2 | `lemma` | [IsPrimitiveElem.ne_one](../../../../mathematics/Algebra/Primitive/Variantb77ff7884768eb9c27fb5274e7487089be637cb40fd956676ae61b275d635627.lean/declarations/isprimitiveelem-ne-one--1c9678a2b3165ecaaf5231cf.md) | 48 | `result-track:1c9678a2b3165ecaaf5231cf4f78e25d6e16f20e4065fb74b45f0dcc8b63362d` |
| 3 | `lemma` | [counit_eq_zero_of_comul_eq_tmul_add_tmul](../../../../mathematics/Algebra/Primitive/Variantb77ff7884768eb9c27fb5274e7487089be637cb40fd956676ae61b275d635627.lean/declarations/counit-eq-zero-of-comul-eq-tmul-add-tmul--d852eedd56a4eecc7c536ee1.md) | 54 | `result-track:d852eedd56a4eecc7c536ee19b11e11ed351636529832e10f5f89204c7bef949` |
| 4 | `lemma` | [isPrimitiveElem_iff_comul_eq_tmul_add_tmul](../../../../mathematics/Algebra/Primitive/Variantb77ff7884768eb9c27fb5274e7487089be637cb40fd956676ae61b275d635627.lean/declarations/isprimitiveelem-iff-comul-eq-tmul-add-tmul--1b87e6c27184dc3f42670f3f.md) | 58 | `result-track:1b87e6c27184dc3f42670f3f0acfcacebca0048638ec82f4745e07da74645d51` |
| 5 | `lemma` | [IsPrimitiveElem.commutator](../../../../mathematics/Algebra/Primitive/Variantb77ff7884768eb9c27fb5274e7487089be637cb40fd956676ae61b275d635627.lean/declarations/isprimitiveelem-commutator--5f21a73db3c46be49e6e745e.md) | 68 | `result-track:5f21a73db3c46be49e6e745e3286247acf95734b2800eb305093bbc015593d46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
