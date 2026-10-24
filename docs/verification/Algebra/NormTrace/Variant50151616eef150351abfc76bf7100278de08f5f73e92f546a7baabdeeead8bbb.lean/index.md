# Verification target: GRWTSK.Algebra.NormTrace.Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "875ae934807ff0db96bc12f07888d7aa55b897e3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean/index.md) · [Full source](../../../../mathematics/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `875ae934807ff0db96bc12f07888d7aa55b897e3`.

Source path: `GRWTSK/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Discriminant` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Algebra.map_leftMulMatrix_localization](../../../../mathematics/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean/declarations/algebra-map-leftmulmatrix-localization--568837c2b3400164b2914262.md) | 56 | `result-track:568837c2b3400164b2914262297c977e01b0e18f6993c0b7442a148787d8cf74` |
| 2 | `theorem` | [Algebra.norm_localization](../../../../mathematics/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean/declarations/algebra-norm-localization--ca7782247aeccbe36776cb39.md) | 67 | `result-track:ca7782247aeccbe36776cb39926270ee53cc3dde95f1b886fe854ae70603a06a` |
| 3 | `lemma` | [Algebra.norm_eq_iff](../../../../mathematics/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean/declarations/algebra-norm-eq-iff--5bc544497e23133eebe5ac99.md) | 79 | `result-track:5bc544497e23133eebe5ac997a71ad1fcd904d37ace053a272b122b52b539734` |
| 4 | `theorem` | [Algebra.trace_localization](../../../../mathematics/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean/declarations/algebra-trace-localization--ae89b06d014d65a8699635a6.md) | 88 | `result-track:ae89b06d014d65a8699635a6a4c01dced90dc569ab833a75cd0a65c70b5fb9dc` |
| 5 | `theorem` | [Algebra.traceMatrix_localizationLocalization](../../../../mathematics/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean/declarations/algebra-tracematrix-localizationlocalization--3378a32ccaf4cf045dbad44f.md) | 106 | `result-track:3378a32ccaf4cf045dbad44f0109215750db5504d5d712bb8e2221f5f98ea0f3` |
| 6 | `theorem` | [Algebra.discr_localizationLocalization](../../../../mathematics/Algebra/NormTrace/Variant50151616eef150351abfc76bf7100278de08f5f73e92f546a7baabdeeead8bbb.lean/declarations/algebra-discr-localizationlocalization--2f207be238bf3b2c84b01bbd.md) | 120 | `result-track:2f207be238bf3b2c84b01bbdba2c88ccd54132771eb3e6d430497ae7224a2a2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
