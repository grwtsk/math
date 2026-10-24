# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.LocalForms.Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "865c5e40b7269db7f8432b94cb1e844fe269a4c7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `865c5e40b7269db7f8432b94cb1e844fe269a4c7`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Geometry` — import line 6; external provider; requires a separately pinned dependency.
- `Reduction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [d4ReducedCartan](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/declarations/d4reducedcartan--744ff7c3a46b2e5062f5acc0.md) | 22 | `declaration-track:744ff7c3a46b2e5062f5acc09b2df1c192e123003d86e094802b22be4cd7724c` |
| 2 | `def` | [e8ReducedCartan](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/declarations/e8reducedcartan--477d5e4f278a9867007a9c3a.md) | 26 | `declaration-track:477d5e4f278a9867007a9c3a692fd315debe1ba230c256d7d0159d772b458714` |
| 3 | `theorem` | [d4_reduced_determinant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/declarations/d4-reduced-determinant--85dd706dd1cbf61507fa24c7.md) | 29 | `result-track:85dd706dd1cbf61507fa24c73f838e519c8139587e85d4f6c4da97f3dac8db7c` |
| 4 | `theorem` | [e8_reduced_determinant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/declarations/e8-reduced-determinant--eb386daa771f64c5214e0780.md) | 34 | `result-track:eb386daa771f64c5214e0780c73bb22e203bd8c8e492da8dd6918b2f553f1982` |
| 5 | `theorem` | [d4_reduced_form_unit_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/declarations/d4-reduced-form-unit-iff--38b94ad9fd64e875140eb5fe.md) | 39 | `result-track:38b94ad9fd64e875140eb5fe0925d78f977662a3e67d1def57848c9a80c6e51b` |
| 6 | `theorem` | [e8_reduced_form_unit](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/declarations/e8-reduced-form-unit--d7fb7c75e3a37fe1969a00bc.md) | 44 | `result-track:d7fb7c75e3a37fe1969a00bceff8caaf3a74b65118d9a178c245ffe776194182` |
| 7 | `theorem` | [d4_reduced_form_at_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/declarations/d4-reduced-form-at-two--c562bb24c3e51b0725204bb7.md) | 51 | `result-track:c562bb24c3e51b0725204bb7bb64b977694b3faf31bfb6085deb16c5c4b204eb` |
| 8 | `theorem` | [d4_prime_power_form_unit_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/declarations/d4-prime-power-form-unit-iff--8fdf89e09a3f6d1aad3cd789.md) | 55 | `result-track:8fdf89e09a3f6d1aad3cd78938d8eaddd3bc4309deea71b47472c279c9c722c5` |
| 9 | `theorem` | [d4_prime_power_form_unit_iff_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LocalForms/Variantd2a433e5ff21dc4228a897756e1e15ebdc188ec2196ffbbed4150bb96d10996f.lean/declarations/d4-prime-power-form-unit-iff-odd--c6ae916a5ebbbac1ae01c1dc.md) | 61 | `result-track:c6ae916a5ebbbac1ae01c1dc9bf3d4fedd693523f6a28a9e5cc9538fb4608bbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
