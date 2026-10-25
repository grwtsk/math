# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitwise.Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eceaea4b4f74b64883de3c9b62752472c9775cb",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eceaea4b4f74b64883de3c9b62752472c9775cb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Int.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Bitwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [div2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/div2--8709ea003bdbc1a5d18b42d5.md) | 23 | `declaration-track:8709ea003bdbc1a5d18b42d514ad45cae562e05bb280c0f5c89c301ab744e234` |
| 2 | `def` | [bodd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/bodd--e238d7a4bc9c85db479b62f2.md) | 29 | `declaration-track:e238d7a4bc9c85db479b62f227dcbc304b0c7f4e115668334a1917f677d450b1` |
| 3 | `def` | [bit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/bit--712dd89bf1193a7bc00b5770.md) | 38 | `declaration-track:712dd89bf1193a7bc00b5770fbb51b3ad377fc6f737983c822b900f481dd7742` |
| 4 | `def` | [testBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/testbit--57aa9805570566cc75309430.md) | 43 | `declaration-track:57aa9805570566cc7530943009afe1fb72b7b1e565333fc61e825158405756e6` |
| 5 | `def` | [natBitwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/natbitwise--2aaaa77f7a6a96ef64a4bcfc.md) | 49 | `declaration-track:2aaaa77f7a6a96ef64a4bcfcc4ff8ef771f79b54c9a687ebbbfb3308357a3dff` |
| 6 | `def` | [bitwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/bitwise--96f73f854a5cb5f1864b800a.md) | 55 | `declaration-track:96f73f854a5cb5f1864b800a2fae7d30acf55cd2fc8c105326cffb1c113c1378` |
| 7 | `def` | [lnot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/lnot--3719b31d73ad407f512a2097.md) | 63 | `declaration-track:3719b31d73ad407f512a2097f5242615c8059f0f1e362c7b9bc27bad065e14d0` |
| 8 | `def` | [lor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/lor--7fd56d9e4b1b397c2b5d442c.md) | 69 | `declaration-track:7fd56d9e4b1b397c2b5d442c1583ec7c677ba57540dce771195c611bb5c55a64` |
| 9 | `def` | [land](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/land--584c6275cdc3098d9dfe93d4.md) | 77 | `declaration-track:584c6275cdc3098d9dfe93d46be25bd323ebd331645b62cc43314b55ac683ea4` |
| 10 | `def` | [ldiff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/ldiff--c6b86154883bfe5662e5906e.md) | 88 | `declaration-track:c6b86154883bfe5662e5906eac5460ff2f587ab2f957fdbd30ab6f553169b4ee` |
| 11 | `def` | [lxor'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/lxor--629d48e2feeadb0ba71b27e6.md) | 97 | `declaration-track:629d48e2feeadb0ba71b27e637708b587d0fd45529634c042c195cdf1144502b` |
| 12 | `def` | [shiftl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/shiftl--0c73515242b1e86b601f8845.md) | 106 | `declaration-track:0c73515242b1e86b601f88450a525dceaced9f2ea1971ef63b952d365ad5d550` |
| 13 | `def` | [shiftr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variante9c14df6626ebce53e87db70d4909b8a5eb1d1fd147985dbacca4ded455cf325.lean/declarations/shiftr--d58dbe68e81781d31a9b187a.md) | 115 | `declaration-track:d58dbe68e81781d31a9b187a710074ace63e67301a15fa11e666762a28bb1108` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
