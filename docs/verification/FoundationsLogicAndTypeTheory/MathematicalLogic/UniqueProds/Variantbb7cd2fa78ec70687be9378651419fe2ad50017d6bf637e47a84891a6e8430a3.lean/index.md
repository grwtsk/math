# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UniqueProds.Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f1c178292fea844f8c1f47dddd63a29de85728e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f1c178292fea844f8c1f47dddd63a29de85728e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Preimage` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniqueMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/uniquemul--45319e99a86ad8c4c5fddf5f.md) | 56 | `declaration-track:45319e99a86ad8c4c5fddf5f182c3b6421cc6afdb69ed5eb7244a41153bd8345` |
| 2 | `theorem` | [mt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/mt--d23db90b5c95966ee294eda3.md) | 65 | `result-track:d23db90b5c95966ee294eda34bba3f27ebccd1f71546906791e87f7b81cb2381` |
| 3 | `theorem` | [subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/subsingleton--6d5fdb9862497ea38a36a1fc.md) | 72 | `result-track:6d5fdb9862497ea38a36a1fc9ef0ff37fd53bbe776eaddf81b46c53ab7391fb6` |
| 4 | `theorem` | [set_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/set-subsingleton--df1ba899e4ae634441c3e921.md) | 82 | `result-track:df1ba899e4ae634441c3e92187be5a139dc610c8148028aa2e5d4e8f2a784edc` |
| 5 | `theorem` | [iff_existsUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/iff-existsunique--e5d7b11a44290d3c8dd6bdd4.md) | 95 | `result-track:e5d7b11a44290d3c8dd6bdd481109d64a255672cdb113c7e924c5eea35a7a2a3` |
| 6 | `theorem` | [exists_iff_exists_existsUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/exists-iff-exists-existsunique--e00c0f11cea924b3968b9860.md) | 109 | `result-track:e00c0f11cea924b3968b9860f3ddc63186623cee5d2e65cd8d8762c5454a3102` |
| 7 | `theorem` | [mulHom_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/mulhom-preimage--a429bca2fd87b4f8e0ca218e.md) | 122 | `result-track:a429bca2fd87b4f8e0ca218e7c9cff6014acf7ca8e72eb8b31ffdae7531f7037` |
| 8 | `theorem` | [mulHom_image_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/mulhom-image-iff--438dd53c67c26de7ead2001d.md) | 139 | `result-track:438dd53c67c26de7ead2001d7d9e061dcfefc8691cc948c19fce8e19b2e3ebcd` |
| 9 | `theorem` | [mulHom_map_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/mulhom-map-iff--f1cc983b264326d6cef650af.md) | 159 | `result-track:f1cc983b264326d6cef650af75a142a970f5bcde4781a79bc0e4999965863d17` |
| 10 | `class` | [UniqueSums](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/uniquesums--74406a9802b533525f62886b.md) | 173 | `declaration-track:74406a9802b533525f62886bac49e76d518ce65d28c4a8edcc753f0575938ec0` |
| 11 | `class` | [UniqueProds](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/uniqueprods--6f3c0653710314e94d62bcc7.md) | 183 | `declaration-track:6f3c0653710314e94d62bcc7c9a3787ad09be0153c98fd6870a073d5631dc236` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/instance--4db54dcb2160b2502f3e0d0b.md) | 194 | `declaration-track:4db54dcb2160b2502f3e0d0b59eb530d823b11bea2328a646e654fd885b20a78` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/instance--a017685edc57ec2cdd98e590.md) | 201 | `declaration-track:a017685edc57ec2cdd98e590a9002a9e7f1ee75964ef1cf52b0d0df47607fc6b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/declarations/instance--ec67dfaadc2e1f5b3feffb0e.md) | 212 | `declaration-track:ec67dfaadc2e1f5b3feffb0e7f7c1db9f357c37f0d242eb105ad86fbfb146077` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
