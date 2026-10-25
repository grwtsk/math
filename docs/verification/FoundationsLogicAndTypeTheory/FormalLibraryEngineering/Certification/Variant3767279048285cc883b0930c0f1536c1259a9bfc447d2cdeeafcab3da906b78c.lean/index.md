# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certification.Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e001c31023c50eb2d263e37cac38ef4d885c5aa",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e001c31023c50eb2d263e37cac38ef4d885c5aa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertificateFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/certificatefamily--18a6508cd1abcf2ba731d0c8.md) | 23 | `declaration-track:18a6508cd1abcf2ba731d0c8b5e81f4f2185669a963a62e7e9b298e2e6c2a925` |
| 2 | `def` | [Equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/equivalent--0c145a6dc4dc007a778e9fad.md) | 34 | `declaration-track:0c145a6dc4dc007a778e9fad2a7f9d5aeb71814fcedd2aa77be1502aa518bfa4` |
| 3 | `theorem` | [equivalent_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/equivalent-refl--1b6ca6133c166510a91c840a.md) | 37 | `result-track:1b6ca6133c166510a91c840a5c7d1f0e850ff048da210e6a277bc6a6b464cc33` |
| 4 | `theorem` | [equivalent_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/equivalent-symm--2c99c3568809a669b27bf2d9.md) | 41 | `result-track:2c99c3568809a669b27bf2d94fe37af31fbe64910aaf247a970f16b381fbcd3f` |
| 5 | `theorem` | [equivalent_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/equivalent-trans--1097e7f37e08f99d07ffa837.md) | 46 | `result-track:1097e7f37e08f99d07ffa837c6cbf9a87c31d95feeab475ff0baccc6ec8f6647` |
| 6 | `structure` | [SufficientRepresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/sufficientrepresentation--5153ec17593a64fa327127c0.md) | 56 | `declaration-track:5153ec17593a64fa327127c04bb9b8bc2a0798c6573fa52eeee2bb9b2f77c2e9` |
| 7 | `def` | [FactorsThrough](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/factorsthrough--b066213a978d8c49b78f9df4.md) | 68 | `declaration-track:b066213a978d8c49b78f9df48acab70a0fa167de1867aed295ced8c55527c7d0` |
| 8 | `def` | [IsMinimal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/isminimal--4fb7e9c1d8048aeedfe3145a.md) | 73 | `declaration-track:4fb7e9c1d8048aeedfe3145ac28f36490aa04ac9f694c144a20055e29988b3f5` |
| 9 | `theorem` | [equivalent_of_compress_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/equivalent-of-compress-eq--0a4cd4a33226b323d0221918.md) | 76 | `result-track:0a4cd4a33226b323d022191844270c865aa69ed56856c590c05c1378a05307d7` |
| 10 | `theorem` | [factor_of_minimal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/factor-of-minimal--a7de3918b693847adf552fbb.md) | 84 | `result-track:a7de3918b693847adf552fbb9d765f4c2a25e5fd0b67010741b410fe01baf499` |
| 11 | `structure` | [StructuralQuine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/structuralquine--5dbbf5fd03162d42f27bf9c2.md) | 94 | `declaration-track:5dbbf5fd03162d42f27bf9c2dae79b8b2018319649f4827f75a4c93c97ce060d` |
| 12 | `def` | [project](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/project--241ec442b7cfb04f133db64a.md) | 107 | `declaration-track:241ec442b7cfb04f133db64a1aa7b27cd11ce1641e3ff580c1751393b592daa1` |
| 13 | `theorem` | [project_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/project-idempotent--e70d9fdf3619301814035ec8.md) | 110 | `result-track:e70d9fdf3619301814035ec87b6ced94f6778c344afd2dc4e2474a1e04e0566e` |
| 14 | `theorem` | [project_certificate_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/project-certificate-equivalent--f9f95f55920fc0806a9c426b.md) | 115 | `result-track:f9f95f55920fc0806a9c426bf133a98783880d60accfc9e6ede0d97f65c35fae` |
| 15 | `theorem` | [quotient_factors_through](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c.lean/declarations/quotient-factors-through--fe8a84a067f7735db7016445.md) | 119 | `result-track:fe8a84a067f7735db7016445ee4a00bc669649f6ff03390be23b4dc580f69d49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
