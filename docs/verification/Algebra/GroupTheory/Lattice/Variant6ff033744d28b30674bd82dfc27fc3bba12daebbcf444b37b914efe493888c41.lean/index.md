# Verification target: GRWTSK.Algebra.GroupTheory.Lattice.Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb2eac872750991afd1ea5fe3238309d0cf04e8c",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb2eac872750991afd1ea5fe3238309d0cf04e8c`.

Source path: `GRWTSK/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/instance--1c7d7bd367f5e6b2518acab8.md) | 36 | `declaration-track:1c7d7bd367f5e6b2518acab8801f355979857dec03152540a5634c4e590c8eca` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/instance--b0b5d5c5620157d4d8145fc6.md) | 39 | `declaration-track:b0b5d5c5620157d4d8145fc6dbdc9af8214b76ef8c649b6659b9f289ef90379e` |
| 3 | `lemma` | [iSup_coe_eq_top](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/isup-coe-eq-top--dcc38f51633112d5cae72ab3.md) | 45 | `result-track:dcc38f51633112d5cae72ab31d35e0d915136ba081e0ee5e4f2a13d68df6e253` |
| 4 | `lemma` | [iSup_coe_ne_top](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/isup-coe-ne-top--ede33b561553127faf666308.md) | 46 | `result-track:ede33b561553127faf6663080f380d2111b735d470b827bfda294997cf02be18` |
| 5 | `lemma` | [iSup_coe_lt_top](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/isup-coe-lt-top--03b174cd17846db63967e51b.md) | 47 | `result-track:03b174cd17846db63967e51b49bbe9d74e293f8d955246ae004f3e87458aa9aa` |
| 6 | `lemma` | [iInf_coe_eq_top](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/iinf-coe-eq-top--331d93099c5fc2b375574571.md) | 48 | `result-track:331d93099c5fc2b375574571bb137a3707f42d0c9784a49fa10927de307020e5` |
| 7 | `lemma` | [iInf_coe_ne_top](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/iinf-coe-ne-top--d1136d00ab874c5337789f9e.md) | 49 | `result-track:d1136d00ab874c5337789f9ea401b7df12d7dcf45e02457bc225526ee7f22603` |
| 8 | `lemma` | [iInf_coe_lt_top](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/iinf-coe-lt-top--6746ce8b156f2911a6a269d9.md) | 51 | `result-track:6746ce8b156f2911a6a269d97de883f0ed5fc2cfad13621a895ba40bcf3b31b0` |
| 9 | `lemma` | [coe_sSup](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/coe-ssup--f813f28884c6fc348847adea.md) | 53 | `result-track:f813f28884c6fc348847adead1f5cff4e2163949efea585bf2c0b4b995e2d3d8` |
| 10 | `lemma` | [coe_sInf](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/coe-sinf--aa662b5933a31d68678c992c.md) | 55 | `result-track:aa662b5933a31d68678c992c103be59e096d10777d3bf5219d7cf416b4ac295f` |
| 11 | `lemma` | [coe_iSup](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/coe-isup--03ade34b98cbf1ff18f19b5a.md) | 58 | `result-track:03ade34b98cbf1ff18f19b5adb819c3f139475708115aae35f87e3402979bad8` |
| 12 | `lemma` | [coe_iInf](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/coe-iinf--05622ea8dc1035697a190d27.md) | 60 | `result-track:05622ea8dc1035697a190d27ea7ce5607639bd5da661074f00aac0c3bd02ef2d` |
| 13 | `lemma` | [iInf_eq_top_of_isEmpty](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/iinf-eq-top-of-isempty--37f196becd7a6f867505776f.md) | 64 | `result-track:37f196becd7a6f867505776f1408c3fe67ad8c216cc8c4589cdc64ca1d25ede0` |
| 14 | `lemma` | [iInf_toNat](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/iinf-tonat--28b5022d056187be0600837d.md) | 67 | `result-track:28b5022d056187be0600837d5896adb4bbb5e74c05d67e4e656c979ff8563bb5` |
| 15 | `lemma` | [iInf_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/iinf-eq-zero--b3330f7cc852bc7045da019e.md) | 72 | `result-track:b3330f7cc852bc7045da019e52e6841ff619deb4140a166fb0c41bf4a69a1dd5` |
| 16 | `lemma` | [sSup_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/ssup-eq-zero--3c5630a46213ea9a5b830ec2.md) | 77 | `result-track:3c5630a46213ea9a5b830ec2e7c6ff7f5a72bf99e8000721e5a27f3db1c791a3` |
| 17 | `lemma` | [sInf_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/sinf-eq-zero--00a55ca7ffce81cc06876a04.md) | 80 | `result-track:00a55ca7ffce81cc06876a044b507ad7938889fccd561f5b1fb86ceef5ac73e9` |
| 18 | `lemma` | [sSup_eq_zero'](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/ssup-eq-zero--5bbb7f855c94ea27835f6298.md) | 84 | `result-track:5bbb7f855c94ea27835f629899b8abe2fb47031fd4a28edc835f674fbf06486d` |
| 19 | `lemma` | [iSup_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/isup-eq-zero--ae637320ad2bbd1d0396715e.md) | 87 | `result-track:ae637320ad2bbd1d0396715ed5984e92c84f43e761f466ab7b179a0df018ef1a` |
| 20 | `lemma` | [iSup_zero](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/isup-zero--1dfb1551358b733e840fc1c3.md) | 88 | `result-track:1dfb1551358b733e840fc1c3025b8cc163bf53f1c3590427d1a917e3fe602a84` |
| 21 | `lemma` | [sSup_eq_top_of_infinite](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/ssup-eq-top-of-infinite--fb2f23b71fb164be3d776564.md) | 90 | `result-track:fb2f23b71fb164be3d77656425d9fe85edc86638ec3d1d5df4e6b54aa114e5ac` |
| 22 | `lemma` | [finite_of_sSup_lt_top](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/finite-of-ssup-lt-top--a27464b65dc00e35ad061ed4.md) | 105 | `result-track:a27464b65dc00e35ad061ed48983cc768f4f4df42951717ec9a82a94459da561` |
| 23 | `lemma` | [sSup_mem_of_nonempty_of_lt_top](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/ssup-mem-of-nonempty-of-lt-top--87764a502a3fdced6278918a.md) | 110 | `result-track:87764a502a3fdced6278918a65ca7e3c593ef6233c27571b33d107637aeab23c` |
| 24 | `lemma` | [exists_eq_iSup_of_lt_top](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/exists-eq-isup-of-lt-top--c614fb6f3d9ae88ffe5b708a.md) | 113 | `result-track:c614fb6f3d9ae88ffe5b708a05c5864549ea12e078180a5fabbf92cf50001e65` |
| 25 | `lemma` | [exists_eq_iInf](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/exists-eq-iinf--f4bc8eb197a28526b91360a2.md) | 117 | `result-track:f4bc8eb197a28526b91360a2bbc6919c0e9ccf80a5b0af734a0ac8f4f179af35` |
| 26 | `lemma` | [exists_eq_iSup₂_of_lt_top](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/exists-eq-isup-of-lt-top--2f7a8b010d90379a62573b77.md) | 120 | `result-track:2f7a8b010d90379a62573b77c5ed33d51256acfcb69bdc17d04625ac574f136a` |
| 27 | `lemma` | [iSup_natCast](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/isup-natcast--d5d8a4bbcfd2c26c6b34cd39.md) | 127 | `result-track:d5d8a4bbcfd2c26c6b34cd39cb9289119d36631ec030ee2f1984faaf9df81378` |
| 28 | `lemma` | [mul_iSup](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/mul-isup--d8651e4c459c444449ef74d0.md) | 130 | `result-track:d8651e4c459c444449ef74d09d03f24550c78c26a0835f1fb044bd4f04adb759` |
| 29 | `lemma` | [iSup_mul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/isup-mul--520942fb3d3418f6a1c974cd.md) | 149 | `result-track:520942fb3d3418f6a1c974cdc53933b2d23d11ca87382d6888b667e92ef9b1d2` |
| 30 | `lemma` | [mul_sSup](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/mul-ssup--e94bd3a6fa9f090b27c18ed9.md) | 152 | `result-track:e94bd3a6fa9f090b27c18ed9348a2ef92ee0fdf159c093a2b92ac4e8ffaf384e` |
| 31 | `lemma` | [sSup_mul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/ssup-mul--a969dadb55143613d9c980de.md) | 155 | `result-track:a969dadb55143613d9c980de5f23f9629ac550cb6aa6e51ed0b8528282faa401` |
| 32 | `lemma` | [mul_iInf](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/mul-iinf--d9900fe483d1431153a71ca5.md) | 158 | `result-track:d9900fe483d1431153a71ca5977c9ed4bc474529f195e59917b5efb2ad902c5f` |
| 33 | `lemma` | [iInf_mul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/iinf-mul--ae6b802bdd9552e543c97ec9.md) | 164 | `result-track:ae6b802bdd9552e543c97ec9f7cdb8a4c94c4dddbfc878e368d454128be4133c` |
| 34 | `lemma` | [mul_iInf'](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/mul-iinf--844527a1a15ed44b281ee8a1.md) | 168 | `result-track:844527a1a15ed44b281ee8a1f595eafa084af85c1a83682097cabc1df8147538` |
| 35 | `lemma` | [iInf_mul'](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/iinf-mul--faa6bed1ff6e2846a37719dd.md) | 175 | `result-track:faa6bed1ff6e2846a37719dd6186f790980fc3cdae9a4621ad0629661fa1359c` |
| 36 | `lemma` | [mul_iInf_of_ne](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/mul-iinf-of-ne--660527488ad637762afadcd5.md) | 180 | `result-track:660527488ad637762afadcd5a90a046ebae6ec481baefa27d4841c76842826e0` |
| 37 | `lemma` | [iInf_mul_of_ne](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/iinf-mul-of-ne--eafbd86152a5968eeffabace.md) | 185 | `result-track:eafbd86152a5968eeffabace66d025d5c65c335655e6db5b5cfd4eaef01fc986` |
| 38 | `lemma` | [add_iSup](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/add-isup--01b7c100373f538d1655ee73.md) | 188 | `result-track:01b7c100373f538d1655ee73b402bc9598ce9e104e5ca438a145ef8ffb1ad850` |
| 39 | `lemma` | [iSup_add](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/isup-add--b6a7399a9c668eafd4fd9cfb.md) | 195 | `result-track:b6a7399a9c668eafd4fd9cfb2b4bcd38d235cdcabae577e36ed94811d048e758` |
| 40 | `lemma` | [add_biSup'](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/add-bisup--86ec90724163752f563979e4.md) | 198 | `result-track:86ec90724163752f563979e4305f102bd7b79c16514461d2578f25cee82bb667` |
| 41 | `lemma` | [biSup_add'](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/bisup-add--df6a2be69f31932e93d4c5d5.md) | 203 | `result-track:df6a2be69f31932e93d4c5d562532c296ab6a90c293bbb9b094dc00e0f7e354b` |
| 42 | `lemma` | [add_biSup](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/add-bisup--95d2018e6363b82a82a7db95.md) | 206 | `result-track:95d2018e6363b82a82a7db95f404fd3314b04be7f2741b2cb9cf1c60b458bf73` |
| 43 | `lemma` | [biSup_add](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/bisup-add--735434a5f1becaa54b0f146f.md) | 209 | `result-track:735434a5f1becaa54b0f146f01aec177ad551d0db59bfa0b50db712f5ba72336` |
| 44 | `lemma` | [add_sSup](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/add-ssup--120e1d0d46d88db9e2e53af0.md) | 212 | `result-track:120e1d0d46d88db9e2e53af066070f7a9b0a66655ab758520b210732cfab4601` |
| 45 | `lemma` | [sSup_add](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/ssup-add--68256e4784e503408f41276d.md) | 215 | `result-track:68256e4784e503408f41276d069322d3625c104de500c3b8753a2982c902b714` |
| 46 | `lemma` | [iSup_add_iSup_le](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/isup-add-isup-le--1d47dadaea420ce1897be5b1.md) | 218 | `result-track:1d47dadaea420ce1897be5b113bb711ed7ddf823db5e56e8283a7a0575f9447d` |
| 47 | `lemma` | [biSup_add_biSup_le'](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/bisup-add-bisup-le--5ca1a8d508aac0cb8213f092.md) | 221 | `result-track:5ca1a8d508aac0cb8213f0928b8b9ed1dbe82d148475a1bbddbe76378cc22f3b` |
| 48 | `lemma` | [biSup_add_biSup_le](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/bisup-add-bisup-le--3b7bcba2e73e14c15e36e59c.md) | 227 | `result-track:3b7bcba2e73e14c15e36e59c450c2677c351575be74567bdc454f43869567ca4` |
| 49 | `lemma` | [iSup_add_iSup](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/isup-add-isup--1c0c6ab26736752634562ba0.md) | 231 | `result-track:1c0c6ab26736752634562ba0cce57828b7dbe7b2844a05ecee6fce37f1988bd1` |
| 50 | `lemma` | [iSup_add_iSup_of_monotone](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/isup-add-isup-of-monotone--6b810b92f35f73fd44a2d887.md) | 239 | `result-track:6b810b92f35f73fd44a2d887881dee625672991fbb0db75a8ae492e81521a70b` |
| 51 | `lemma` | [smul_iSup](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/smul-isup--506baeabc620151062767701.md) | 243 | `result-track:506baeabc620151062767701739855beab21a9c416b3675c379408aa55e8c367` |
| 52 | `lemma` | [smul_sSup](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/smul-ssup--99ce024edac040b9ae763a76.md) | 247 | `result-track:99ce024edac040b9ae763a76d2a9f0b9011952338cb864dcbd98c3819f70c83c` |
| 53 | `lemma` | [sub_iSup](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant6ff033744d28b30674bd82dfc27fc3bba12daebbcf444b37b914efe493888c41.lean/declarations/sub-isup--4c91649ab1b81ef79e58384c.md) | 251 | `result-track:4c91649ab1b81ef79e58384c175c0e4d9e8daaa147f8bbcee89abb3d4090f459` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
