# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8ad5ef31215afa8c47359f90ab20ce417e66316",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8ad5ef31215afa8c47359f90ab20ce417e66316`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean/declarations/instance--0ce6910cd2fc18147264e387.md) | 51 | `declaration-track:0ce6910cd2fc18147264e3877d5e35ae28ddb0e226034bc76f5263c31e4cd65e` |
| 2 | `theorem` | [iff_map_piEvalRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean/declarations/iff-map-pievalringhom--f24785e591442b3ec8ac8f40.md) | 63 | `result-track:f24785e591442b3ec8ac8f40ef0186a75f2a8342a9cecd9347965cd61793c084` |
| 3 | `lemma` | [isUnit_piRingHom_algebraMap_comp_piEvalRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean/declarations/isunit-piringhom-algebramap-comp-pievalringhom--5b0371b6c4dbe22eb50dc0e5.md) | 78 | `result-track:5b0371b6c4dbe22eb50dc0e5ff19aaafbce4423f284f4bb71edfebe778d50443` |
| 4 | `theorem` | [bijective_lift_piRingHom_algebraMap_comp_piEvalRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean/declarations/bijective-lift-piringhom-algebramap-comp-pievalringhom--c3f19e3f04ebf87d227158f2.md) | 86 | `result-track:c3f19e3f04ebf87d227158f2577b3e0350b17a11a54c479bbc79ac2df85e1499` |
| 5 | `lemma` | [surjective_piRingHom_algebraMap_comp_piEvalRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean/declarations/surjective-piringhom-algebramap-comp-pievalringhom--0b953d92e262ef37a159e6d1.md) | 96 | `result-track:0b953d92e262ef37a159e6d1c7ec0578ce9d39bc51151dbfaec660c223105866` |
| 6 | `lemma` | [algebraMap_pi_surjective_of_isLocalization](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant55264bdbc6e782e1225f916fad7ec459a18cc6784c641b7d0cee218afa15a8c3.lean/declarations/algebramap-pi-surjective-of-islocalization--8b02ca77ab170b173457b82d.md) | 109 | `result-track:8b02ca77ab170b173457b82d3ad165d73e032c1f204589a1c99507ab217ebd0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
