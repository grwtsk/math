# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a9db0d480f3d03f00b5d8d97d0c115fd22f0949",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a9db0d480f3d03f00b5d8d97d0c115fd22f0949`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkMulHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/mkmulhom--886d34ea8ad5532d70932c63.md) | 43 | `declaration-track:886d34ea8ad5532d70932c63c669ff0a5945bcc307aebd0b32e70289c586090e` |
| 2 | `def` | [ker](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/ker--1d81cc6fb2a04eb6ca8756ca.md) | 48 | `declaration-track:1d81cc6fb2a04eb6ca8756cab08b794cb733fe08cab335bbc271221cad1fcfc9` |
| 3 | `theorem` | [ker_coeMulHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/ker-coemulhom--917f1d6052f51c9b328e340f.md) | 55 | `result-track:917f1d6052f51c9b328e340f14afd15a40f6325c51d970a31e9766c961a5dd32` |
| 4 | `theorem` | [ker_rel](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/ker-rel--520f9f9a2c599ee357243fa2.md) | 60 | `result-track:520f9f9a2c599ee357243fa2e53eea90a03624e3cf044a00e8b4ee9e9e80446d` |
| 5 | `theorem` | [ker_mkMulHom_eq](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/ker-mkmulhom-eq--ff808ed260d86a2147894035.md) | 65 | `result-track:ff808ed260d86a21478940356b3ef7b9e1ef22ae878a8da5ab452f2e3e38f53f` |
| 6 | `abbrev` | [mulKer](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/mulker--5afe835745061720652284a0.md) | 70 | `declaration-track:5afe835745061720652284a046838d20aeda26ae27f2f08400faadc27cc97b0a` |
| 7 | `theorem` | [mul_ker_mk_eq](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/mul-ker-mk-eq--b583decb98585cb3453b48cf.md) | 80 | `result-track:b583decb98585cb3453b48cffbf459196df30a62d8e16e88c21b406dfb9c1940` |
| 8 | `def` | [mapGen](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/mapgen--3e41f84a4bce0715ae6ad324.md) | 93 | `declaration-track:3e41f84a4bce0715ae6ad3249b18a1e6ca7894a81f582fc5195856816226aeb4` |
| 9 | `def` | [mapOfSurjective](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/mapofsurjective--c103d784bca150ebf9b9c969.md) | 102 | `declaration-track:c103d784bca150ebf9b9c969018a7a919fdb74acc5ea61b6f66dfd360ff154c6` |
| 10 | `theorem` | [mapOfSurjective_eq_mapGen](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/mapofsurjective-eq-mapgen--df4602a035f2f508c7337685.md) | 113 | `result-track:df4602a035f2f508c733768564b9eba24b6c7ac0efe6434ae2086e9e9677942f` |
| 11 | `def` | [correspondence](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/correspondence--d89ef346cd2e7b7aa813a23a.md) | 123 | `declaration-track:d89ef346cd2e7b7aa813a23a2b7d478fe88febbfe50885f1ec71c0c990602a60` |
| 12 | `def` | [mk'](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/mk--71d7c61715ab2b4b989214e2.md) | 159 | `declaration-track:71d7c61715ab2b4b989214e2fddbef40dde644323edadba26ee833d110102648` |
| 13 | `theorem` | [mk'_ker](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/mk-ker--30d2f9054b0ac11c3fe4e14c.md) | 169 | `result-track:30d2f9054b0ac11c3fe4e14c4294f4181619ba6973d89d5778929d160b032f88` |
| 14 | `theorem` | [mk'_surjective](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/mk-surjective--669b2fd16245356d95f686c0.md) | 178 | `result-track:669b2fd16245356d95f686c006936f18f00cc6616bb82de8fdf604e93cbc9295` |
| 15 | `theorem` | [coe_mk'](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/coe-mk--254df989b215197e17391ab7.md) | 182 | `result-track:254df989b215197e17391ab7e58d681d5819cbec64b64ec46143ae547c3fca41` |
| 16 | `theorem` | [ker_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/ker-apply--d55aba85b23b18d680bc9b83.md) | 186 | `result-track:d55aba85b23b18d680bc9b8325a877ef2d39973768f5a07782681e8ea8400113` |
| 17 | `theorem` | [comap_eq](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/comap-eq--0a0e534b818fa7d65cbf3ee2.md) | 194 | `result-track:0a0e534b818fa7d65cbf3ee27c046d53f7746074a07b14e73d5f3b31852acdd0` |
| 18 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/lift--db616d80f4ec634273d4d26b.md) | 203 | `declaration-track:db616d80f4ec634273d4d26b47b97cc701abf56a3748c744b5edfff7ee5378fc` |
| 19 | `theorem` | [lift_mk'](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/lift-mk--3c8e14494986150a28414929.md) | 215 | `result-track:3c8e14494986150a28414929e26d3ef120be3d3149d0812014a2210122e60d3f` |
| 20 | `theorem` | [lift_coe](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/lift-coe--b2f430089ff6958874450810.md) | 221 | `result-track:b2f430089ff69588744508107134b0f70dcfe3a5a8d33cdf0b0aa6818608b6a1` |
| 21 | `theorem` | [lift_comp_mk'](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/lift-comp-mk--a4cc1eeef026de1e248e3d84.md) | 227 | `result-track:a4cc1eeef026de1e248e3d8407a1aae26ad5ca87aacc8acbbab1eb2b4ccd3a03` |
| 22 | `theorem` | [lift_apply_mk'](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/lift-apply-mk--fd1cec99ec41eaaa2232eda7.md) | 235 | `result-track:fd1cec99ec41eaaa2232eda77f0d5788f2c4868c8b7e2c540e6b803edc2baa23` |
| 23 | `theorem` | [lift_funext](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/lift-funext--d33b2f45c7dbc96dac8dca45.md) | 243 | `result-track:d33b2f45c7dbc96dac8dca45043b914f9d949f4cc342d264eb084a7127a68c99` |
| 24 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/lift-unique--34d975f592a69269fef0c21c.md) | 250 | `result-track:34d975f592a69269fef0c21c7935bec0037aa90d1c95b452464ba2aba19993aa` |
| 25 | `theorem` | [lift_surjective_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/lift-surjective-of-surjective--721d9310a17633233123fb92.md) | 260 | `result-track:721d9310a17633233123fb92ef3c3bf7dd75b3a13e3ad692a7c5b85fd0bf8acb` |
| 26 | `theorem` | [ker_eq_lift_of_injective](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/ker-eq-lift-of-injective--d48306a62a85cce9888ce0ac.md) | 271 | `result-track:d48306a62a85cce9888ce0ac5a96d11a0abf394ba7ed10f432332f6180f049d2` |
| 27 | `def` | [kerLift](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/kerlift--34ea9eda49744fc968b7c262.md) | 279 | `declaration-track:34ea9eda49744fc968b7c262240e7ec243c235b49506d347153f5757ea976540` |
| 28 | `theorem` | [kerLift_mk](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/kerlift-mk--9fb0240bb04d465431778023.md) | 289 | `result-track:9fb0240bb04d465431778023064e259819419868a9d8f6d6f43f9729422c24b6` |
| 29 | `theorem` | [kerLift_injective](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/kerlift-injective--d67a05436545a887366a50e3.md) | 295 | `result-track:d67a05436545a887366a50e30c8db46e84bfa29acaf152344979b2cddf759692` |
| 30 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/map--67ee13be26a0f35484d71902.md) | 303 | `declaration-track:67ee13be26a0f35484d7190218c0cec12fcd05078b5bbfeb833923f4f61536d9` |
| 31 | `theorem` | [map_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/declarations/map-apply--fafc34c4e1b7f1b44387c63d.md) | 312 | `result-track:fafc34c4e1b7f1b44387c63d255be48de69ab53432eaae0b3fc2c51084216479` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
