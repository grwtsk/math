# Verification target: GRWTSK.Algebra.Algebra.Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfbe05a9165f834e092363166cc23795b5b747b2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfbe05a9165f834e092363166cc23795b5b747b2`.

Source path: `GRWTSK/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Module.FaithfullyFlat.of_comap_surjective](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/declarations/module-faithfullyflat-of-comap-surjective--7db5c60b3f5394161fd2e0f1.md) | 56 | `result-track:7db5c60b3f5394161fd2e0f1e9108c9eb1273adf86fd2daf118d52c4ffed98eb` |
| 2 | `lemma` | [Module.FaithfullyFlat.of_flat_of_isLocalHom](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/declarations/module-faithfullyflat-of-flat-of-islocalhom--d3f033747bbe7a27af7c2f6e.md) | 68 | `result-track:d3f033747bbe7a27af7c2f6e08533048a1afd8f948e1420decab57faaacbd22d` |
| 3 | `instance` | [Module.FaithfullyFlat.of_isIntegral_of_isDomain](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/declarations/module-faithfullyflat-of-isintegral-of-isdomain--044d125383e85eeda287bc4d.md) | 79 | `declaration-track:044d125383e85eeda287bc4d49f8b3b5833dfae387bdc94e15ae9d370a554abd` |
| 4 | `lemma` | [Module.FaithfullyFlat.tensorProduct_mk_injective](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/declarations/module-faithfullyflat-tensorproduct-mk-injective--08554c51cf977f7f92b5e718.md) | 93 | `result-track:08554c51cf977f7f92b5e71846ab49365e35032707c9466002a4131fb46f5b6d` |
| 5 | `instance` | [Module.FaithfullyFlat.faithfulSMul](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/declarations/module-faithfullyflat-faithfulsmul--42c5183554bf050304cd50f4.md) | 104 | `declaration-track:42c5183554bf050304cd50f4213e6608c032778ae4c5c532109ce56a20def600` |
| 6 | `lemma` | [Ideal.comap_map_eq_self_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/declarations/ideal-comap-map-eq-self-of-faithfullyflat--3577078d87540a0d55ab886b.md) | 115 | `result-track:3577078d87540a0d55ab886b1c2619e84e4944cf2fef6fe03b776cf28bd05c57` |
| 7 | `lemma` | [Ideal.comap_surjective_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/declarations/ideal-comap-surjective-of-faithfullyflat--e51b144ed6bddb5455b34578.md) | 135 | `result-track:e51b144ed6bddb5455b34578c2d26aa492e4397b58898f2fb4048686dccedd23` |
| 8 | `lemma` | [Ideal.map_injective_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/declarations/ideal-map-injective-of-faithfullyflat--116f57486dd44a6bbb7f46b5.md) | 140 | `result-track:116f57486dd44a6bbb7f46b542fbf9b49c9d9aa7773ace68579edcc945700aef` |
| 9 | `lemma` | [Ideal.exists_isPrime_liesOver_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/declarations/ideal-exists-isprime-liesover-of-faithfullyflat--7ba5c40edab346502b910e5a.md) | 146 | `result-track:7ba5c40edab346502b910e5ab9a3f4ecec46777bfe645e996b49648f08d53226` |
| 10 | `lemma` | [PrimeSpectrum.comap_surjective_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/declarations/primespectrum-comap-surjective-of-faithfullyflat--91a960836a9a108040801122.md) | 154 | `result-track:91a960836a9a108040801122879155bebbb31129327310627bc7af4e54de0405` |
| 11 | `instance` | [Module.FaithfullyFlat.isLocalHom](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/declarations/module-faithfullyflat-islocalhom--7631ccbbb09d242f6e775120.md) | 163 | `declaration-track:7631ccbbb09d242f6e77512006ca241f3d28e91777bc9fd4673248a2cccf350f` |
| 12 | `theorem` | [Module.FaithfullyFlat.isLocalRing](../../../../mathematics/Algebra/Algebra/Variant0fc544e6dfc9d9d55e30cf00b975eae995ff8107b8907c886901be3e20abda96.lean/declarations/module-faithfullyflat-islocalring--a5cae718015f4af7114ac6b8.md) | 167 | `result-track:a5cae718015f4af7114ac6b86f63b65fd4e5ce8b6251bca5d3ad6b4cf5f24b88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
