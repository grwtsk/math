# Verification target: GRWTSK.Algebra.Finset.Variant84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c7b8e9c33dd9825313afd3944dc41588f928101",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finset/Variant84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finset/Variant84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finset/Variant84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c7b8e9c33dd9825313afd3944dc41588f928101`.

Source path: `GRWTSK/Algebra/Finset/Variant84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finset/Variant84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Finset.Scalar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [neg_smul_finset](../../../../mathematics/Algebra/Finset/Variant84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8.lean/declarations/neg-smul-finset--553530b1c947729fbb07c85d.md) | 29 | `result-track:553530b1c947729fbb07c85debb3330b60f8a5b09f520dc9dcd52f2eb94e6292` |
| 2 | `lemma` | [neg_smul](../../../../mathematics/Algebra/Finset/Variant84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8.lean/declarations/neg-smul--dd86b0f724fa0247d5d8b51e.md) | 32 | `result-track:dd86b0f724fa0247d5d8b51ebc27978047f32d66ba3380f067ccd7e89909d65b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
