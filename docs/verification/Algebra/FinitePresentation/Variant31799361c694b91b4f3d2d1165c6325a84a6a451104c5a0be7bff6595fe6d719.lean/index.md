# Verification target: GRWTSK.Algebra.FinitePresentation.Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c98dab35ce570eba1bd498d5d551a8cfd0dee71",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/index.md) · [Full source](../../../../mathematics/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c98dab35ce570eba1bd498d5d551a8cfd0dee71`.

Source path: `GRWTSK/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Finiteness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Localization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.FiniteType` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.AdjoinRoot` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finitePresentation_localizationPreserves](../../../../mathematics/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/declarations/finitepresentation-localizationpreserves--4cd76783b0ee7e95db692f95.md) | 26 | `result-track:4cd76783b0ee7e95db692f9544e82208266987c95a909425995cf1af70a55328` |
| 2 | `theorem` | [finitePresentation_stableUnderComposition](../../../../mathematics/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/declarations/finitepresentation-stableundercomposition--96e4268cac70babf78cd5004.md) | 51 | `result-track:96e4268cac70babf78cd5004a969311e1081e2da5d114b75ca9d7c7a63529fa5` |
| 3 | `theorem` | [finitePresentation_holdsForLocalizationAway](../../../../mathematics/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/declarations/finitepresentation-holdsforlocalizationaway--f8626af9c97d977c5cebdd1e.md) | 56 | `result-track:f8626af9c97d977c5cebdd1e8fd4989afe5732bb6c445c183b6695c45b90012a` |
| 4 | `lemma` | [finitePresentation_ofLocalizationSpanTarget_aux](../../../../mathematics/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/declarations/finitepresentation-oflocalizationspantarget-aux--ea2a3824f73fbebdf30e6a5f.md) | 73 | `result-track:ea2a3824f73fbebdf30e6a5f8955d3b3d904224e8d22ab1888e1d584bb47d057` |
| 5 | `theorem` | [finitePresentation_ofLocalizationSpanTarget](../../../../mathematics/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/declarations/finitepresentation-oflocalizationspantarget--fce261beec2ccbdc465f82e0.md) | 92 | `result-track:fce261beec2ccbdc465f82e0ae122a1bce079c85e42ca738aa037e2c779ae459` |
| 6 | `theorem` | [finitePresentation_isLocal](../../../../mathematics/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/declarations/finitepresentation-islocal--9ccff5175a728425ceb2789e.md) | 164 | `result-track:9ccff5175a728425ceb2789e25b86c100d22a6bd06deafb4283a8ee1280691ca` |
| 7 | `theorem` | [finitePresentation_respectsIso](../../../../mathematics/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/declarations/finitepresentation-respectsiso--ff4579fe48fba21b33be34f2.md) | 174 | `result-track:ff4579fe48fba21b33be34f2734df6567bc578cbcde2f24e864ee8922788fe9a` |
| 8 | `theorem` | [finitePresentation_isStableUnderBaseChange](../../../../mathematics/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/declarations/finitepresentation-isstableunderbasechange--0757e03fa48bc38c6c4fabe1.md) | 178 | `result-track:0757e03fa48bc38c6c4fabe16a34b312a7e8faad16a9bd97c7c8ff36c34a0cc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
