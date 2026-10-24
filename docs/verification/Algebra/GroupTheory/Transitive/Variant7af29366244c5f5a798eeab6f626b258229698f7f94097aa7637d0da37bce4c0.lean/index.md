# Verification target: GRWTSK.Algebra.GroupTheory.Transitive.Variant7af29366244c5f5a798eeab6f626b258229698f7f94097aa7637d0da37bce4c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94bfbce91d9f6c8e654021e5a091e34ab44b3fb8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Transitive/Variant7af29366244c5f5a798eeab6f626b258229698f7f94097aa7637d0da37bce4c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Transitive/Variant7af29366244c5f5a798eeab6f626b258229698f7f94097aa7637d0da37bce4c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Transitive/Variant7af29366244c5f5a798eeab6f626b258229698f7f94097aa7637d0da37bce4c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94bfbce91d9f6c8e654021e5a091e34ab44b3fb8`.

Source path: `GRWTSK/Algebra/GroupTheory/Transitive/Variant7af29366244c5f5a798eeab6f626b258229698f7f94097aa7637d0da37bce4c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Transitive/Variant7af29366244c5f5a798eeab6f626b258229698f7f94097aa7637d0da37bce4c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isPretransitive_iff_base](../../../../../mathematics/Algebra/GroupTheory/Transitive/Variant7af29366244c5f5a798eeab6f626b258229698f7f94097aa7637d0da37bce4c0.lean/declarations/ispretransitive-iff-base--ed15ed6e6b49be4e3d2f8046.md) | 39 | `result-track:ed15ed6e6b49be4e3d2f80467084693a9fdf52b7c9fe11ee2fa1e88804de779d` |
| 2 | `theorem` | [isPretransitive_iff_orbit_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Transitive/Variant7af29366244c5f5a798eeab6f626b258229698f7f94097aa7637d0da37bce4c0.lean/declarations/ispretransitive-iff-orbit-eq-univ--99c9179cac2ecdcc31fdc8c8.md) | 50 | `result-track:99c9179cac2ecdcc31fdc8c857e0915b3676768df87a94e2464249d26057baf2` |
| 3 | `theorem` | [IsPretransitive.of_surjective_map](../../../../../mathematics/Algebra/GroupTheory/Transitive/Variant7af29366244c5f5a798eeab6f626b258229698f7f94097aa7637d0da37bce4c0.lean/declarations/ispretransitive-of-surjective-map--32bd8432b2d37662fcef9dae.md) | 60 | `result-track:32bd8432b2d37662fcef9daeeae2938f15b2b430ae3a63e762567bfabd4a6fd8` |
| 4 | `theorem` | [isPretransitive_congr](../../../../../mathematics/Algebra/GroupTheory/Transitive/Variant7af29366244c5f5a798eeab6f626b258229698f7f94097aa7637d0da37bce4c0.lean/declarations/ispretransitive-congr--8d28908925e9531be4bd6014.md) | 71 | `result-track:8d28908925e9531be4bd601458db31cd8b44620266350df242c511b5a11428eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
