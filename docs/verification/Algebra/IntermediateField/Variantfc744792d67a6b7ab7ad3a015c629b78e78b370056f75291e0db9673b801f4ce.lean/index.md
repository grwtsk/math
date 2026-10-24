# Verification target: GRWTSK.Algebra.IntermediateField.Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aae0f452d15cd44a6cc7bc0a728314e1a8280667",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntermediateField/Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntermediateField/Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntermediateField/Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aae0f452d15cd44a6cc7bc0a728314e1a8280667`.

Source path: `GRWTSK/Algebra/IntermediateField/Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntermediateField/Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [charP](../../../../mathematics/Algebra/IntermediateField/Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce.lean/declarations/charp--8961726f7c1383ca677ea6a1.md) | 33 | `declaration-track:8961726f7c1383ca677ea6a151922b656da6e6e748b6b0567ffdbf4036a8fc7a` |
| 2 | `instance` | [expChar](../../../../mathematics/Algebra/IntermediateField/Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce.lean/declarations/expchar--e25a7bc3c0a92c10c1471473.md) | 35 | `declaration-track:e25a7bc3c0a92c10c1471473496d54915e00dc6eccd9fb62201f40a94622981e` |
| 3 | `instance` | [charZero](../../../../mathematics/Algebra/IntermediateField/Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce.lean/declarations/charzero--d65c44b84999fe0c734011f6.md) | 43 | `declaration-track:d65c44b84999fe0c734011f681b9709acca809b743043c7c2d448adaa82912d9` |
| 4 | `instance` | [charP](../../../../mathematics/Algebra/IntermediateField/Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce.lean/declarations/charp--6785e217ec7f9e7955334d70.md) | 46 | `declaration-track:6785e217ec7f9e7955334d704d34263b53bc4f074bc4f729d67473ee60b65a6f` |
| 5 | `instance` | [expChar](../../../../mathematics/Algebra/IntermediateField/Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce.lean/declarations/expchar--d568264f33c1b884b7b4a18e.md) | 49 | `declaration-track:d568264f33c1b884b7b4a18ed62c714b4412221114e47fd8c022789ab77b2875` |
| 6 | `instance` | [charP'](../../../../mathematics/Algebra/IntermediateField/Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce.lean/declarations/charp--e39d5713ba5f66b64e9863c1.md) | 52 | `declaration-track:e39d5713ba5f66b64e9863c10134c2f105990158f47f728e1256758ace62132e` |
| 7 | `instance` | [expChar'](../../../../mathematics/Algebra/IntermediateField/Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce.lean/declarations/expchar--4f89bea98b7fd7155497f386.md) | 54 | `declaration-track:4f89bea98b7fd7155497f3864c4c8738050278c70e34acf246d2cb012fa34c00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
