# Verification target: GRWTSK.Algebra.QuotientRing.Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f33695db8d80def105e1c513f783cd2eaf1ce0ef",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/index.md) · [Full source](../../../../mathematics/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f33695db8d80def105e1c513f783cd2eaf1ce0ef`.

Source path: `GRWTSK/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientSpanNatEquivZMod](../../../../mathematics/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/declarations/quotientspannatequivzmod--9fe45182a4ccbf63eea7ff84.md) | 38 | `declaration-track:9fe45182a4ccbf63eea7ff847cd1c67607987735d870acef7b110ab2d8847743` |
| 2 | `def` | [quotientSpanEquivZMod](../../../../mathematics/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/declarations/quotientspanequivzmod--2d8c96bfc0e566efc8429eba.md) | 44 | `declaration-track:2d8c96bfc0e566efc8429eba377e0cfd72652522322304094077513d3bd694e2` |
| 3 | `theorem` | [quotientSpanNatEquivZMod_comp_Quotient_mk](../../../../mathematics/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/declarations/quotientspannatequivzmod-comp-quotient-mk--d91309ceb27eaa6aa5501471.md) | 48 | `result-track:d91309ceb27eaa6aa550147123f4d148146da4adfede625beeff03a26fe7ccd7` |
| 4 | `theorem` | [quotientSpanNatEquivZMod_comp_castRingHom](../../../../mathematics/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/declarations/quotientspannatequivzmod-comp-castringhom--594f3ce00332fffd731732d6.md) | 53 | `result-track:594f3ce00332fffd731732d611bf5640879a5d7594f2d96d47737b9304dc9b27` |
| 5 | `theorem` | [quotientSpanEquivZMod_comp_Quotient_mk](../../../../mathematics/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/declarations/quotientspanequivzmod-comp-quotient-mk--4e5461f93bbee3f6e9ee0a31.md) | 58 | `result-track:4e5461f93bbee3f6e9ee0a31f218b0246a16f52f4253ba3c86caee61094f919e` |
| 6 | `theorem` | [quotientSpanEquivZMod_comp_castRingHom](../../../../mathematics/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/declarations/quotientspanequivzmod-comp-castringhom--2db2fbaed3d2570157b661c3.md) | 63 | `result-track:2db2fbaed3d2570157b661c326af7e0d61cda5c651070c356ef6b3e1432c96b5` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/declarations/instance--acf688ee559fbac8fa1c7226.md) | 67 | `declaration-track:acf688ee559fbac8fa1c7226c8a1e2fd255f13c8438453b997eee760e84fd0b2` |
| 8 | `def` | [ZMod.prodEquivPi](../../../../mathematics/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/declarations/zmod-prodequivpi--11d6a6f38e08653a228b3c48.md) | 78 | `declaration-track:11d6a6f38e08653a228b3c48ed40fbce0382cae044604f0f4b2737d6de8aadbb` |
| 9 | `theorem` | [ZMod.prodEquivPi_apply](../../../../mathematics/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/declarations/zmod-prodequivpi-apply--e1c082cb73637d670fe121c2.md) | 89 | `result-track:e1c082cb73637d670fe121c2c491ba97799623106892c902e3ed60d4c58982cc` |
| 10 | `def` | [ZMod.equivPi](../../../../mathematics/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/declarations/zmod-equivpi--60aaf4ef1446da91fe4d4808.md) | 96 | `declaration-track:60aaf4ef1446da91fe4d480862e1573d6335e83ee8d8f31a5449b82f8755266a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
