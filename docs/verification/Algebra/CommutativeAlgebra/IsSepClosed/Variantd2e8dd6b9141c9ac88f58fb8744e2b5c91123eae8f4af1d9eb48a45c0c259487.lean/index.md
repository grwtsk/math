# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IsSepClosed.Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaca2e6c87623eb57e3f5e1947a679a35d12f894",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaca2e6c87623eb57e3f5e1947a679a35d12f894`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSepClosed](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/issepclosed--d631fca9d36cc7c77820e054.md) | 60 | `declaration-track:d631fca9d36cc7c77820e05453e914322756b5f2fb037ecee5bde780db03bed2` |
| 2 | `theorem` | [IsSepClosed.splits_codomain](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/issepclosed-splits-codomain--30696cd55a7c4d2a0984e52e.md) | 70 | `result-track:30696cd55a7c4d2a0984e52e0caeac1178d12381ff98569c6adf09bbf1b6fa6b` |
| 3 | `theorem` | [IsSepClosed.splits_domain](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/issepclosed-splits-domain--3841b2d88e6c3e16b495bf3f.md) | 79 | `result-track:3841b2d88e6c3e16b495bf3f8f13c2f231c12ed2f32f07df530157d379d8ce54` |
| 4 | `theorem` | [exists_root](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/exists-root--0195c2a51de4fa3bba266f8b.md) | 85 | `result-track:0195c2a51de4fa3bba266f8bff2227f908d45836dfcb84211769a7f843481c1d` |
| 5 | `theorem` | [exists_pow_nat_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/exists-pow-nat-eq--1fcd46f59c356bb86c53b038.md) | 89 | `result-track:1fcd46f59c356bb86c53b038e32f2c5d38f9f618b5cb77d90af76a82553d15ae` |
| 6 | `theorem` | [exists_eq_mul_self](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/exists-eq-mul-self--9f425f97fe6abaf98cc37d5d.md) | 103 | `result-track:9f425f97fe6abaf98cc37d5d7fba6b2f2ab8ef73e5956930dde4559911410fa7` |
| 7 | `theorem` | [roots_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/roots-eq-zero-iff--c6b5d129bd3583a76275ef12.md) | 107 | `result-track:c6b5d129bd3583a76275ef12f3f0e6d935c2edae0e1624488383de81837cfc25` |
| 8 | `theorem` | [exists_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/exists-eval-eq-zero--b87a7f1ae86750c552d6e2eb.md) | 116 | `result-track:b87a7f1ae86750c552d6e2eb00b5505793b322135dde4b09a5f1f81c1752954a` |
| 9 | `theorem` | [exists_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/exists-aeval-eq-zero--286fb03b8bbd0860230188bc.md) | 125 | `result-track:286fb03b8bbd0860230188bc1328b5f19f693c3a4cfbf12f84cd94f0f1875b38` |
| 10 | `theorem` | [of_exists_root](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/of-exists-root--4c1539579850259fffbbe08e.md) | 129 | `result-track:4c1539579850259fffbbe08e29308c94a7e72ed0b3bd03bc129f384ef0abf1c4` |
| 11 | `theorem` | [degree_eq_one_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/degree-eq-one-of-irreducible--dfecfb31cea6c0e061c15815.md) | 145 | `result-track:dfecfb31cea6c0e061c158153f0f7ad745cfa0b95212d6563b4a565903d30d5f` |
| 12 | `theorem` | [algebraMap_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/algebramap-surjective--15ba7eb70a17bc534f93f05a.md) | 151 | `result-track:15ba7eb70a17bc534f93f05a096320169f93ad662bc3b1fca452cc2246b1806a` |
| 13 | `class` | [IsSepClosure](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/issepclosure--9ac888e41c60936b00933ba7.md) | 169 | `declaration-track:9ac888e41c60936b00933ba77a9cb5496be2f9fc1820cc0340cd6fb0b0238a98` |
| 14 | `theorem` | [isSepClosure_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/issepclosure-iff--da6bbf4bf66d911fb3f8e853.md) | 175 | `result-track:da6bbf4bf66d911fb3f8e853ec6132acc6ee688a022224639294a674eb0875a5` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/declarations/instance--568f48d3860804c995b70bf5.md) | 179 | `declaration-track:568f48d3860804c995b70bf551b38a800077b802e229b55e04cdd25c83b80ece` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
