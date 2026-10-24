# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed549e69ff3cd9826612b6b3e1e912645126bd39",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed549e69ff3cd9826612b6b3e1e912645126bd39`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Bitvec.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bitsToNat_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/bitstonat-tolist--0c38b390a0ae41d0445a42ed.md) | 30 | `result-track:0c38b390a0ae41d0445a42eda942ddee1718f2034cd227574dd23ff704d5bae2` |
| 2 | `theorem` | [toNat_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/tonat-append--7de5263f94dbcc24407b4b83.md) | 41 | `result-track:7de5263f94dbcc24407b4b8341361f8332a00ef75d707efd029dc6f1c311c135` |
| 3 | `theorem` | [bits_toNat_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/bits-tonat-decide--667fd19a85f553f0af6150de.md) | 67 | `result-track:667fd19a85f553f0af6150de0453893575194f6ee1ee4c627ba8bc8f9e0651dc` |
| 4 | `theorem` | [ofNat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/ofnat-succ--487e62e2b25623a789c5a1f2.md) | 73 | `result-track:487e62e2b25623a789c5a1f2a738b6cadd7b016631d1a23450b4567b46511067` |
| 5 | `theorem` | [toNat_ofNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/tonat-ofnat--8731f37fd2909b4c05e1bf90.md) | 78 | `result-track:8731f37fd2909b4c05e1bf90ab9f8bb9b7eea955d47423f186c32df8e18abf1f` |
| 6 | `theorem` | [ofFin_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/offin-val--d175292d68cba22c32fd1e24.md) | 85 | `result-track:d175292d68cba22c32fd1e24e945b6813664c0b6b134534a4c710fa2a9f9df2e` |
| 7 | `theorem` | [addLsb_eq_twice_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/addlsb-eq-twice-add-one--dd437c94908c9b02cdcc8898.md) | 90 | `result-track:dd437c94908c9b02cdcc88983c232bf9f7be8fe66ab26357a7e91cb991d8d932` |
| 8 | `theorem` | [toNat_eq_foldr_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/tonat-eq-foldr-reverse--ae8464bf6099c4bfc2d274f3.md) | 94 | `result-track:ae8464bf6099c4bfc2d274f30ed06d7021ea652e7e1d98cbe44963d58429b01d` |
| 9 | `theorem` | [toNat_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/tonat-lt--ec4fc0ee0e2285d279d93c91.md) | 98 | `result-track:ec4fc0ee0e2285d279d93c91d56467554ca2e782515228edc7761a104a8ed06d` |
| 10 | `theorem` | [addLsb_div_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/addlsb-div-two--bf755740182b6e98cda04d8e.md) | 120 | `result-track:bf755740182b6e98cda04d8ebb9637da334f24ef698bdb53a6bbae0324883f0c` |
| 11 | `theorem` | [decide_addLsb_mod_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/decide-addlsb-mod-two--bf75d850ec78bab464dc0309.md) | 127 | `result-track:bf75d850ec78bab464dc0309c71edfd23bf010ee670baf1c00f2fab77a0bca83` |
| 12 | `theorem` | [ofNat_toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/ofnat-tonat--96d1f2c0355e862714d33bec.md) | 133 | `result-track:96d1f2c0355e862714d33bec88c1ad4498c01f26abd67c111444f2a20d81bf60` |
| 13 | `theorem` | [toFin_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/tofin-val--beeb938da0d347b43cfd044b.md) | 155 | `result-track:beeb938da0d347b43cfd044b8a829b99e8d53a762f87b626c2286ab91142678e` |
| 14 | `theorem` | [toFin_le_toFin_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/tofin-le-tofin-of-le--9340a52e61825250bf378b35.md) | 160 | `result-track:9340a52e61825250bf378b35074ed9e03dec34c58199684917eb0d1c16167e84` |
| 15 | `theorem` | [ofFin_le_ofFin_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/offin-le-offin-of-le--dc6156a49bfef01d5fb5bbe9.md) | 166 | `result-track:dc6156a49bfef01d5fb5bbe9a38b943837ef6d33e32cd7151fc443f2475cc915` |
| 16 | `theorem` | [toFin_ofFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/tofin-offin--42cea951e72380c95f7447c4.md) | 172 | `result-track:42cea951e72380c95f7447c4f7f08474cb8b139a870f12391975c92416562f0d` |
| 17 | `theorem` | [ofFin_toFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/declarations/offin-tofin--8b99fd12a57c200ee081d104.md) | 176 | `result-track:8b99fd12a57c200ee081d10436a2e3491c620102c74abf458ffb30744b0e69e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
