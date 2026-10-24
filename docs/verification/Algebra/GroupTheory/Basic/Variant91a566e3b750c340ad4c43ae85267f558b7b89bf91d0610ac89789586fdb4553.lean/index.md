# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "561bb0fd82a19aa5e09d5e3e8e41d8760525d8e0",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `561bb0fd82a19aa5e09d5e3e8e41d8760525d8e0`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Units` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toUnits](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/tounits--4d86fc248cf5a78ac89ad640.md) | 27 | `declaration-track:4d86fc248cf5a78ac89ad640975f3bcdb9570130940a08e5ddc721f9e7d2daaa` |
| 2 | `theorem` | [coe_toUnits](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/coe-tounits--8e06ba5c643cad96dbec94af.md) | 37 | `result-track:8e06ba5c643cad96dbec94affc7d5861ba4734f09bb16f5b6163eb6b65523415` |
| 3 | `def` | [mapEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mapequiv--ca38cb0c317974e83925b366.md) | 48 | `declaration-track:ca38cb0c317974e83925b366c006fa470980d28a35f5f932c7dd763a68353ea4` |
| 4 | `theorem` | [mapEquiv_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mapequiv-symm--9ce5ec23376c3ad094394dd6.md) | 56 | `result-track:9ce5ec23376c3ad094394dd613bacf6e4dd4a3ef81e1672e93b6e7e2fab1d820` |
| 5 | `theorem` | [coe_mapEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/coe-mapequiv--dd47dfbce69ef9c22bf87d8d.md) | 61 | `result-track:dd47dfbce69ef9c22bf87d8dd646a3c720d3376e2693d0f07f469ab46ec22716` |
| 6 | `def` | [mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulleft--5f50dacc4b6c613d44bf75aa.md) | 68 | `declaration-track:5f50dacc4b6c613d44bf75aaced01453f8037d1630f4fe4cc28e8d0f1857bd31` |
| 7 | `theorem` | [mulLeft_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulleft-symm--6b1ebe40355046055867e64e.md) | 79 | `result-track:6b1ebe40355046055867e64e0278eddf0181c0e5b8f3671ce70aa32c871e68f0` |
| 8 | `theorem` | [mulLeft_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulleft-bijective--c5d291d33b02690ee7d24815.md) | 85 | `result-track:c5d291d33b02690ee7d2481571289a5a0e0db4e50621f6f32eac49af64b634f8` |
| 9 | `def` | [mulRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulright--3177499de31e66ee97904f76.md) | 93 | `declaration-track:3177499de31e66ee97904f76579977f7a1b10410a97bdfe3a79667bcd1e04e54` |
| 10 | `theorem` | [mulRight_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulright-symm--2f7b052cb83f757e52b6fe24.md) | 104 | `result-track:2f7b052cb83f757e52b6fe244cd3b89f9002c1f1d95c854048e7c2dad5f90f1d` |
| 11 | `theorem` | [mulRight_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulright-bijective--b2be2e84db5b03ee0bb62abf.md) | 110 | `result-track:b2be2e84db5b03ee0bb62abf69d624c481d5011160f16cf911cd3b18628e27a2` |
| 12 | `def` | [mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulleft--27ae27ea7e6a23da69261268.md) | 125 | `declaration-track:27ae27ea7e6a23da69261268518b0f9779fab81c1f2bd142bc58a15ed39dca00` |
| 13 | `theorem` | [coe_mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/coe-mulleft--121f333bb1086fb29dc7714a.md) | 131 | `result-track:121f333bb1086fb29dc7714a4729491e2662687266c724e2bd038844e971fb85` |
| 14 | `theorem` | [mulLeft_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulleft-symm-apply--944ec255b8dfcb50798ba7ec.md) | 141 | `result-track:944ec255b8dfcb50798ba7ecc0df2ab56af9609862e62ac43e04e9d45efcfbbe` |
| 15 | `theorem` | [mulLeft_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulleft-symm--32dc08b5e885de1a0feddebd.md) | 147 | `result-track:32dc08b5e885de1a0feddebdc21537eed267c23f94d1c5e88abf9d4b98f42bef` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ToUnits.Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.Group.mulLeft_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/root-grwtsk-algebra-grouptheory-tounits-variant0f21e8b87cf1bf28880c6d344--1bd0f554ea1ef7357eec600d.md) | 153 | `result-track:1bd0f554ea1ef7357eec600dd90807e0295cab20fc855489592090aa55a4f247` |
| 17 | `def` | [mulRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulright--a62d423c11131da703dbdc74.md) | 160 | `declaration-track:a62d423c11131da703dbdc74a2cd8560991b845951cb24c4014705436e05ff1d` |
| 18 | `theorem` | [coe_mulRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/coe-mulright--f31e8b97a7896b584f355fff.md) | 166 | `result-track:f31e8b97a7896b584f355fff39e87d78b5661e231a021f73cff286a82cdf8cb8` |
| 19 | `theorem` | [mulRight_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulright-symm--e46a18bebf1ca0865dfa7f6f.md) | 172 | `result-track:e46a18bebf1ca0865dfa7f6f217f269dbb1afcb3b79893a645c222ea28918b1f` |
| 20 | `theorem` | [mulRight_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulright-symm-apply--ca57371a5efb1374c3b917b2.md) | 180 | `result-track:ca57371a5efb1374c3b917b24b1634f8707286af82c3f287d70520dbcaa28450` |
| 21 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ToUnits.Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.Group.mulRight_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/root-grwtsk-algebra-grouptheory-tounits-variant0f21e8b87cf1bf28880c6d344--a671857ab7fa4c1f87958f33.md) | 186 | `result-track:a671857ab7fa4c1f87958f3305e3234793c411616609a7f30b4763eb366779aa` |
| 22 | `def` | [divLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/divleft--5eeb04561407594751f1f9a2.md) | 193 | `declaration-track:5eeb04561407594751f1f9a232758ac50b714fc3a0a784887a2dbcca20bc5076` |
| 23 | `theorem` | [divLeft_eq_inv_trans_mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/divleft-eq-inv-trans-mulleft--cc4c8f7be9c9802d0520de1c.md) | 206 | `result-track:cc4c8f7be9c9802d0520de1c86c97bf9cc6fd224400be8fb2fa01d1877a9d6ee` |
| 24 | `def` | [divRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/divright--6f327ac42d82be468326d56c.md) | 214 | `declaration-track:6f327ac42d82be468326d56c24ff8991d67d1ae4abeee76478771b89b474931a` |
| 25 | `theorem` | [divRight_eq_mulRight_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/divright-eq-mulright-inv--c53c0a165c46d89330436db7.md) | 228 | `result-track:c53c0a165c46d89330436db7171e78034b53812fead2cda6a6c86b7d2200b629` |
| 26 | `def` | [MulEquiv.inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulequiv-inv--6073c41055be3d3297c8ae63.md) | 245 | `declaration-track:6073c41055be3d3297c8ae63edf0b4c9feef4ba53b719a0a1e9b2d3fc95bb47c` |
| 27 | `theorem` | [MulEquiv.inv_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91a566e3b750c340ad4c43ae85267f558b7b89bf91d0610ac89789586fdb4553.lean/declarations/mulequiv-inv-symm--2f2f8bc6582a31471ebece5b.md) | 253 | `result-track:2f2f8bc6582a31471ebece5bacd03ab150b89908f810687d0086e823a5116167` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
