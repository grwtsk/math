# Verification target: GRWTSK.Algebra.Prod.Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "035d669964876f96e42e8f8dcac67a297fb2aadf",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `035d669964876f96e42e8f8dcac67a297fb2aadf`.

Source path: `GRWTSK/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Maps` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/prod--4beac81caa7ce629880381fd.md) | 25 | `declaration-track:4beac81caa7ce629880381fdba072d425567836ed4fc449b77c430b2486328af` |
| 2 | `theorem` | [coe_prod](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/coe-prod--30067a70297bf83a37a5a946.md) | 28 | `result-track:30067a70297bf83a37a5a9462d7475920fbc7f92c6c2cdb9feabc6a22be8e83a` |
| 3 | `theorem` | [mem_prod](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/mem-prod--c6482c9c828ca2c3bff3dc9c.md) | 32 | `result-track:c6482c9c828ca2c3bff3dc9c96dd368c345a7ee55fcdacab5ba78790bfbf86e5` |
| 4 | `theorem` | [prod_top_top](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/prod-top-top--38cfff6351e4c44d3dddf955.md) | 36 | `result-track:38cfff6351e4c44d3dddf9556c8164a8cc27e705b5a013e742356cf24d97051d` |
| 5 | `theorem` | [prod_bot_bot](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/prod-bot-bot--d5c15cdbd6c9cf51e28f2d0a.md) | 40 | `result-track:d5c15cdbd6c9cf51e28f2d0a39e02221356aa48d6c25341d0ff3db81fb949f30` |
| 6 | `theorem` | [prod_mono](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/prod-mono--12976cc00275a1372bffe714.md) | 44 | `result-track:12976cc00275a1372bffe714939ecce03a8ff83205ca68a8343059cabc043b60` |
| 7 | `theorem` | [prod_mono_left](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/prod-mono-left--899deedee617f6c54355c5f0.md) | 49 | `result-track:899deedee617f6c54355c5f02cec07d732ca59218850b78d3cb04e899005d74c` |
| 8 | `theorem` | [prod_mono_right](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/prod-mono-right--0e08b37898c8f0a270fc9052.md) | 53 | `result-track:0e08b37898c8f0a270fc90521a8413a29e0318886c308cf0847a2c5bc4af563e` |
| 9 | `theorem` | [ideal_prod_eq](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/ideal-prod-eq--ee7c924b2d958e15ba15b1e6.md) | 58 | `result-track:ee7c924b2d958e15ba15b1e62fac99946b85045b6a3ca46acc7e08c319b0491e` |
| 10 | `theorem` | [map_fst_prod](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/map-fst-prod--6455fce7ce3add3832bc2aa4.md) | 69 | `result-track:6455fce7ce3add3832bc2aa427ad0dc37abe2c1e4daf65ef8d863e09bd7b3410` |
| 11 | `theorem` | [map_snd_prod](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/map-snd-prod--97fe78d0bd09c6d23ff63728.md) | 78 | `result-track:97fe78d0bd09c6d23ff637281c9be1084af69186459fe9afd31353aaf14aa896` |
| 12 | `theorem` | [map_prodComm_prod](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/map-prodcomm-prod--dd2f43f88bf13acfdaf1ff2a.md) | 87 | `result-track:dd2f43f88bf13acfdaf1ff2af8005f274834469c09f6055c54251fcfadc7de6d` |
| 13 | `def` | [idealProdEquiv](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/idealprodequiv--d83a1d4c279cb9388f02afda.md) | 94 | `declaration-track:d83a1d4c279cb9388f02afda985bde3ebb24c5e0868b9a0e557b7853e772832f` |
| 14 | `theorem` | [idealProdEquiv_symm_apply](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/idealprodequiv-symm-apply--119e536693b8db8e46a76813.md) | 106 | `result-track:119e536693b8db8e46a76813d903a480d5acfa44347c2b19e46ef5a572d3c95d` |
| 15 | `theorem` | [span_prod_le](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/span-prod-le--8a2393ac9d947613d38b1b9e.md) | 110 | `result-track:8a2393ac9d947613d38b1b9ebba45d144849e13eb8eac3bf2f44273c7d7faad3` |
| 16 | `theorem` | [span_prod](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/span-prod--274bdea59e31f6263ade04d8.md) | 117 | `result-track:274bdea59e31f6263ade04d8ad853fd84522dff547d50ee59afb10278b58cc6f` |
| 17 | `theorem` | [prod_inj](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/prod-inj--7e08c0c02e40f0dc031b1caa.md) | 130 | `result-track:7e08c0c02e40f0dc031b1caaa67ac68c1a7608d6d4a0b5d6cc6828498568efb5` |
| 18 | `theorem` | [prod_eq_bot_iff](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/prod-eq-bot-iff--92fac94393c9ca36d250c2e7.md) | 137 | `result-track:92fac94393c9ca36d250c2e7d0d128446633e8fb58f1953cfab671c0e6d985dc` |
| 19 | `theorem` | [prod_eq_top_iff](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/prod-eq-top-iff--29ef2bb3c59c3eca81505301.md) | 142 | `result-track:29ef2bb3c59c3eca8150530197cb837767aa0b748933eb8b607bd2cec43be8eb` |
| 20 | `theorem` | [isPrime_of_isPrime_prod_top](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/isprime-of-isprime-prod-top--bafd026c15cc1736daba5f55.md) | 146 | `result-track:bafd026c15cc1736daba5f55344a46246982f998aa3f81a460cad9c721d76985` |
| 21 | `theorem` | [isPrime_of_isPrime_prod_top'](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/isprime-of-isprime-prod-top--126b797cf7409c816e52c9bf.md) | 158 | `result-track:126b797cf7409c816e52c9bf552640436be80fb84f37f352dd80c39c6b22a065` |
| 22 | `theorem` | [isPrime_ideal_prod_top](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/isprime-ideal-prod-top--1e75a309d7a704769c6547da.md) | 165 | `result-track:1e75a309d7a704769c6547da43389cc7685a126bca9f191a7c0370c6beb77e6c` |
| 23 | `theorem` | [isPrime_ideal_prod_top'](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/isprime-ideal-prod-top--28fd3b7aa99db95b80b4f89a.md) | 169 | `result-track:28fd3b7aa99db95b80b4f89a27ea45752f605bebb39381a2ca193378734db566` |
| 24 | `theorem` | [ideal_prod_prime_aux](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/ideal-prod-prime-aux--d081a4628ee7fa1211c33d8b.md) | 175 | `result-track:d081a4628ee7fa1211c33d8b86cb6c81b18c28762478d26ef1744f625145c7f0` |
| 25 | `theorem` | [ideal_prod_prime](../../../../mathematics/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/declarations/ideal-prod-prime--3c85790de74ff68be2edc27c.md) | 183 | `result-track:3c85790de74ff68be2edc27c84ced6ef612ae7f1069c6428b3ab6e6d23406edf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
