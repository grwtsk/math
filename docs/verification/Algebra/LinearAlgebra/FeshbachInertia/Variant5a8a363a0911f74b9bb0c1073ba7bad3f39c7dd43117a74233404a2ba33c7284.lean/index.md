# Verification target: GRWTSK.Algebra.LinearAlgebra.FeshbachInertia.Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8cf30f101e6f96162800ba7f92fc06b92ce48ad",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8cf30f101e6f96162800ba7f92fc06b92ce48ad`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachHermitian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Signature` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [assemble](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/declarations/assemble--cbc17f448f33fdf21c1749e5.md) | 36 | `declaration-track:cbc17f448f33fdf21c1749e5b3e200391524e25ee0dec1c40d3d110b310eea7b` |
| 2 | `def` | [fullForm](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/declarations/fullform--b675a56765894a70c1a0121c.md) | 40 | `declaration-track:b675a56765894a70c1a0121c8134fb412e48a6a986500278b3b9f83c8811467c` |
| 3 | `def` | [reducedForm](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/declarations/reducedform--6f2588a753f786c3fab0c658.md) | 45 | `declaration-track:6f2588a753f786c3fab0c658535e0783691173819160cf3a0ecf16cb9cdbf944` |
| 4 | `theorem` | [fullForm_apply](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/declarations/fullform-apply--39dd2f564e0de5b478a72fd0.md) | 50 | `result-track:39dd2f564e0de5b478a72fd073ae0ccf92bd3544c27216fac7640ce0b59d790c` |
| 5 | `theorem` | [reducedForm_apply](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/declarations/reducedform-apply--29406c9b2a7db9a46c89916f.md) | 59 | `result-track:29406c9b2a7db9a46c89916fd0ab1b677735dbdfc3fbb8dec62ea417d6507d58` |
| 6 | `def` | [shear](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/declarations/shear--ebfa12fb2da8495b156b9bc3.md) | 68 | `declaration-track:ebfa12fb2da8495b156b9bc30a2f221743f889641cfabe441c5fd0bb2d5ad952` |
| 7 | `theorem` | [shear_apply](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/declarations/shear-apply--32947eb8af0d982e3f7f20e8.md) | 80 | `result-track:32947eb8af0d982e3f7f20e801b38966d5078d4ca6e6b25a9f051efca7676712` |
| 8 | `def` | [formEquiv](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/declarations/formequiv--2f4c278e15d55d7774169512.md) | 86 | `declaration-track:2f4c278e15d55d7774169512fcbcda5456446a1d2f94ab9f8feb2c4c1f805364` |
| 9 | `theorem` | [sigPos_eq](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/declarations/sigpos-eq--519784860086c7826565965e.md) | 97 | `result-track:519784860086c7826565965e540809356cfba0708545764f674bbabca118d372` |
| 10 | `theorem` | [sigNeg_eq](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/declarations/signeg-eq--cdb51f92248496490334f7b1.md) | 103 | `result-track:cdb51f92248496490334f7b1a777b2dfcb514165a4c1d580588cfee6bcec7aa7` |
| 11 | `theorem` | [radical_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/declarations/radical-finrank-eq--16bdfd009304c4d49f6271f0.md) | 109 | `result-track:16bdfd009304c4d49f6271f094c1a960c2198efc663a1a97b84d67f12081cd89` |
| 12 | `theorem` | [inertia_eq](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284.lean/declarations/inertia-eq--96289f984a21150ec74b7850.md) | 117 | `result-track:96289f984a21150ec74b785013f72a079192198271c4355e67b6c1e4988c05f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
