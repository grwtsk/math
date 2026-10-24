# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Boundary.Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17840006be3140b705726fbcb96e0d915fe761bf",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17840006be3140b705726fbcb96e0d915fe761bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BooleanAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary--372a398d97c6348c77acf7b2.md) | 43 | `declaration-track:372a398d97c6348c77acf7b29b48720bde8dad8b3b33cb3a93fc01c152162eec` |
| 2 | `theorem` | [inf_hnot_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/inf-hnot-self--182427e0a78aa93647cd5fe3.md) | 52 | `result-track:182427e0a78aa93647cd5fe3d92088d57e9b6d68c0bca6596302e678a50b2281` |
| 3 | `theorem` | [boundary_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-le--f4bd7ee861ea780447369ba7.md) | 55 | `result-track:f4bd7ee861ea780447369ba769173f8b504e0551cb373368ce17dc8a5a04ceb8` |
| 4 | `theorem` | [boundary_le_hnot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-le-hnot--d426b5daf786f25a1b7cbfc6.md) | 58 | `result-track:d426b5daf786f25a1b7cbfc64ec07eaa28381a692ffe9e43a76ec99d27cd0ec7` |
| 5 | `theorem` | [boundary_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-bot--2f213b90d421ad5ff1f80cee.md) | 62 | `result-track:2f213b90d421ad5ff1f80ceed5841bd8d1074b730b21ed1fc40343cef0a2e774` |
| 6 | `theorem` | [boundary_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-top--b400d6fc7459f713d70005b8.md) | 65 | `result-track:b400d6fc7459f713d70005b8333a57c272abf9ca3cda6cf90e26497ca84cadcc` |
| 7 | `theorem` | [boundary_hnot_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-hnot-le--fd6ac8894c0c0a0dfc237ed2.md) | 67 | `result-track:fd6ac8894c0c0a0dfc237ed2eab0a509db7db18aef3b94a822d43b74266f1802` |
| 8 | `theorem` | [boundary_hnot_hnot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-hnot-hnot--a15c0b0669825f71ebafdfec.md) | 71 | `result-track:a15c0b0669825f71ebafdfec7efe25123adba5a139b5c2da63daba78f45221ff` |
| 9 | `theorem` | [hnot_boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/hnot-boundary--82007d46700a02c2101e3c0e.md) | 75 | `result-track:82007d46700a02c2101e3c0e5d5b73b1fc6629917176c14e0e612b74ba00b352` |
| 10 | `theorem` | [boundary_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-inf--8a4e8abedc2e883721005bd4.md) | 78 | `result-track:8a4e8abedc2e883721005bd46b31d76f948d6a752f9c519f7ffec4a23735dc11` |
| 11 | `theorem` | [boundary_inf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-inf-le--3aee9ecbef166c6b9398255d.md) | 82 | `result-track:3aee9ecbef166c6b9398255da2eb8c389d1930de922431fedb4c299a0a36a603` |
| 12 | `theorem` | [boundary_sup_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-sup-le--6df45e5ca591daf6edd60df9.md) | 85 | `result-track:6df45e5ca591daf6edd60df908d46b394d0e1b5e80c9b2f3f5138b279e6b97d1` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/example--2922d13e68ffb76453a70a9b.md) | 95 | `declaration-track:2922d13e68ffb76453a70a9b0a3d366cfde01b2677a9ab02c570671538786c0e` |
| 14 | `theorem` | [boundary_le_boundary_sup_sup_boundary_inf_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-le-boundary-sup-sup-boundary-inf-left--ae7f7020f6b85afd92b30c6f.md) | 100 | `result-track:ae7f7020f6b85afd92b30c6f616e92452b3a08bfa322c35edbba4988f2e9fbc6` |
| 15 | `theorem` | [boundary_le_boundary_sup_sup_boundary_inf_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-le-boundary-sup-sup-boundary-inf-right--a8e63fe04c798517cf1a2e7e.md) | 111 | `result-track:a8e63fe04c798517cf1a2e7e6edaf737dda15318479b7348e7c6f2852958f135` |
| 16 | `theorem` | [boundary_sup_sup_boundary_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-sup-sup-boundary-inf--8d3c02066b5274fa80faee1f.md) | 115 | `result-track:8d3c02066b5274fa80faee1f7f0b82782089db7341de6f43731ad68745d4d2db` |
| 17 | `theorem` | [boundary_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/boundary-idem--c417a89f24e97df0ea94f617.md) | 121 | `result-track:c417a89f24e97df0ea94f617817fa94bf03aa034ae18d6429db780807d081964` |
| 18 | `theorem` | [hnot_hnot_sup_boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/hnot-hnot-sup-boundary--f194853da854eeb7f4f8a04c.md) | 123 | `result-track:f194853da854eeb7f4f8a04c808d1c71100716993156398b763d4be4ff547ad7` |
| 19 | `theorem` | [hnot_eq_top_iff_exists_boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/hnot-eq-top-iff-exists-boundary--25d5af6fe1ed2a7d85743168.md) | 127 | `result-track:25d5af6fe1ed2a7d857431687f58da76b77f5e85042401f6ea99e47190b3b9e8` |
| 20 | `theorem` | [Coheyting.boundary_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7.lean/declarations/coheyting-boundary-eq-bot--fca0e2d626a27af9ff139173.md) | 141 | `result-track:fca0e2d626a27af9ff139173a28d0f0f4b4b567b58e0b0230405b6d0e2d365d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
