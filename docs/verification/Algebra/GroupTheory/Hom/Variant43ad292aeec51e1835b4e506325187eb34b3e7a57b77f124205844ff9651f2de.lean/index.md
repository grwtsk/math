# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "909615b47da556af40f69f93004ab078ba7dd04d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `909615b47da556af40f69f93004ab078ba7dd04d`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddMonoidHom.toMultiplicative](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/declarations/addmonoidhom-tomultiplicative--ede24a0c49ab83cceb36c5bb.md) | 23 | `declaration-track:ede24a0c49ab83cceb36c5bbd8b66733114ad12a8e46161c17812c0352f1cd3b` |
| 2 | `lemma` | [AddMonoidHom.coe_toMultiplicative](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/declarations/addmonoidhom-coe-tomultiplicative--e9eabbf8fad882cb77e8f3f2.md) | 39 | `result-track:e9eabbf8fad882cb77e8f3f23da5d01b5f097c8b9fb4d2b852654d0340a14647` |
| 3 | `def` | [MonoidHom.toAdditive](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/declarations/monoidhom-toadditive--990d3f0dedbf6da7de63940e.md) | 44 | `declaration-track:990d3f0dedbf6da7de63940e46dd2378e814eb1b50b15ad8dde910f76ca871be` |
| 4 | `lemma` | [MonoidHom.coe_toMultiplicative](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/declarations/monoidhom-coe-tomultiplicative--af3693ceaf8e3bf6852b3254.md) | 60 | `result-track:af3693ceaf8e3bf6852b32548f9e0fcd05d9e634c9575794ba49050ec4eb663f` |
| 5 | `def` | [AddMonoidHom.toMultiplicative'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/declarations/addmonoidhom-tomultiplicative--7603e2083904b07ce478ba9b.md) | 65 | `declaration-track:7603e2083904b07ce478ba9b9b1168bd805e153ab62e7f31881166799eba1566` |
| 6 | `lemma` | [AddMonoidHom.coe_toMultiplicative'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/declarations/addmonoidhom-coe-tomultiplicative--324b118719e0a95259e5efe6.md) | 81 | `result-track:324b118719e0a95259e5efe6e77e04760b57b6d67bdd4e2f8121df325227460c` |
| 7 | `def` | [MonoidHom.toAdditive'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/declarations/monoidhom-toadditive--09628a21b9382f4ff6661d4b.md) | 86 | `declaration-track:09628a21b9382f4ff6661d4b7bbd92a9964f9b31ac9ebfe98c1aac9e508e9206` |
| 8 | `lemma` | [MonoidHom.coe_toAdditive'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/declarations/monoidhom-coe-toadditive--6aa425f9b33739a66978f48f.md) | 91 | `result-track:6aa425f9b33739a66978f48fb3f53d8332e057abd10f7a5249eab49d53acacdb` |
| 9 | `def` | [AddMonoidHom.toMultiplicative''](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/declarations/addmonoidhom-tomultiplicative--acbe3aa6ebe20aa5eb73e073.md) | 96 | `declaration-track:acbe3aa6ebe20aa5eb73e07363e7436d4bf7e8ba1dc66581254786bdef53fc7c` |
| 10 | `lemma` | [AddMonoidHom.coe_toMultiplicative''](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/declarations/addmonoidhom-coe-tomultiplicative--561589fdf5ffee602ae2b297.md) | 112 | `result-track:561589fdf5ffee602ae2b2976cd9c80002166dc1a39c6184a98dc475dac0ba3d` |
| 11 | `def` | [MonoidHom.toAdditive''](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/declarations/monoidhom-toadditive--5884ccc6af0e5b7aad0196cd.md) | 117 | `declaration-track:5884ccc6af0e5b7aad0196cd29336b45382ca29cf363c2048f3abf03a0fb9238` |
| 12 | `lemma` | [MonoidHom.coe_toAdditive''](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant43ad292aeec51e1835b4e506325187eb34b3e7a57b77f124205844ff9651f2de.lean/declarations/monoidhom-coe-toadditive--e0dd67040d942e6788c2c4ef.md) | 122 | `result-track:e0dd67040d942e6788c2c4efde129fe124dbc1f7c268d8a7c7f334ef81420019` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
