# Verification target: GRWTSK.Algebra.LinearAlgebra.WedderburnArtin.Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80014f9616216239310b2e59bcdf6aa63e3ac771",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80014f9616216239310b2e59bcdf6aa63e3ac771`.

Source path: `GRWTSK/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean.json)

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
| 1 | `theorem` | [IsSimpleRing.tfae](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/issimplering-tfae--23540e712d5e4d634be2bc39.md) | 50 | `result-track:23540e712d5e4d634be2bc39786b76c010e3f963a9bd0f3ea0d8080e85a6eedf` |
| 2 | `theorem` | [IsSimpleRing.isSemisimpleRing_iff_isArtinianRing](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/issimplering-issemisimplering-iff-isartinianring--fbdb1d9cf91176542c89f2d4.md) | 63 | `result-track:fbdb1d9cf91176542c89f2d4bfbbfde78e2a1e8ca1af37fba51538777968f03a` |
| 3 | `theorem` | [isSimpleRing_isArtinianRing_iff](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/issimplering-isartinianring-iff--f07fc54e66f882db8ad0e289.md) | 66 | `result-track:f07fc54e66f882db8ad0e289c8926474373bd827b2ba4c53fc95fd22845adb0d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/instance--a3184c0f7b355296e9adf08e.md) | 79 | `declaration-track:a3184c0f7b355296e9adf08e2472d35dad91ec85f675f4f52ca5b299fff66ff2` |
| 5 | `theorem` | [isIsotypic](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/isisotypic--3fd17851191d6fa8a78bb8d0.md) | 82 | `result-track:3fd17851191d6fa8a78bb8d04d853426903eaeb676bd1b5576bbd77513668c49` |
| 6 | `theorem` | [exists_ringEquiv_matrix_end_mulOpposite](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-ringequiv-matrix-end-mulopposite--5a10f9087af63df9fb34e1c2.md) | 87 | `result-track:5a10f9087af63df9fb34e1c2120e67480e42008d917715870f7d4c7db025b711` |
| 7 | `theorem` | [exists_ringEquiv_matrix_divisionRing](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-ringequiv-matrix-divisionring--c93dcf5e6ce31cdd2d08528c.md) | 96 | `result-track:c93dcf5e6ce31cdd2d08528c77d52ae08a63274c85e75bd3ff7a39388108e4e5` |
| 8 | `theorem` | [exists_algEquiv_matrix_end_mulOpposite](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-algequiv-matrix-end-mulopposite--475b34ff46ea467862708349.md) | 104 | `result-track:475b34ff46ea467862708349bf72075f0010a8ec9881cfba6ae0d03672786110` |
| 9 | `theorem` | [exists_algEquiv_matrix_divisionRing](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-algequiv-matrix-divisionring--16ad04469f75fe68524e2791.md) | 113 | `result-track:16ad04469f75fe68524e279166cdb12b8b0262324e497ac332cd887fbad28223` |
| 10 | `theorem` | [exists_algEquiv_matrix_divisionRing_finite](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-algequiv-matrix-divisionring-finite--83e1c5d503e3cd0cddf3d7e0.md) | 121 | `result-track:83e1c5d503e3cd0cddf3d7e080f3f5d82b3e28d38879e36fd5a6e4a98fb489d9` |
| 11 | `theorem` | [exists_end_algEquiv_pi_matrix_end](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-end-algequiv-pi-matrix-end--e156896723d3b635406a7865.md) | 139 | `result-track:e156896723d3b635406a786547d6bce306ad684c9581e309146d29bb08c50799` |
| 12 | `theorem` | [exists_end_ringEquiv_pi_matrix_end](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-end-ringequiv-pi-matrix-end--f18154125d1c4fa3c4129bc8.md) | 149 | `result-track:f18154125d1c4fa3c4129bc8060815281c9e7cd44d1c154d275cfee9542ec85f` |
| 13 | `theorem` | [exists_end_algEquiv_pi_matrix_divisionRing](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-end-algequiv-pi-matrix-divisionring--def5fbb0185307e1afe33afe.md) | 156 | `result-track:def5fbb0185307e1afe33afed7f5a2553964efaa2a4c1112bc4f2e963db8b325` |
| 14 | `theorem` | [exists_end_ringEquiv_pi_matrix_divisionRing](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-end-ringequiv-pi-matrix-divisionring--90c49438444d8d5d5f388eb7.md) | 163 | `result-track:90c49438444d8d5d5f388eb7c45b01a2121247efcd129b68ec66b821f9e4ed80` |
| 15 | `theorem` | [_root_.IsSemisimpleRing.moduleEnd](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/root-issemisimplering-moduleend--3011f6fb05c45659ae42d9a3.md) | 169 | `result-track:3011f6fb05c45659ae42d9a3fa1bd8985851858a247116827e09451c0368e922` |
| 16 | `theorem` | [exists_algEquiv_pi_matrix_end_mulOpposite](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-algequiv-pi-matrix-end-mulopposite--f6d2ce3c9890a844747bcc9e.md) | 181 | `result-track:f6d2ce3c9890a844747bcc9e522b9b05b5979b9123ae4eb1617feb9641018d0d` |
| 17 | `theorem` | [exists_algEquiv_pi_matrix_divisionRing](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-algequiv-pi-matrix-divisionring--41fe346c6abca8097da9338a.md) | 191 | `result-track:41fe346c6abca8097da9338a17b221ccea410882ad40641b021cf26e414e80cd` |
| 18 | `theorem` | [exists_algEquiv_pi_matrix_divisionRing_finite](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-algequiv-pi-matrix-divisionring-finite--af705c5a2e8d7d88d34be715.md) | 201 | `result-track:af705c5a2e8d7d88d34be715d262e66cd713d1d0c82f11cdb23fd8bd5a30ecb0` |
| 19 | `theorem` | [exists_ringEquiv_pi_matrix_end_mulOpposite](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-ringequiv-pi-matrix-end-mulopposite--de576ceff4a2918d76aa2a26.md) | 214 | `result-track:de576ceff4a2918d76aa2a2631709f49fd65f32c00e5418024f960cbb99d485c` |
| 20 | `theorem` | [exists_ringEquiv_pi_matrix_divisionRing](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/exists-ringequiv-pi-matrix-divisionring--61fbc115e840703ac4a923f3.md) | 223 | `result-track:61fbc115e840703ac4a923f3243ecd06c4c29288e2d97c700bd8b675710e47d5` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/instance--7170136a82ad05b1216d5280.md) | 229 | `declaration-track:7170136a82ad05b1216d5280b167a8ef907cb8a2d6b0d0ce430082ce2c569588` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/instance--29e18768fe4c9232bba97d3e.md) | 234 | `declaration-track:29e18768fe4c9232bba97d3e94b0e92cb7032d4d5a91181fbf63c7ca6d99588c` |
| 23 | `theorem` | [isSemisimpleRing_mulOpposite_iff](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/issemisimplering-mulopposite-iff--93e68684e3b5ca2e81d4ea27.md) | 241 | `result-track:93e68684e3b5ca2e81d4ea27891d0af8987e88483f9eeaa5a6549b2bcd8cb48a` |
| 24 | `theorem` | [isSemisimpleRing_iff_pi_matrix_divisionRing](../../../../../mathematics/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/declarations/issemisimplering-iff-pi-matrix-divisionring--11e239454e5b5367832b0bdf.md) | 245 | `result-track:11e239454e5b5367832b0bdf2c40cb9079b9b2345c76af2084c5b3f74f34d2c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
