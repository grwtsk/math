# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Basic.Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "046735e86bfe2ce428e65359e8af076b3cd38a0e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `046735e86bfe2ce428e65359e8af076b3cd38a0e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Opposite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Quiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/quiver--c2afb67f158527bbff836da7.md) | 48 | `declaration-track:c2afb67f158527bbff836da792d2cec5b7d4f06a9379ad49c02cc5a3bb2fc5a1` |
| 2 | `instance` | [opposite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/opposite--1ac2f1055f5cafb769ece1c2.md) | 61 | `declaration-track:1ac2f1055f5cafb769ece1c2bf16d2bb5739366335edb7ff496c0988072deddd` |
| 3 | `def` | [Hom.op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/hom-op--8797930f097c910511295085.md) | 65 | `declaration-track:8797930f097c91051129508527ef4ee18f86b9db2f305df23e9e4c8d6233809a` |
| 4 | `def` | [Hom.unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/hom-unop--5ae1a16f4f39f2c8ba93ad04.md) | 68 | `declaration-track:5ae1a16f4f39f2c8ba93ad04eec4f1d45b12919d01ddfd729d732b23a1f41583` |
| 5 | `def` | [Hom.opEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/hom-opequiv--da02bcebacac3ca6497a5974.md) | 72 | `declaration-track:da02bcebacac3ca6497a5974714b0b17774f42a3568785540105a5a7f1b44c9a` |
| 6 | `def` | [Empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/empty--e75ce6d5e3a72362564c20fa.md) | 80 | `declaration-track:e75ce6d5e3a72362564c20fa35210fbe74e560997abfc5ebb8f6257602117875` |
| 7 | `instance` | [emptyQuiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/emptyquiver--82d6323423fe372045563da1.md) | 82 | `declaration-track:82d6323423fe372045563da19966215a14fddd01505e5b221191aaacc4a64870` |
| 8 | `theorem` | [empty_arrow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/empty-arrow--a95ced2280c1680b1aca1a0c.md) | 85 | `result-track:a95ced2280c1680b1aca1a0ca29083aed95d4384d4ff26623812e220b3f37bf7` |
| 9 | `abbrev` | [IsThin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/isthin--64c9f6c5895ea212f6876edc.md) | 88 | `declaration-track:64c9f6c5895ea212f6876edcaf2c65487ee02243c6b785de85c574ddd07bb34c` |
| 10 | `def` | [homOfEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/homofeq--4820e1b3bc5518c82fc48924.md) | 97 | `declaration-track:4820e1b3bc5518c82fc48924f829284269d356154e681f48b5fc65051bc9c726` |
| 11 | `lemma` | [homOfEq_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/homofeq-trans--8d3c33f7f23c3446f9961ebf.md) | 102 | `result-track:8d3c33f7f23c3446f9961ebf9c8ae697fce0e7d327e917a6f2fc32b4517a2a3f` |
| 12 | `lemma` | [homOfEq_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/homofeq-injective--50198f2370c2df4ba5392175.md) | 108 | `result-track:50198f2370c2df4ba5392175074cb37cab61d9f0e40960333acaa10e5a3294a7` |
| 13 | `lemma` | [homOfEq_rfl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/homofeq-rfl--459e723479ac472c8ad2b01e.md) | 114 | `result-track:459e723479ac472c8ad2b01ea284b557e1e4c11d530ce97ddef31028bed2bd65` |
| 14 | `lemma` | [heq_of_homOfEq_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/heq-of-homofeq-ext--3818d5266be409db29a85bfa.md) | 116 | `result-track:3818d5266be409db29a85bfafd672506450744aac2e2a254a13a222df58344e1` |
| 15 | `lemma` | [homOfEq_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/homofeq-eq-iff--0149ab71334fad6497b92eb4.md) | 122 | `result-track:0149ab71334fad6497b92eb48069b066fad063ca737772a07de0375b3027291e` |
| 16 | `lemma` | [eq_homOfEq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/eq-homofeq-iff--b86121389074ff1e1e781fdc.md) | 127 | `result-track:b86121389074ff1e1e781fdc8884204ed3f705ee78d07d8b07cf33db54e23a00` |
| 17 | `lemma` | [homOfEq_heq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/homofeq-heq--4e95793c74d550c33d11a072.md) | 132 | `result-track:4e95793c74d550c33d11a072bfd5d2d74dcee52a29d2793a329fe5b9112d1fc0` |
| 18 | `lemma` | [homOfEq_heq_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/homofeq-heq-left-iff--a9bd92b15007b587c8cd6ea2.md) | 136 | `result-track:a9bd92b15007b587c8cd6ea202bc92b1839d065c5890e8924995772b23138965` |
| 19 | `lemma` | [homOfEq_heq_right_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant21513d44dff24b4cbcdac952532725b1a3a1d1cb4a7652bbce55a967aac97189.lean/declarations/homofeq-heq-right-iff--9e7b223d9663e9d78d9c7771.md) | 141 | `result-track:9e7b223d9663e9d78d9c77710396a6ebd78b55dad8bbbf5181bea571f2a4389b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
