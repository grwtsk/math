# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e3a735f448e80a2ec3654de8cd28ad06184980c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e3a735f448e80a2ec3654de8cd28ad06184980c`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454.lean.json)

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
| 1 | `theorem` | [swap_smul_self_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454.lean/declarations/swap-smul-self-smul--0160264e5a0370dc5a997b4c.md) | 49 | `result-track:0160264e5a0370dc5a997b4ca16ad60b9ebf9d3889fa6571068fa954982b158a` |
| 2 | `theorem` | [swap_smul_involutive](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454.lean/declarations/swap-smul-involutive--345185550d65ceb7e282c92e.md) | 52 | `result-track:345185550d65ceb7e282c92eaf2ddafaed41e65404885d23f0a37fb7e3666036` |
| 3 | `lemma` | [BijOn.perm_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454.lean/declarations/bijon-perm-inv--b4af976a0c767416eb0978de.md) | 63 | `result-track:b4af976a0c767416eb0978de01817b47f4e20d17229a807275ee0f41dcac036a` |
| 4 | `lemma` | [MapsTo.perm_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454.lean/declarations/mapsto-perm-pow--903858e20bafb821e1ee07b2.md) | 65 | `result-track:903858e20bafb821e1ee07b2f0403b21c10593c28cf9b61ecf667a61306d3093` |
| 5 | `lemma` | [SurjOn.perm_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454.lean/declarations/surjon-perm-pow--7d4a146e9f6480a5fa517f05.md) | 67 | `result-track:7d4a146e9f6480a5fa517f0584c98f65d27a8ea1627b1bf12538a22a8b5e1238` |
| 6 | `lemma` | [BijOn.perm_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454.lean/declarations/bijon-perm-pow--2417b718dc1cacf567d5e379.md) | 69 | `result-track:2417b718dc1cacf567d5e37994bf2422c1f6811c83d2c0a2ad4145293999f586` |
| 7 | `lemma` | [BijOn.perm_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd8f7f6c4255e67f7e79fd1da9cef9a15f97aecf07d9973df5bfbd8c8d109b454.lean/declarations/bijon-perm-zpow--cb81dfce0858d7b881b3d5f8.md) | 72 | `result-track:cb81dfce0858d7b881b3d5f81ef4fa3b40a0eef904af8f41e4b4d401f0a5fc17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
