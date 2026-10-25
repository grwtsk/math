# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prime.Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be12f0e31793f4e96beb8f9d7231eee69d1fe893",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be12f0e31793f4e96beb8f9d7231eee69d1fe893`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_prime_mul_of_ble](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/not-prime-mul-of-ble--ae7b61766a6105479094c77b.md) | 31 | `result-track:ae7b61766a6105479094c77bfb7b229f6a69f1c0cf9b25a43dbdbf334265bb31` |
| 2 | `def` | [deriveNotPrime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/derivenotprime--2ccffaf0b42ac462c1be2688.md) | 37 | `declaration-track:2ccffaf0b42ac462c1be26886a0f923d9bf147170081999d72ccaa8efb92b008` |
| 3 | `def` | [MinFacHelper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/minfachelper--90e21d965cbc90b457e68072.md) | 45 | `declaration-track:90e21d965cbc90b457e680722c35d3c7c0a45e52faa1ac8f74a03ce626349921` |
| 4 | `theorem` | [MinFacHelper.one_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/minfachelper-one-lt--3f09a15f8021a4c379065989.md) | 48 | `result-track:3f09a15f8021a4c37906598973ccb6e035ffade5f3ce2f05f68f906235f19eff` |
| 5 | `theorem` | [minFacHelper_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/minfachelper-0--7e750f7a89a96a515e56ec22.md) | 56 | `result-track:7e750f7a89a96a515e56ec227525e2679398c3987f0ecb66a369fe3ae540b651` |
| 6 | `theorem` | [minFacHelper_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/minfachelper-1--5364e58acf5cb586f19a2a3a.md) | 65 | `result-track:5364e58acf5cb586f19a2a3a7fe212112c56919e7439fd7cad08284f0e582e8f` |
| 7 | `theorem` | [minFacHelper_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/minfachelper-2--034d0b1524f2745f575e3531.md) | 82 | `result-track:034d0b1524f2745f575e353170a556a560c0d93b38e5614f0b6c26c7c4b639ce` |
| 8 | `theorem` | [minFacHelper_3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/minfachelper-3--749c90d1d57f0a336be246f4.md) | 88 | `result-track:749c90d1d57f0a336be246f40dd124b11aceb23ce45a8bd3eba872ca03219b21` |
| 9 | `theorem` | [isNat_minFac_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/isnat-minfac-1--eb41f9cb85d97bc1f456daee.md) | 95 | `result-track:eb41f9cb85d97bc1f456daeee780496009cc08a381040700b83ae9afd4ae2a3f` |
| 10 | `theorem` | [isNat_minFac_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/isnat-minfac-2--d76f43709ac1716170078ef8.md) | 98 | `result-track:d76f43709ac1716170078ef876abeeef4f92e6a95baf33de2da6bef129a80bf8` |
| 11 | `theorem` | [isNat_minFac_3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/isnat-minfac-3--f54f2dca976818df9e44924b.md) | 101 | `result-track:f54f2dca976818df9e44924b40825dc2e0291ac45dc4abbf5cf319bf9403c76d` |
| 12 | `theorem` | [isNat_minFac_4](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/isnat-minfac-4--dbad1b9ce92f6b1da9226ad7.md) | 107 | `result-track:dbad1b9ce92f6b1da9226ad78f9f440d5c47593fdd1bb616100ee4f99569831a` |
| 13 | `def` | [evalMinFac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/evalminfac--598a32e916fc4ae2d719f2d8.md) | 120 | `declaration-track:598a32e916fc4ae2d719f2d83a36cdc2268b95a85c397474c48481b341f5856d` |
| 14 | `theorem` | [isNat_prime_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/isnat-prime-0--a5e6a642f4d6ae17fc9643ba.md) | 165 | `result-track:a5e6a642f4d6ae17fc9643ba9b06340a7a80c0486c49496a93ac8ef79988b62e` |
| 15 | `theorem` | [isNat_prime_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/isnat-prime-1--cd597da5532a1d3b7f7c08de.md) | 168 | `result-track:cd597da5532a1d3b7f7c08deb1f29fc4875a7e58bf706172978889d311a6a9ab` |
| 16 | `theorem` | [isNat_prime_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/isnat-prime-2--48e144d7fd9c65af38ab62cc.md) | 171 | `result-track:48e144d7fd9c65af38ab62cc2505b9047e2d69cd20e60389ed55a0c9e01e15ad` |
| 17 | `theorem` | [isNat_not_prime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/isnat-not-prime--cd38fc4e0214e428174b0b18.md) | 175 | `result-track:cd38fc4e0214e428174b0b183657678fefa82fbdabd3b8b78f3f70e9f3875ed2` |
| 18 | `def` | [evalNatPrime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variantf94fb80a61a746b3b1ef2487f779300f73461d7e19ca16ade62a6ad55dfdcb55.lean/declarations/evalnatprime--4d9b6f81573309d4b42d5e97.md) | 178 | `declaration-track:4d9b6f81573309d4b42d5e9743418802cf3b2039d2a1ea24ebcb21a9b8d125bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
