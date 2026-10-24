# Verification target: GRWTSK.Algebra.End.Variant3ea3e1b7f2ec893a6aa5c1ce01bb19af2322965208f8fe1a9408febada2fc0dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1566356482d446eef0ae539904cd53629fb40564",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/End/Variant3ea3e1b7f2ec893a6aa5c1ce01bb19af2322965208f8fe1a9408febada2fc0dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/End/Variant3ea3e1b7f2ec893a6aa5c1ce01bb19af2322965208f8fe1a9408febada2fc0dc.lean/index.md) · [Full source](../../../../mathematics/Algebra/End/Variant3ea3e1b7f2ec893a6aa5c1ce01bb19af2322965208f8fe1a9408febada2fc0dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1566356482d446eef0ae539904cd53629fb40564`.

Source path: `GRWTSK/Algebra/End/Variant3ea3e1b7f2ec893a6aa5c1ce01bb19af2322965208f8fe1a9408febada2fc0dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/End/Variant3ea3e1b7f2ec893a6aa5c1ce01bb19af2322965208f8fe1a9408febada2fc0dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.Group` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Aut` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [applyMulSemiringAction](../../../../mathematics/Algebra/End/Variant3ea3e1b7f2ec893a6aa5c1ce01bb19af2322965208f8fe1a9408febada2fc0dc.lean/declarations/applymulsemiringaction--303dadb1bd727110201e1014.md) | 41 | `declaration-track:303dadb1bd727110201e10142e0a7b543ce01b7894e302224386ae0c62588182` |
| 2 | `theorem` | [smul_def](../../../../mathematics/Algebra/End/Variant3ea3e1b7f2ec893a6aa5c1ce01bb19af2322965208f8fe1a9408febada2fc0dc.lean/declarations/smul-def--07f017317d8c0aa88c34cbf3.md) | 52 | `result-track:07f017317d8c0aa88c34cbf36972b10121549dec0e4decdb80552f5266983ad0` |
| 3 | `instance` | [apply_faithfulSMul](../../../../mathematics/Algebra/End/Variant3ea3e1b7f2ec893a6aa5c1ce01bb19af2322965208f8fe1a9408febada2fc0dc.lean/declarations/apply-faithfulsmul--b67d21dcd3e510ded429c7b1.md) | 55 | `declaration-track:b67d21dcd3e510ded429c7b1944289b1ddfc6417ce2f79bc0a5ddebd83fea66d` |
| 4 | `def` | [_root_.GRWTSK.Algebra.SmulDef.Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b.MulSemiringAction.toRingAut](../../../../mathematics/Algebra/End/Variant3ea3e1b7f2ec893a6aa5c1ce01bb19af2322965208f8fe1a9408febada2fc0dc.lean/declarations/root-grwtsk-algebra-smuldef-varianteffb468a89bc2dd03cec3838d8c60dceaa1e0--c6a9dc624c5bf80bf8103cca.md) | 65 | `declaration-track:c6a9dc624c5bf80bf8103cca80acd4114c0eb91900e3fbebeaf1a88fa6d7d423` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
