# Verification target: GRWTSK.Algebra.UniversalAlgebra.Rat.Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75dc61c255c91f70c22ebf491404e8e289503b41",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75dc61c255c91f70c22ebf491404e8e289503b41`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Rat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toRatAlgHom](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3.lean/declarations/toratalghom--945a9098428538ffa9b39499.md) | 21 | `declaration-track:945a9098428538ffa9b39499b24b9a7a44a24b984a05958a66fcd35fe41625bd` |
| 2 | `theorem` | [toRatAlgHom_toRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3.lean/declarations/toratalghom-toringhom--555800cd1d60ada5eaa88a51.md) | 25 | `result-track:555800cd1d60ada5eaa88a51407d9aeb31b786fc3e075b399358583005e9dc77` |
| 3 | `theorem` | [toRatAlgHom_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3.lean/declarations/toratalghom-apply--f99870562f1bbed4e80119d6.md) | 30 | `result-track:f99870562f1bbed4e80119d6f508cacb83f69d8bdf80013982111956fe1e1f94` |
| 4 | `theorem` | [AlgHom.toRingHom_toRatAlgHom](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3.lean/declarations/alghom-toringhom-toratalghom--8a8e128ff81540e61d65da16.md) | 41 | `result-track:8a8e128ff81540e61d65da163596fccd6b89d29595d67415cf58d104a219a215` |
| 5 | `def` | [RingHom.equivRatAlgHom](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3.lean/declarations/ringhom-equivratalghom--4f26e528a387b6354e97b8f9.md) | 47 | `declaration-track:4f26e528a387b6354e97b8f93331460529f2423530713f9a097f2edb509a3e50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
