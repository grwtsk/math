# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.TransportRoundtrip.Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f3bfa54be5c62aa5db26a9c8f1174e91fac8041",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f3bfa54be5c62aa5db26a9c8f1174e91fac8041`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Monodromy.CatalanTransport` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.RodgersTaoEulerTransport` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [catalan_expand_contract_roundtrip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34.lean/declarations/catalan-expand-contract-roundtrip--b11c3000d5dbaf31fa78b46c.md) | 21 | `result-track:b11c3000d5dbaf31fa78b46cd91768ef8f6c004729c3ecc6cc9da562c2ada1de` |
| 2 | `theorem` | [catalan_contract_expand_roundtrip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34.lean/declarations/catalan-contract-expand-roundtrip--4f78ea273e8d9ba4caf9d32d.md) | 31 | `result-track:4f78ea273e8d9ba4caf9d32d17eef7245f7148dd462e5f19b9264c4aac43eb92` |
| 3 | `theorem` | [rodgersTao_transport_preserves_euler_characteristic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34.lean/declarations/rodgerstao-transport-preserves-euler-characteristic--60519d85e234ff0ba7d10cc4.md) | 53 | `result-track:60519d85e234ff0ba7d10cc4efe96153261e7c3375703a7187060ac48762adce` |
| 4 | `theorem` | [rodgersTao_transport_is_quasi_isomorphism](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34.lean/declarations/rodgerstao-transport-is-quasi-isomorphism--bd6ca960a9319f4e25ebc8c1.md) | 63 | `result-track:bd6ca960a9319f4e25ebc8c104dc751e97cc517f2c77c3bca1736a1bc2a592a6` |
| 5 | `theorem` | [rodgersTao_index_transport_is_quasi_isomorphism](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34.lean/declarations/rodgerstao-index-transport-is-quasi-isomorphism--bbce581d27e41d0eaa2516ea.md) | 68 | `result-track:bbce581d27e41d0eaa2516ea5bca6760fb0159b2a6eaaa000682b2c989be5a3e` |
| 6 | `theorem` | [rodgersTao_index_transport_preserves_euler](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34.lean/declarations/rodgerstao-index-transport-preserves-euler--d76b552ce171774ed6154a2b.md) | 73 | `result-track:d76b552ce171774ed6154a2b9f71d0a0aac1600eb158512348ce030e57b62399` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
