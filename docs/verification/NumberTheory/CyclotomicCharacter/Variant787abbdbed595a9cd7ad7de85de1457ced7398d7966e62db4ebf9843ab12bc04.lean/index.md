# Verification target: GRWTSK.NumberTheory.CyclotomicCharacter.Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2dbed4def5f1337c517242792bb4c73a54f9169",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2dbed4def5f1337c517242792bb4c73a54f9169`.

Source path: `GRWTSK/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Aut` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.RingHoms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Minpoly` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.KrullTopology` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rootsOfUnity.integer_power_of_ringEquiv](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/rootsofunity-integer-power-of-ringequiv--d7212f406664b4b1ef0aa447.md) | 85 | `result-track:d7212f406664b4b1ef0aa447a5f9fdf8a7e0b78adbb7dbb66b8f54f6d0f13905` |
| 2 | `theorem` | [rootsOfUnity.integer_power_of_ringEquiv'](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/rootsofunity-integer-power-of-ringequiv--3afc0d7104c796731c8a4afe.md) | 90 | `result-track:3afc0d7104c796731c8a4afe1c7b204467cb668d8fbb9712cc99362b6543cc1a` |
| 3 | `def` | [modularCyclotomicCharacter.aux](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/modularcyclotomiccharacter-aux--792a3188dbf752424b862c47.md) | 97 | `declaration-track:792a3188dbf752424b862c47d71d9d19a6fdc7f0a112a1cb2f25248ef7aa796a` |
| 4 | `theorem` | [modularCyclotomicCharacter.aux_spec](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/modularcyclotomiccharacter-aux-spec--fb00f56e1ddb50d0d6c257dc.md) | 101 | `result-track:fb00f56e1ddb50d0d6c257dcbdb0c41788d49e7b4bf6d192bb56e506a514dcf2` |
| 5 | `theorem` | [modularCyclotomicCharacter.pow_dvd_aux_pow_sub_aux_pow](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/modularcyclotomiccharacter-pow-dvd-aux-pow-sub-aux-pow--85eb0b02822414a9bacfd798.md) | 105 | `result-track:85eb0b02822414a9bacfd7988e0fe2ab18a6e36a49959773dc0e0b875d1495fc` |
| 6 | `def` | [modularCyclotomicCharacter.toFun](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/modularcyclotomiccharacter-tofun--29855fa21b108c5da6024758.md) | 127 | `declaration-track:29855fa21b108c5da602475820a51a9657a8782e3a5b68a4e545115f3eec31ae` |
| 7 | `theorem` | [toFun_spec](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/tofun-spec--1161a9411b826463cdf81395.md) | 136 | `result-track:1161a9411b826463cdf81395f9f7208e21d2aa183cadc686015d1e1b2fc9507e` |
| 8 | `theorem` | [toFun_spec'](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/tofun-spec--ba48f77aea4631cdb377364f.md) | 143 | `result-track:ba48f77aea4631cdb377364f32b495e56e1d3c4070cc1e16d2fbe8a93741b326` |
| 9 | `theorem` | [toFun_spec''](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/tofun-spec--e882dfd0a5cb5376cda62cf4.md) | 147 | `result-track:e882dfd0a5cb5376cda62cf464f4e45f6069e3d6ec9ce7db5d16a62c57189195` |
| 10 | `theorem` | [toFun_unique](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/tofun-unique--132dbdc647aaf90e0e47c1a3.md) | 152 | `result-track:132dbdc647aaf90e0e47c1a379ba0cd416c39d07923e32827e1e737d870b1efd` |
| 11 | `theorem` | [toFun_unique'](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/tofun-unique--bdb62e0bf4303782b347789b.md) | 159 | `result-track:bdb62e0bf4303782b347789b94d0b6c872b18bc8c8f2e9caa72516ab1cb728f8` |
| 12 | `lemma` | [id](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/id--b3eb9a9bfd7046cb49c10973.md) | 163 | `result-track:b3eb9a9bfd7046cb49c1097395b1ae43189033ed6dcbca54058fc605a7a12bcd` |
| 13 | `lemma` | [comp](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/comp--89b19a69f78e42077b8761e8.md) | 173 | `result-track:89b19a69f78e42077b8761e8422db18423027f7451bca655a3f178aacfceaa21` |
| 14 | `def` | [modularCyclotomicCharacter'](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/modularcyclotomiccharacter--1e931a31df60561b3d35b0d0.md) | 194 | `declaration-track:1e931a31df60561b3d35b0d04b20a5bc661cacf8ad38a0b6618869c6b6256785` |
| 15 | `lemma` | [modularCyclotomicCharacter'.spec'](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/modularcyclotomiccharacter-spec--a1743d85a92584ded89314c3.md) | 200 | `result-track:a1743d85a92584ded89314c310618e98ecd0a1a96537ec80e09d6b29c04a9efc` |
| 16 | `lemma` | [modularCyclotomicCharacter'.unique'](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/modularcyclotomiccharacter-unique--c138a93afcfde9782c222060.md) | 205 | `result-track:c138a93afcfde9782c222060ef9c5513535b2fdf2d79e1121d7927069e595ec8` |
| 17 | `def` | [modularCyclotomicCharacter](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/modularcyclotomiccharacter--e84e904c3c162ccfac431fbb.md) | 216 | `declaration-track:e84e904c3c162ccfac431fbba27ca542bdbe385f3732afd9b843c7b728009ee3` |
| 18 | `lemma` | [spec](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/spec--3691429b6895579ed2899c16.md) | 226 | `result-track:3691429b6895579ed2899c16a7f19652640801bf54a971fc2274ca8e31d8c4c3` |
| 19 | `lemma` | [unique](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/unique--9fedd8f12e0b8c564b02abb0.md) | 232 | `result-track:9fedd8f12e0b8c564b02abb097e2017ea257cd2bed88c5752af9ba05d13ec0c3` |
| 20 | `lemma` | [IsPrimitiveRoot.autToPow_eq_modularCyclotomicCharacter](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/isprimitiveroot-auttopow-eq-modularcyclotomiccharacter--8246f7bda5182ed56dd02f76.md) | 246 | `result-track:8246f7bda5182ed56dd02f76cc5e9199f97ff0356c71c6d573f5c0db9a8bce40` |
| 21 | `def` | [cyclotomicCharacter.toFun](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/cyclotomiccharacter-tofun--4fe00c0f4a4d0f12bf486046.md) | 267 | `declaration-track:4fe00c0f4a4d0f12bf486046d0b2dfadb136cfa12402f5b14c2e0fa43cf6cdaa` |
| 22 | `theorem` | [toFun_apply](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/tofun-apply--741c992a17a2f29e12019e4d.md) | 281 | `result-track:741c992a17a2f29e12019e4d1eb7c793d0a9a4f6919b5b413b4b055014a35966` |
| 23 | `theorem` | [toZModPow_toFun](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/tozmodpow-tofun--00c580d1c4cd5b9b32fe1c20.md) | 288 | `result-track:00c580d1c4cd5b9b32fe1c20291a206db5e107ee938ca7b5134ec7c6c0c11cdb` |
| 24 | `theorem` | [toFun_spec](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/tofun-spec--a59740be8a1f56c40cc1e595.md) | 297 | `result-track:a59740be8a1f56c40cc1e5958bcdf26cfdf642f9b3ef2f4be764db12721f27f3` |
| 25 | `def` | [cyclotomicCharacter](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/cyclotomiccharacter--1815c3201a0338442fe69e55.md) | 311 | `declaration-track:1815c3201a0338442fe69e5535f203dd6b1d00082326ae9a642bb316231d08a4` |
| 26 | `theorem` | [cyclotomicCharacter.spec](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/cyclotomiccharacter-spec--91b57b6b3d9a1af465e69ddd.md) | 327 | `result-track:91b57b6b3d9a1af465e69dddf3aa1f883cee020053427aaa1d8a0b35f4b1c475` |
| 27 | `theorem` | [cyclotomicCharacter.toZModPow](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/cyclotomiccharacter-tozmodpow--c06243188091920b4345cbf8.md) | 332 | `result-track:c06243188091920b4345cbf828a20ab7a387c53424ac0ff68a52abdae2447f4d` |
| 28 | `lemma` | [cyclotomicCharacter.continuous](../../../../mathematics/NumberTheory/CyclotomicCharacter/Variant787abbdbed595a9cd7ad7de85de1457ced7398d7966e62db4ebf9843ab12bc04.lean/declarations/cyclotomiccharacter-continuous--4f0c5cd2fbfdad0b3b169823.md) | 340 | `result-track:4f0c5cd2fbfdad0b3b169823b5cc397b7541336fa3fd3bf9d3b1fd0c65ee2a36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
