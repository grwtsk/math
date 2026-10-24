# Verification target: GRWTSK.Algebra.Congruence.Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f3de6fcc20e7c6a6e062bf6725ade6980ad3d4f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f3de6fcc20e7c6a6e062bf6725ade6980ad3d4f`.

Source path: `GRWTSK/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/algebra--d95563a393b48186e1a0e647.md) | 32 | `declaration-track:d95563a393b48186e1a0e647859a0a91a63c7fec3222421179c2ad0bebb1e3ab` |
| 2 | `def` | [Compatible](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/compatible--be70c1c3fdb673922934ce54.md) | 41 | `declaration-track:be70c1c3fdb673922934ce54d8564133707e7e459da599c5839e02e02fcc1a73` |
| 3 | `def` | [Congruence](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/congruence--8e3bb1934eb5f77d9c97e88f.md) | 46 | `declaration-track:8e3bb1934eb5f77d9c97e88fba0e1e126a4b270db687ffc44c10909169ad13fa` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/instance--56bc39e794c726c7fd86ac4a.md) | 49 | `declaration-track:56bc39e794c726c7fd86ac4aa55aa94f8fbf35985c34997ed5cf26097cfd68b3` |
| 5 | `def` | [Representable](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/representable--a18ef81ad8722df84f656bfd.md) | 53 | `declaration-track:a18ef81ad8722df84f656bfd2e652c67eb4afe958e0f3f0ee531cc7b4b47b826` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/instance--ba5b82ad958f7455e00fd527.md) | 56 | `declaration-track:ba5b82ad958f7455e00fd527b713045ff18474cc5c3c71700d508f15e591ddc5` |
| 7 | `theorem` | [ext](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/ext--47d7619fb78b7a091bbc100c.md) | 64 | `result-track:47d7619fb78b7a091bbc100cbc46813c5d29dec96de321cce8c8c9aa2907b8ad` |
| 8 | `theorem` | [refl](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/refl--cfa1ca4cfe5a0c712f8d8f7c.md) | 68 | `result-track:cfa1ca4cfe5a0c712f8d8f7ced25d69050955ce109926b16eb053f5cc917f1b3` |
| 9 | `theorem` | [symm](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/symm--288c85d9f949ee0c34384500.md) | 70 | `result-track:288c85d9f949ee0c343845003699eba091f2d46a37142ff45709d9e91aac9354` |
| 10 | `theorem` | [trans](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/trans--03d1ee4b40ec7caa45990a1e.md) | 73 | `result-track:03d1ee4b40ec7caa45990a1ebce3b2a41388b3406da92bac1dc095b6821099be` |
| 11 | `theorem` | [compatible](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/compatible--bed3fb56bff05b18196adcb8.md) | 77 | `result-track:bed3fb56bff05b18196adcb89ecf5df0b480116c121c7b8f1024ff9f57757ed7` |
| 12 | `def` | [equality](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/equality--50c5d7077df8405124d4336e.md) | 83 | `declaration-track:50c5d7077df8405124d4336e04d1273e31a76a154e4d9d359be199f4a4ca5574` |
| 13 | `theorem` | [equality_apply](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/equality-apply--2c7ba48b9757ae956094e73f.md) | 90 | `result-track:2c7ba48b9757ae956094e73f93a502a38e09c3c9b1a08809c4a4447481a356b7` |
| 14 | `theorem` | [equality_le](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/equality-le--32f0887c78a0db27de112817.md) | 93 | `result-track:32f0887c78a0db27de112817418d08052483e6e39f67e42524d2fbbb14764e11` |
| 15 | `def` | [principal](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/principal--69c85aaa25c22f8176637f6c.md) | 99 | `declaration-track:69c85aaa25c22f8176637f6c2b7a0ed31ca542a02413ae7b3bda860e31bfeac5` |
| 16 | `theorem` | [principal_pair](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/principal-pair--ad3b583d9d36d141c59870c0.md) | 108 | `result-track:ad3b583d9d36d141c59870c00edb73cfac6b8dfa955de922b60cd216fcd86906` |
| 17 | `theorem` | [principal_le](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/principal-le--c7193ab9d1bb888bdb949da8.md) | 111 | `result-track:c7193ab9d1bb888bdb949da8abd780a2285234d5562eb81e5dec5f3f38505991` |
| 18 | `theorem` | [principal_comm](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/principal-comm--be6a3dd986ec99911af4febe.md) | 119 | `result-track:be6a3dd986ec99911af4febeb6589d5b48594626d16f63bfd527d01767aab0bf` |
| 19 | `theorem` | [relation_map_of_updates](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/relation-map-of-updates--931f70014178cf25c1ed7598.md) | 129 | `result-track:931f70014178cf25c1ed759854a6a1cf0bde244927fcdd1318d2cf25da621d5b` |
| 20 | `def` | [translation](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/translation--4fb31d100a968869e952b152.md) | 156 | `declaration-track:4fb31d100a968869e952b1524a5bcf18b91976892f2aa4a373193693eed0c433` |
| 21 | `theorem` | [translation_preserves](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/translation-preserves--9122e43d6fb4d385f904b3c9.md) | 161 | `result-track:9122e43d6fb4d385f904b3c9e9ddf4d421dd4328996b9b9fecc06f9b5e947ec2` |
| 22 | `theorem` | [compatible_iff_translations](../../../../mathematics/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/declarations/compatible-iff-translations--776dce2f2ffdc2030505d86e.md) | 172 | `result-track:776dce2f2ffdc2030505d86ec7b1823205c8aa45d108f2fbf06449c0898f1889` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
