# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Domain.Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04519630e17d62ebe2627cccb4de8c5111239c71",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04519630e17d62ebe2627cccb4de8c5111239c71`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/declarations/instance--44bbbd63788999c212e59e5a.md) | 33 | `declaration-track:44bbbd63788999c212e59e5afbaf1f31b57987d777b5011392fd870822ccc773` |
| 2 | `lemma` | [natDegree_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/declarations/natdegree-mul--a93b46211b9d3ff8b3eb42b5.md) | 39 | `result-track:a93b46211b9d3ff8b3eb42b5b4168778835ec961f988eb1247934960aa4ec008` |
| 3 | `lemma` | [natDegree_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/declarations/natdegree-smul--76335a88fe879da8341fe33f.md) | 44 | `result-track:76335a88fe879da8341fe33fcf42cb04b038d9310db6f7909c0b1e521bd2ceee` |
| 4 | `lemma` | [natDegree_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/declarations/natdegree-pow--195870d878d80f93a48c8683.md) | 53 | `result-track:195870d878d80f93a48c8683e2d6f35606554c9aad94a2ce5dc794bd3d896d67` |
| 5 | `lemma` | [natDegree_le_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/declarations/natdegree-le-of-dvd--3a2263476ef3598d12bed322.md) | 60 | `result-track:3a2263476ef3598d12bed3226406c384f91a0c93a0eec5cdad20beaf5f2eed48` |
| 6 | `lemma` | [degree_le_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/declarations/degree-le-of-dvd--11816d2607c05c0f81a79373.md) | 65 | `result-track:11816d2607c05c0f81a793734acd8830ddb2c15b0779f11a95d2b4c90951b061` |
| 7 | `lemma` | [eq_zero_of_dvd_of_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/declarations/eq-zero-of-dvd-of-degree-lt--af274b2c562aca932af5dd34.md) | 69 | `result-track:af274b2c562aca932af5dd342d996b44a4ac1c6199d1e483f44533a725940620` |
| 8 | `lemma` | [eq_zero_of_dvd_of_natDegree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/declarations/eq-zero-of-dvd-of-natdegree-lt--96d49cfe1fb932ead2126a51.md) | 73 | `result-track:96d49cfe1fb932ead2126a51c82d078561e505664d584994d8c72c931f9b43b1` |
| 9 | `lemma` | [not_dvd_of_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/declarations/not-dvd-of-degree-lt--947c192d4b1ea6f68a610429.md) | 78 | `result-track:947c192d4b1ea6f68a6104290e4be3bd367fa3a61103cff6c205cd52b2281a21` |
| 10 | `lemma` | [not_dvd_of_natDegree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/declarations/not-dvd-of-natdegree-lt--4ae369013bc65a37a3dc61c6.md) | 82 | `result-track:4ae369013bc65a37a3dc61c694a17d2e0b130077dec6f00950d543e65bbb274f` |
| 11 | `lemma` | [natDegree_sub_eq_of_prod_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/declarations/natdegree-sub-eq-of-prod-eq--5fcadc67ce299aba6142132e.md) | 88 | `result-track:5fcadc67ce299aba6142132e6b77d701b1a81e01b60361e162b5933bfe2d0029` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Domain/Variantfa1e477a698f46e77b56593e4d931cc1e3a3d4410439ba6955267c25dee7f7c0.lean/declarations/instance--6d8c1e9d89b2532c37d2db1c.md) | 101 | `declaration-track:6d8c1e9d89b2532c37d2db1cee929a7e21b682eee74abf83a054ae46482588f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
