# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbce9ce602ea0758c8456aef5ed8f1791cf0ced5",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbce9ce602ea0758c8456aef5ed8f1791cf0ced5`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Algebra.MvPolynomial.Eval` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Plane](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/plane--1cd5233e399d4a0fbc9aba08.md) | 21 | `declaration-track:1cd5233e399d4a0fbc9aba08d4ca62ef3dcf5d2c82b16102678f3c395546a01c` |
| 2 | `def` | [equation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/equation--902d7f2a5e81bb06bb1c9c92.md) | 24 | `declaration-track:902d7f2a5e81bb06bb1c9c926304dc03c3132b5e1ef3e28f15299b7dfcc29214` |
| 3 | `def` | [sectionIdeal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/sectionideal--40ddf2d8b2a59e12569802ae.md) | 29 | `declaration-track:40ddf2d8b2a59e12569802aedbe78e1c20889980d7820162dd5b7cef77d5c8da` |
| 4 | `def` | [relations](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/relations--f7c3c51efbaeaf8ff73b8ec1.md) | 33 | `declaration-track:f7c3c51efbaeaf8ff73b8ec1e6a3b6bcdf45586fc92b8a6deeb5592d07cda3b7` |
| 5 | `abbrev` | [Jet](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/jet--f101dbf85f96d43609d91e92.md) | 36 | `declaration-track:f101dbf85f96d43609d91e9282e959b7f146655393f974d9287ed55ecc023120` |
| 6 | `abbrev` | [Parameter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/parameter--448f76555540840a5d07fcd1.md) | 37 | `declaration-track:448f76555540840a5d07fcd198029e1771dad7256e1fb2aabc811828244365a2` |
| 7 | `def` | [quotientMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/quotientmap--8249ca08c65c4f5eaa90e66d.md) | 41 | `declaration-track:8249ca08c65c4f5eaa90e66de33c70e8c6a7a7705971a23d3eb1d25b6ee5c01f` |
| 8 | `def` | [scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/scalar--0fc4d2a7fc850de696856384.md) | 44 | `declaration-track:0fc4d2a7fc850de696856384ab1742223d9307890b72ff3e824263f88d0e43be` |
| 9 | `def` | [x](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/x--56a7946b5f776cf11bc4a534.md) | 47 | `declaration-track:56a7946b5f776cf11bc4a5340f4bc59ceb7d722b9163933f6095016af46b2efe` |
| 10 | `def` | [y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/y--3852359baefc623858bffc69.md) | 50 | `declaration-track:3852359baefc623858bffc697e4f6d742bf0db9335db414ea1832256fb17f7bb` |
| 11 | `def` | [displacement](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/displacement--c00c5aec926cc8ddc8a9d9da.md) | 53 | `declaration-track:c00c5aec926cc8ddc8a9d9da35e40f82fd59f05040edbdee3a37511448fd3ef0` |
| 12 | `def` | [neighborhoodIdeal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/neighborhoodideal--14fc7470ee24a919591a4f86.md) | 57 | `declaration-track:14fc7470ee24a919591a4f86ea5ab3423314d649eb81de235aab6e60ca178862` |
| 13 | `def` | [parameter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/parameter--8589447c892b450805ce4cdd.md) | 60 | `declaration-track:8589447c892b450805ce4cddacf50bb4ba820041d91323ea94f8193844987021` |
| 14 | `def` | [parameterScalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/parameterscalar--91cf57e2cf4de548223e204e.md) | 63 | `declaration-track:91cf57e2cf4de548223e204e5500e75b0f9288a12727cb119c83b69b973ba168` |
| 15 | `def` | [derivative](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/derivative--302235597f68c33bca52b4cb.md) | 66 | `declaration-track:302235597f68c33bca52b4cb9b8810e07719927e802d47406d6407942f615fd5` |
| 16 | `def` | [quadratic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/quadratic--98bdd3474031b9a0d91b3d91.md) | 67 | `declaration-track:98bdd3474031b9a0d91b3d91d73575799c0d1dba1a95b664a3f9f014054e5f60` |
| 17 | `lemma` | [cubic_shift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/cubic-shift--03bb2fb1549bc37204430895.md) | 69 | `result-track:03bb2fb1549bc3720443089517fb3e84d09b8ebf892b325e321515209cce63fb` |
| 18 | `theorem` | [parameter_pow](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/parameter-pow--88ef3cb6a048626cb24e3b39.md) | 79 | `result-track:88ef3cb6a048626cb24e3b396a5be1e90b4e83d5c8e4f71cb3de4b0e4055696a` |
| 19 | `theorem` | [displacement_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/displacement-eq--db2b82bf622b265b75706252.md) | 83 | `result-track:db2b82bf622b265b75706252637b246834aaaf97656bde96e43ccbdf042bbaea` |
| 20 | `theorem` | [neighborhoodIdeal_pow](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/neighborhoodideal-pow--6f8ee05fc8f154582b7ac2c5.md) | 88 | `result-track:6f8ee05fc8f154582b7ac2c53b90a4b353b1f4dc676f2ea982d48902e79e017e` |
| 21 | `theorem` | [displacement_mem](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/displacement-mem--66608733d39d18626ee68e73.md) | 94 | `result-track:66608733d39d18626ee68e73f64a3c264e141a8e43462fb379052647e04305c2` |
| 22 | `theorem` | [y_mem](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/y-mem--3f44834d7cc9442a26e34484.md) | 98 | `result-track:3f44834d7cc9442a26e3448456ab63e98b9f82d5f0bf3d67bbe3016aec622461` |
| 23 | `theorem` | [y_pow](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/y-pow--c004b3d0190ea40579af88c5.md) | 101 | `result-track:c004b3d0190ea40579af88c5f871442aa649b8dd71ea944dad27d104c8226c00` |
| 24 | `theorem` | [quotient_cubic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/quotient-cubic--fe33e60da48ca29b37d0a92b.md) | 105 | `result-track:fe33e60da48ca29b37d0a92bb59f8e87df8ce3fc8748b1b5bff14d54fb813b08` |
| 25 | `theorem` | [displacement_eq_iterate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/displacement-eq-iterate--f399c89d8a653118e3889a49.md) | 116 | `result-track:f399c89d8a653118e3889a4937141f0ed08124ccdacf549b36d6745e0cb9129b` |
| 26 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/evaluate--dd89bf966da891a50e76bf9f.md) | 145 | `declaration-track:dd89bf966da891a50e76bf9fd8dc139bef654ec1aada10ca25149b054f290273` |
| 27 | `theorem` | [relations_le_kernel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/relations-le-kernel--d92d19f96475c989ca5564a8.md) | 153 | `result-track:d92d19f96475c989ca5564a8aa4838097493f286798960331bda470fe4a054a8` |
| 28 | `def` | [toParameter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/toparameter--29eab397c1ddb9c453df57d7.md) | 198 | `declaration-track:29eab397c1ddb9c453df57d7c9a0bf80e97f496c0ba90eb0b0cae9961563b9d1` |
| 29 | `def` | [fromParameter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/fromparameter--7b5f9c565d87908db2ce1508.md) | 204 | `declaration-track:7b5f9c565d87908db2ce1508f1f00cfe300d09c40c0667d357e7ee2b81d962ca` |
| 30 | `theorem` | [toParameter_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/toparameter-scalar--bc5386976d8588183fb3a4ff.md) | 208 | `result-track:bc5386976d8588183fb3a4ff43236f4499778e59021fa1ca59f1caf9131277e4` |
| 31 | `theorem` | [toParameter_x](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/toparameter-x--0c39c98115f11fca0d719117.md) | 213 | `result-track:0c39c98115f11fca0d7191172cdfea5fde06299d28793ee45403915eb52c69d1` |
| 32 | `theorem` | [toParameter_y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/toparameter-y--ef5e4c274ae6a1310aa4a6bd.md) | 220 | `result-track:ef5e4c274ae6a1310aa4a6bd54cd2b5578df6a892d187d5709fee1e0ee983150` |
| 33 | `theorem` | [fromParameter_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/fromparameter-scalar--c9b1ab254a37f4f8f11cea44.md) | 225 | `result-track:c9b1ab254a37f4f8f11cea44d5119820cc77419b102c9378d1ff7873897a5ad2` |
| 34 | `theorem` | [fromParameter_parameter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/fromparameter-parameter--bdab4329dba4a0f12632383e.md) | 229 | `result-track:bdab4329dba4a0f12632383e1ea39ec0ea64f367aee083d3d73a2b2ac0c651e1` |
| 35 | `theorem` | [hom_ext](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/hom-ext--6e73552e807c448d92ae84e5.md) | 234 | `result-track:6e73552e807c448d92ae84e5ca12b05a02a60c734273ed9ad31426de2fb42999` |
| 36 | `theorem` | [from_to](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/from-to--035c5ea1348bc56d1b894c45.md) | 248 | `result-track:035c5ea1348bc56d1b894c4515a4060dd1369688daebd52779c2de4ba18c0faa` |
| 37 | `theorem` | [to_from](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/to-from--5d3b16ce53d14b28f737673f.md) | 262 | `result-track:5d3b16ce53d14b28f737673fa696407d9b1b5fd34fecec46cc0c6699491fe320` |
| 38 | `def` | [ringEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/ringequiv--95031e1c95d7b76af8b2d30b.md) | 276 | `declaration-track:95031e1c95d7b76af8b2d30b264836c26a9bc7b0acc3b53e476841a4ae0a194a` |
| 39 | `theorem` | [kernel_evaluate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/kernel-evaluate--9675ab0a771afbdeb6728d89.md) | 288 | `result-track:9675ab0a771afbdeb6728d899b8be386c77d221f97b77f141ca5345135ff2553` |
| 40 | `def` | [algebraEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/algebraequiv--20b8037eeb14ab383bc6445c.md) | 301 | `declaration-track:20b8037eeb14ab383bc6445cc3d082b14af4d74aece97349781487a8950b443e` |
| 41 | `theorem` | [relations_antitone](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/relations-antitone--5f37e6c40ef599b390daf89b.md) | 310 | `result-track:5f37e6c40ef599b390daf89b2972e4b3e61188655ce91826c7d024f8966e2020` |
| 42 | `def` | [truncate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/truncate--073bdfbd01f410c5b9312a94.md) | 315 | `declaration-track:073bdfbd01f410c5b9312a943bbb3c485c68e24f9347f853ecf08f1eaa839946` |
| 43 | `theorem` | [truncate_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/truncate-scalar--a9c45966da11c2759b3ad1ca.md) | 319 | `result-track:a9c45966da11c2759b3ad1ca18047e38216e1fbcbd8f7e6c94b80045beeebd8f` |
| 44 | `theorem` | [truncate_x](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/truncate-x--3928c1e4615c9411f85a49eb.md) | 321 | `result-track:3928c1e4615c9411f85a49ebc00f1b722a145bbb6bd1f2f90c4892563e0759dd` |
| 45 | `theorem` | [truncate_y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/truncate-y--ca55b3e67a31caad58a4e4f1.md) | 323 | `result-track:ca55b3e67a31caad58a4e4f1dbe4c81da8f445a96956aa988c75c206f7bd9e48` |
| 46 | `def` | [parameterTruncate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/parametertruncate--e0791e0b54cd664a0fa9f38e.md) | 326 | `declaration-track:e0791e0b54cd664a0fa9f38e0fe9447bb2eadd083512046df218bf50d3c9c64f` |
| 47 | `theorem` | [parameterTruncate_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/parametertruncate-scalar--0df47044f16e08373646b9fb.md) | 336 | `result-track:0df47044f16e08373646b9fbb344401cf65a635a396ba655b5cc49c252968b4f` |
| 48 | `theorem` | [parameterTruncate_parameter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/parametertruncate-parameter--2a431f41364e7d6c407744c1.md) | 339 | `result-track:2a431f41364e7d6c407744c1012b1cf1b76471f6b447ad1971420f4097b919d9` |
| 49 | `theorem` | [fromParameter_truncate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/fromparameter-truncate--001ed410ae5f30a5ff0c612e.md) | 344 | `result-track:001ed410ae5f30a5ff0c612e3bb6e9f4df220b3854eb24bf01ac3d324acd0bcc` |
| 50 | `theorem` | [toParameter_truncate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/toparameter-truncate--a5e2082a51fccabbf9b6e989.md) | 358 | `result-track:a5e2082a51fccabbf9b6e989fa9f3c7e4836569d31e3550d451ae729ddf72f19` |
| 51 | `theorem` | [truncate_id](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/truncate-id--ab2abd4dac4727bfb70eb9c6.md) | 377 | `result-track:ab2abd4dac4727bfb70eb9c6656cf71b633dfe913dec3bb57e9b26959f47355f` |
| 52 | `theorem` | [truncate_comp](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/declarations/truncate-comp--b4921dffd032a65097593d33.md) | 381 | `result-track:b4921dffd032a65097593d33d19bf5cf4b4b45263a541615bc95201f5229cee3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
