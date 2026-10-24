# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Liouville.Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ad45c76504b9a5ca2b8c0b29090de86de38c24f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ad45c76504b9a5ca2b8c0b29090de86de38c24f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_iteratedDeriv_le_of_forall_mem_sphere_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean/declarations/norm-iteratedderiv-le-of-forall-mem-sphere-norm-le--cd9302f943ee3e3082dbee44.md) | 44 | `result-track:cd9302f943ee3e3082dbee44a50a0a05b7ab074177c6e78404aa6bb06baa3522` |
| 2 | `theorem` | [norm_deriv_le_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean/declarations/norm-deriv-le-aux--ebbe8432ca24177d1965f6d1.md) | 66 | `result-track:ebbe8432ca24177d1965f6d11a38ab81ca5fdcb0eca6ed478bd4183228faea2b` |
| 3 | `theorem` | [norm_deriv_le_of_forall_mem_sphere_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean/declarations/norm-deriv-le-of-forall-mem-sphere-norm-le--fcc4dd83fa27d84d2b76dc19.md) | 76 | `result-track:fcc4dd83fa27d84d2b76dc1999fcc95b80f1ff61a938ae3731c4d8a0cfb17ab6` |
| 4 | `theorem` | [liouville_theorem_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean/declarations/liouville-theorem-aux--c2cbde5a10c3262412d4c58c.md) | 92 | `result-track:c2cbde5a10c3262412d4c58c14e073756074e47696c79f6d46bda77e1b62a128` |
| 5 | `theorem` | [apply_eq_apply_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean/declarations/apply-eq-apply-of-bounded--4d13a0be072273e30c413b50.md) | 114 | `result-track:4d13a0be072273e30c413b50b553136b6496e599ed4e8ef9988c25090abcbc20` |
| 6 | `theorem` | [exists_const_forall_eq_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean/declarations/exists-const-forall-eq-of-bounded--5d31d78fa37c1202465f3a32.md) | 123 | `result-track:5d31d78fa37c1202465f3a32d555bf66c2c2985dbc04386bbbff2babe396a811` |
| 7 | `theorem` | [exists_eq_const_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean/declarations/exists-eq-const-of-bounded--746a764ac256cf1cb7a31cac.md) | 128 | `result-track:746a764ac256cf1cb7a31cacd5ceb25cc9fcac5ce75ed1bff81da752a1a3cbdf` |
| 8 | `theorem` | [eq_const_of_tendsto_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean/declarations/eq-const-of-tendsto-cocompact--9b3699e70dbd29cb0fd40b8c.md) | 135 | `result-track:9b3699e70dbd29cb0fd40b8c0506e6108563d45402f6c5b77c9fe791f5c644a3` |
| 9 | `theorem` | [apply_eq_of_tendsto_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantb89f71000f1a70d3813d3a954b2aa2f415c2c1bbe2a456e3f65938b99fe5609c.lean/declarations/apply-eq-of-tendsto-cocompact--2aaf29e7594666b07ac9d2d4.md) | 150 | `result-track:2aaf29e7594666b07ac9d2d4407fa9b551e7c3c1186acacc63b6591050e6bc3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
