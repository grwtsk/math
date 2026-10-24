# Verification target: GRWTSK.Algebra.Pow.Varianta3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec17db5e180285fa5eceac08c2696f04596af440",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pow/Varianta3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pow/Varianta3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pow/Varianta3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec17db5e180285fa5eceac08c2696f04596af440`.

Source path: `GRWTSK/Algebra/Pow/Varianta3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pow/Varianta3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Commute` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_add_mul_le_pow'](../../../../mathematics/Algebra/Pow/Varianta3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd.lean/declarations/one-add-mul-le-pow--6abcc603ede2f26b88973934.md) | 18 | `result-track:6abcc603ede2f26b88973934828c32e8af1b47786ad62705f6ab388e9ab86a0f` |
| 2 | `lemma` | [one_add_mul_le_pow](../../../../mathematics/Algebra/Pow/Varianta3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd.lean/declarations/one-add-mul-le-pow--eeacc9f3cb1a8ff4df659e6f.md) | 43 | `result-track:eeacc9f3cb1a8ff4df659e6ff05466afc66fbec9d63fddb73f9aa8fcec184802` |
| 3 | `lemma` | [one_add_mul_sub_le_pow](../../../../mathematics/Algebra/Pow/Varianta3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd.lean/declarations/one-add-mul-sub-le-pow--7423446c61a3f6219f273ab9.md) | 47 | `result-track:7423446c61a3f6219f273ab9179b368aaa522da5c02dd454cf22ed8cb9bbf200` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
