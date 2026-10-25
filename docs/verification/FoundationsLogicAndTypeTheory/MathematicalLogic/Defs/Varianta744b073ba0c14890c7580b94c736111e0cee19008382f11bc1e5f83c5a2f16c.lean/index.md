# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "891f91462a9cd1c58a67a93199599e02e6c35f25",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `891f91462a9cd1c58a67a93199599e02e6c35f25`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CharZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/charzero--5466b0c4f5fb7d5b28a626f1.md) | 38 | `declaration-track:5466b0c4f5fb7d5b28a626f1f542f9e19f6e3a44d997682a641294a614da43b1` |
| 2 | `theorem` | [charZero_of_inj_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/charzero-of-inj-zero--291dc77dc453bf0d47355bf5.md) | 45 | `result-track:291dc77dc453bf0d47355bf5f63735298f4a149c71cb6005132c2a0e7b61fa8d` |
| 3 | `theorem` | [cast_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/cast-injective--237d6cf4a7980ff6dee43f9f.md) | 59 | `result-track:237d6cf4a7980ff6dee43f9fcffbcc4b3e28f135020c8982baaf80280bef78ca` |
| 4 | `theorem` | [cast_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/cast-inj--9db61464eb2e88c1ded135f3.md) | 63 | `result-track:9db61464eb2e88c1ded135f3b4b2018ada2821b1e8cc5efcfb3f237311e164d1` |
| 5 | `theorem` | [cast_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/cast-eq-zero--73a977118bab594dc2fc302f.md) | 67 | `result-track:73a977118bab594dc2fc302f77e9b94591b3c291d0ca087b4c7121918c152829` |
| 6 | `theorem` | [cast_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/cast-ne-zero--9a335cdfe9cce657edb8ebb4.md) | 70 | `result-track:9a335cdfe9cce657edb8ebb408d26abbc716a53998184848d5f6cb9f34ed741e` |
| 7 | `theorem` | [cast_add_one_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/cast-add-one-ne-zero--aef654cda0faf5c79ba6e64b.md) | 73 | `result-track:aef654cda0faf5c79ba6e64b43bcc95452dde984376d2656123326ff35138b76` |
| 8 | `theorem` | [cast_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/cast-eq-one--3e9042f46dff0e3adc23309b.md) | 77 | `result-track:3e9042f46dff0e3adc23309bd4d2d18e033369c358a74afab04842b9fc514c7f` |
| 9 | `theorem` | [cast_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/cast-ne-one--e0067d3fdc589bd037fcc02b.md) | 80 | `result-track:e0067d3fdc589bd037fcc02bdc68a3fff5a631865afab99bd679fac1ebab001d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/instance--f60785020fc536b6ce9b8fbd.md) | 83 | `declaration-track:f60785020fc536b6ce9b8fbd7d3cc4337f7a56b779a96d805fdb38475a235389` |
| 11 | `lemma` | [ofNat_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/ofnat-ne-zero--e49e4a7aed05c1c3c84a7f11.md) | 92 | `result-track:e49e4a7aed05c1c3c84a7f11be0b2593e30a3c864cd7e1f7142106abf801a897` |
| 12 | `lemma` | [zero_ne_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/zero-ne-ofnat--fbd96758b44232337b803c27.md) | 95 | `result-track:fbd96758b44232337b803c277d36b81df52cbfb88428fe5aba1ca9c9d1c2a49b` |
| 13 | `lemma` | [ofNat_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/ofnat-ne-one--887f4a60b8df9743c77ab9ce.md) | 98 | `result-track:887f4a60b8df9743c77ab9ce5cf0b62438c75cc2993ce5779b3361093334aae1` |
| 14 | `lemma` | [one_ne_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/one-ne-ofnat--1541b44948747f099b93fe2f.md) | 101 | `result-track:1541b44948747f099b93fe2f23177ae02fb9d7f942df82743b8c70e0ebb28ff3` |
| 15 | `lemma` | [ofNat_eq_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/ofnat-eq-ofnat--54f888b1fa0d4396fb3ac069.md) | 104 | `result-track:54f888b1fa0d4396fb3ac06966d3be380ea451dc3060fe99cc1698d97f55653d` |
| 16 | `instance` | [charZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/charzero--e4fc32624e69d38816cb6512.md) | 112 | `declaration-track:e4fc32624e69d38816cb651213ba86bcdf278fb15031a892b3e629f877f06714` |
| 17 | `instance` | [charZero_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/charzero-one--e3f23b8cd34e3ee18eb6545b.md) | 115 | `declaration-track:e3f23b8cd34e3ee18eb6545b0974312d074a42a64ccb06e93fbf6696c55f0f33` |
| 18 | `instance` | [charZero_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta744b073ba0c14890c7580b94c736111e0cee19008382f11bc1e5f83c5a2f16c.lean/declarations/charzero-ofnat--4c03a2b14d9dfafaee3821e7.md) | 120 | `declaration-track:4c03a2b14d9dfafaee3821e7c72f9767c33e5e75e9d4e145c38dafebcc203e78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
