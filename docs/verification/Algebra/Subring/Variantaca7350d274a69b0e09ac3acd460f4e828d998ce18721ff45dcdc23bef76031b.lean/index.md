# Verification target: GRWTSK.Algebra.Subring.Variantaca7350d274a69b0e09ac3acd460f4e828d998ce18721ff45dcdc23bef76031b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "605b80dd9af056baead0be37610c7e14247001f4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Subring/Variantaca7350d274a69b0e09ac3acd460f4e828d998ce18721ff45dcdc23bef76031b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Subring/Variantaca7350d274a69b0e09ac3acd460f4e828d998ce18721ff45dcdc23bef76031b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Subring/Variantaca7350d274a69b0e09ac3acd460f4e828d998ce18721ff45dcdc23bef76031b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `605b80dd9af056baead0be37610c7e14247001f4`.

Source path: `GRWTSK/Algebra/Subring/Variantaca7350d274a69b0e09ac3acd460f4e828d998ce18721ff45dcdc23bef76031b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Subring/Variantaca7350d274a69b0e09ac3acd460f4e828d998ce18721ff45dcdc23bef76031b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [subsemiring](../../../../mathematics/Algebra/Subring/Variantaca7350d274a69b0e09ac3acd460f4e828d998ce18721ff45dcdc23bef76031b.lean/declarations/subsemiring--12c0a97df7bb9bebd6bddc66.md) | 25 | `declaration-track:12c0a97df7bb9bebd6bddc66d396a8549194038852205c15542972d40695100c` |
| 2 | `instance` | [subring](../../../../mathematics/Algebra/Subring/Variantaca7350d274a69b0e09ac3acd460f4e828d998ce18721ff45dcdc23bef76031b.lean/declarations/subring--52afbc2c419ee690c9818eb8.md) | 33 | `declaration-track:52afbc2c419ee690c9818eb8e71886673c0762e590de7dec27ee0d64d9372d1d` |
| 3 | `instance` | [subring'](../../../../mathematics/Algebra/Subring/Variantaca7350d274a69b0e09ac3acd460f4e828d998ce18721ff45dcdc23bef76031b.lean/declarations/subring--56e9015e1fa3d22b3c3711cd.md) | 40 | `declaration-track:56e9015e1fa3d22b3c3711cd6ec77d0e69f9b022cdd6bad41ff3c61bc7141759` |
| 4 | `theorem` | [charP_center_iff](../../../../mathematics/Algebra/Subring/Variantaca7350d274a69b0e09ac3acd460f4e828d998ce18721ff45dcdc23bef76031b.lean/declarations/charp-center-iff--fc38cd7497dbd641df8d6327.md) | 45 | `result-track:fc38cd7497dbd641df8d632710232d565866eb3d1cc795d24c8661ac61dae8f5` |
| 5 | `theorem` | [expChar_center_iff](../../../../mathematics/Algebra/Subring/Variantaca7350d274a69b0e09ac3acd460f4e828d998ce18721ff45dcdc23bef76031b.lean/declarations/expchar-center-iff--5ff233e2cb026e675d5212e4.md) | 53 | `result-track:5ff233e2cb026e675d5212e47e82b90ea35a598c4635e61e435a57e3cef4ad0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
