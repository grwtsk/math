# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c7f24ded311c2cc5b9208ef691f099828bcb3d1",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c7f24ded311c2cc5b9208ef691f099828bcb3d1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Small](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small--943a2ab633b039e62200854d.md) | 31 | `declaration-track:943a2ab633b039e62200854de71ef93d91370b9b3cc839281c2f5bcba84b13ee` |
| 2 | `theorem` | [Small.mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-mk--74639e665abcb2f0c82b9b6a.md) | 38 | `result-track:74639e665abcb2f0c82b9b6a570bc4d04927b593139fb42800197f30d23cc1c4` |
| 3 | `def` | [Shrink](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/shrink--e760f327441f0b0bff2109f6.md) | 44 | `declaration-track:e760f327441f0b0bff2109f6c059571102594845348eda49b8b77ed15ed79a03` |
| 4 | `def` | [equivShrink](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/equivshrink--f7ba4ea0305111147561b0b4.md) | 50 | `declaration-track:f7ba4ea0305111147561b0b4152d817f57dbf84be254dca5b1c18479131edb04` |
| 5 | `theorem` | [Shrink.ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/shrink-ext--823c127375977ffb58527f9c.md) | 55 | `result-track:823c127375977ffb58527f9c3858856a6a5ed04bf42a6ba2e682730d18a684a9` |
| 6 | `def` | [Shrink.rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/shrink-rec--d19d4c96783b5a7eb3eb4a9c.md) | 63 | `declaration-track:d19d4c96783b5a7eb3eb4a9cd07534a29f543d25020b751b90612c8140a6fcf5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/instance--b4d5d91fb70e6119e623f466.md) | 68 | `declaration-track:b4d5d91fb70e6119e623f46616d5b460face850bbcbeae1d5e5f3e8482f35d6d` |
| 8 | `theorem` | [small_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-map--fdfa74700e07df3b11245a01.md) | 72 | `result-track:fdfa74700e07df3b11245a0191c0c0a6c3960dd2c5ec8414fa2fde99aaa2d5fb` |
| 9 | `theorem` | [small_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-lift--f67c8aa226a8cab734d350d5.md) | 77 | `result-track:f67c8aa226a8cab734d350d54244aa1d545bae57c5ea5695d37b60d256d31102` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/instance--62ae0ca38109accd75485741.md) | 82 | `declaration-track:62ae0ca38109accd7548574155b00eb1f35eafb713585e97c6b89e1922d08065` |
| 11 | `instance` | [small_ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-ulift--f40a8b13a7bfa8c23a3e1198.md) | 86 | `declaration-track:f40a8b13a7bfa8c23a3e1198ebecc2337f935e54d5302a7caac80ee9a5517696` |
| 12 | `theorem` | [small_type](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-type--15fffe3595f1e6afe79a77f8.md) | 90 | `result-track:15fffe3595f1e6afe79a77f8644db9f6e8c2ee88215e1106fac00766b2d385ce` |
| 13 | `theorem` | [small_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-congr--9fc43a83f9d5c264e9e597d5.md) | 98 | `result-track:9fc43a83f9d5c264e9e597d597d8820aa209db68e623759e511270e6a51126ec` |
| 14 | `instance` | [small_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-subtype--556b283941367a0f8dfefafb.md) | 102 | `declaration-track:556b283941367a0f8dfefafb83392d4bc1b7f323c17d938859d7e7ae461a6d43` |
| 15 | `theorem` | [small_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-of-injective--ba5147b293caaac873212f97.md) | 106 | `result-track:ba5147b293caaac873212f976815035d5ac0bef24e841fa8f2e2f682aef15fe5` |
| 16 | `theorem` | [small_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-of-surjective--be967f0ef08d467efec76ffc.md) | 111 | `result-track:be967f0ef08d467efec76ffc04a13f960ba464717f691286e464c82e1e6b8f0f` |
| 17 | `theorem` | [small_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-subset--b303ab0a70bea362437a82eb.md) | 116 | `result-track:b303ab0a70bea362437a82eb4686caba985992b39fe27358ceb85fe1c2318f5f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/instance--40df13e49c426d231ef25c7d.md) | 121 | `declaration-track:40df13e49c426d231ef25c7da3faa1e94ee3fc690db6211dd4901b9a3b24188a` |
| 19 | `instance` | [small_Pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-pi--f358d4d636a7bb4d1d94c9be.md) | 133 | `declaration-track:f358d4d636a7bb4d1d94c9be97fba52ffed0c27bb2ffabd89b327d28b76315a7` |
| 20 | `instance` | [small_sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-sigma--5ae09c10eb69ffe6b912ad7c.md) | 139 | `declaration-track:5ae09c10eb69ffe6b912ad7c363b3be50f7d916dc51c4827291bc73b9e65d48a` |
| 21 | `instance` | [small_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-prod--246d0bd77ad54686942eb9fb.md) | 145 | `declaration-track:246d0bd77ad54686942eb9fba79b9e466df6c578ee46bc808dbb79ae3edec7db` |
| 22 | `instance` | [small_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-sum--b9a5408a71f6edfb3d5e00e9.md) | 149 | `declaration-track:b9a5408a71f6edfb3d5e00e9b8ac2435cc920fa1a21669f275cbc8636042a7e9` |
| 23 | `instance` | [small_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-set--e3a40f1f4d743433c3930e24.md) | 153 | `declaration-track:e3a40f1f4d743433c3930e24806d3e2d60bf9372cbef74bd91fad4a638d21897` |
| 24 | `instance` | [small_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-range--09c5f18d2f18ecef0b29a5a6.md) | 157 | `declaration-track:09c5f18d2f18ecef0b29a5a6117e9a9eb2fa337e6153f0df1a92c901841cfee0` |
| 25 | `instance` | [small_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/small-image--fe06c0483767e254889e6e2d.md) | 162 | `declaration-track:fe06c0483767e254889e6e2d7152d340b9e59f56e7659731b3377ae90ba7254a` |
| 26 | `theorem` | [not_small_type](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8a4d7a8a70e0272f8e53fb0269f3110dd5a5d1b7569a57812080658273f8062.lean/declarations/not-small-type--480abd44277a3589de397ad5.md) | 167 | `result-track:480abd44277a3589de397ad5dd55bdb88516faa8d8e0bfb998d6d3b6092e3942` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
