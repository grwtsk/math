# Verification target: GRWTSK.Algebra.GroupTheory.Lift.Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88efedb9b4901f59f0f9c92ada8ba576659144ac",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88efedb9b4901f59f0f9c92ada8ba576659144ac`.

Source path: `GRWTSK/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftNCAlgHom](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/liftncalghom--adc9f286c958e4fd4d71c014.md) | 38 | `declaration-track:adc9f286c958e4fd4d71c01425372d0da66d511077af79c71f075ae37c5ed721` |
| 2 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/lift--fffd3bca6c95e3d5e3ad97aa.md) | 51 | `declaration-track:fffd3bca6c95e3d5e3ad97aae4621fdc0ae86d3b703cb1840a48a7f76fd4e3ea` |
| 3 | `theorem` | [lift_apply'](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/lift-apply--923235edd22f29edbc0094d5.md) | 67 | `result-track:923235edd22f29edbc0094d506451633038f95b22b0331a238ac257e6b2332eb` |
| 4 | `theorem` | [lift_apply](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/lift-apply--3f76d66a0c013e44e169db02.md) | 70 | `result-track:3f76d66a0c013e44e169db020a6ba792a2456808ff2e0634d66553e104a6a46a` |
| 5 | `theorem` | [lift_def](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/lift-def--2105f0cefa1f4aba6bb0b4e7.md) | 73 | `result-track:2105f0cefa1f4aba6bb0b4e7fd4f3fdec8c1ed0d33b05d5a0700d0373860e316` |
| 6 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/lift-symm-apply--593e4325579449da6b583f60.md) | 77 | `result-track:593e4325579449da6b583f6054c37fa350c57ac0c2e353c7f3b1b925d486af5f` |
| 7 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/lift-of--3adaeb2aadf7276b78eac58a.md) | 80 | `result-track:3adaeb2aadf7276b78eac58a149d935bc4bb682cba79ff3b1c1ccf777f07e604` |
| 8 | `theorem` | [lift_single](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/lift-single--d3350b8da9703344edae8d88.md) | 84 | `result-track:d3350b8da9703344edae8d88510293d0875a192e0f312417d9c8b3de5b07ea38` |
| 9 | `theorem` | [lift_unique'](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/lift-unique--2a3cad18c2b11629d3fa9436.md) | 87 | `result-track:2a3cad18c2b11629d3fa943656d94b8d74cbdc66e9066c99bc268c3740c0f0be` |
| 10 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/lift-unique--d587b24d3d188e878519afb0.md) | 93 | `result-track:d587b24d3d188e878519afb07a1b284d4204170a46153cd15fc5455c5e664847` |
| 11 | `def` | [mapDomainAlgHom](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/mapdomainalghom--c6a3d3a8e86cb3da98871437.md) | 102 | `declaration-track:c6a3d3a8e86cb3da9887143722821712441500ba73c8cef13f91a9414d7aca63` |
| 12 | `def` | [equivMapDomain](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/equivmapdomain--6db3c656f23be4edf5b7e426.md) | 123 | `declaration-track:6db3c656f23be4edf5b7e42630c594c716f2797ff3267e22551249bc1cf18346` |
| 13 | `theorem` | [equivMapDomain_eq_mapDomain](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/equivmapdomain-eq-mapdomain--96f715e84d5c109a5968bf6f.md) | 128 | `result-track:96f715e84d5c109a5968bf6fedaf29520d2787a9c704d3a79dcecf19361ac338` |
| 14 | `theorem` | [equivMapDomain_trans](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/equivmapdomain-trans--2a7c1bc12c657d8f5fe80049.md) | 131 | `result-track:2a7c1bc12c657d8f5fe80049a5c8a6149414ed4432d6f43f15d9b62dcbca4872` |
| 15 | `theorem` | [equivMapDomain_refl](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/equivmapdomain-refl--cb82f93405a5c83ff7d68e7c.md) | 137 | `result-track:cb82f93405a5c83ff7d68e7cbda798d55bd82b9ba99f9ddc1c98af4cfabc1be8` |
| 16 | `theorem` | [equivMapDomain_single](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/equivmapdomain-single--729fa5951b75341f98667460.md) | 141 | `result-track:729fa5951b75341f986674607f0807e2b1ca2db8ed0d726ba6e5fd3f26572946` |
| 17 | `def` | [domCongr](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/domcongr--6b75be073cff0d15cd1fe540.md) | 156 | `declaration-track:6b75be073cff0d15cd1fe54044dc5da120f4eb1f7c8486fe79cb50c460685057` |
| 18 | `def` | [domLCongr](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/domlcongr--7c71079eccd2f5802b04c03d.md) | 166 | `declaration-track:7c71079eccd2f5802b04c03da4d5cb74f87a6e1a5d1a376e7c5298fb04ffb549` |
| 19 | `def` | [domCongrAlg](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/domcongralg--467b03dd51302496a502722e.md) | 181 | `declaration-track:467b03dd51302496a502722e9c932fd08dc0ab4c49e58e1898fa80b27a0f2a37` |
| 20 | `theorem` | [domCongrAlg_toAlgHom](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/domcongralg-toalghom--6ef99a98542b346a5c79db58.md) | 189 | `result-track:6ef99a98542b346a5c79db58556bb62f93adda5081434f4e1de8c1996f605503` |
| 21 | `theorem` | [domCongrAlg_apply](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/domcongralg-apply--7dfe8b50ca14a1022cc58e7a.md) | 193 | `result-track:7dfe8b50ca14a1022cc58e7a7b91f08bab7255e0c2e65a2b03ad3dfb4e668059` |
| 22 | `theorem` | [domCongr_support](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/domcongr-support--7cc4fd70ba109f3b9e229656.md) | 197 | `result-track:7cc4fd70ba109f3b9e229656fc7aeae479b9277556170830ce0170380476a3d3` |
| 23 | `theorem` | [domCongr_single](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/domcongr-single--2e239053866f759a39aa5539.md) | 201 | `result-track:2e239053866f759a39aa5539365e7d8a48ee01b2edc30d46bb63b233c736c016` |
| 24 | `theorem` | [domCongr_refl](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/domcongr-refl--b81d6eaa0f87694833571e92.md) | 205 | `result-track:b81d6eaa0f87694833571e92a42476177b8005df651508a64a1297b3ec780d82` |
| 25 | `theorem` | [domCongr_symm](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/domcongr-symm--7bedb95c8a2f3b0e6cb40ed4.md) | 210 | `result-track:7bedb95c8a2f3b0e6cb40ed451281e5b5e14cc69d505c3a71c4f68506e5ca9c3` |
| 26 | `def` | [submoduleOfSmulMem](../../../../../mathematics/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/declarations/submoduleofsmulmem--c92fb792b3013ed30ac831a9.md) | 227 | `declaration-track:c92fb792b3013ed30ac831a92eb301f485fea1e3c8813d5a8e438f66cc2671f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
