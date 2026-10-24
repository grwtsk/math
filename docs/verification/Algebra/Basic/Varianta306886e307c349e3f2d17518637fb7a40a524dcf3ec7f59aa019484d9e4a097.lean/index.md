# Verification target: GRWTSK.Algebra.Basic.Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d12d68d4a465382d5fb5b0a5ae5470de61ee540d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d12d68d4a465382d5fb5b0a5ae5470de61ee540d`.

Source path: `GRWTSK/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Even` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Hom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [castAddMonoidHom](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/castaddmonoidhom--03c760b6bf911ee17ceb430e.md) | 36 | `declaration-track:03c760b6bf911ee17ceb430e31f4207f6278c8c70fe0514ee9027e256771c2f2` |
| 2 | `theorem` | [coe_castAddMonoidHom](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/coe-castaddmonoidhom--5ff55707040fa6af463c6b5c.md) | 43 | `result-track:5ff55707040fa6af463c6b5cefda43739935c60a9b1060a30f0cc479fabc1c36` |
| 3 | `lemma` | [_root_.Even.natCast](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/root-even-natcast--84a8a15f7e4b7cb68de568e1.md) | 46 | `result-track:84a8a15f7e4b7cb68de568e1a59e2a30fad45a27912b3b728cb6fd5e3e10c2df` |
| 4 | `lemma` | [cast_mul](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/cast-mul--b5f2ccdc4ca1cdb5b6ef893b.md) | 52 | `result-track:b5f2ccdc4ca1cdb5b6ef893b07f968e7f8f5c7d7d7c4a3a57241c53445e4aa49` |
| 5 | `def` | [castRingHom](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/castringhom--2566c2769140dcf751120e38.md) | 57 | `declaration-track:2566c2769140dcf751120e384050e5af91b45244492bdf8c9520b0fe2d4778d2` |
| 6 | `lemma` | [coe_castRingHom](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/coe-castringhom--71ad9ad3c11f843a5fe72a85.md) | 60 | `result-track:71ad9ad3c11f843a5fe72a85e7cdf4bd6bb7af5c7451efa48a19b0df86af03ed` |
| 7 | `lemma` | [_root_.nsmul_eq_mul'](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/root-nsmul-eq-mul--fc573f428a262be8c0511a56.md) | 62 | `result-track:fc573f428a262be8c0511a56719a642ea71af5d005a5882cdaece4549f39d31e` |
| 8 | `lemma` | [_root_.nsmul_eq_mul](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/root-nsmul-eq-mul--778145542104561d1435d2a4.md) | 67 | `result-track:778145542104561d1435d2a40ac4d5e794ab2d6063b6da79fc1f3c72196802c6` |
| 9 | `lemma` | [cast_pow](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/cast-pow--8a80483cad2a7dcda018b367.md) | 78 | `result-track:8a80483cad2a7dcda018b36707011e02b232741bbb80f294e89aa8815918731c` |
| 10 | `lemma` | [cast_dvd_cast](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/cast-dvd-cast--ba497a8a38c3be1250fb102a.md) | 83 | `result-track:ba497a8a38c3be1250fb102a411d4fed8b37558d4645d876b2e51842d38c7181` |
| 11 | `theorem` | [eq_natCast'](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/eq-natcast--5c82e549fd2f7dae88f4dcfd.md) | 95 | `result-track:5c82e549fd2f7dae88f4dcfd547818c0e96839259f1bc152c5ccdd30ac0b4fc4` |
| 12 | `theorem` | [map_natCast'](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/map-natcast--ed9f71abfb43ea09fd7659a5.md) | 99 | `result-track:ed9f71abfb43ea09fd7659a549ea04f8ea75fb4e5c770d902ce1eacbcee9eb2a` |
| 13 | `theorem` | [map_ofNat'](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/map-ofnat--3cde97d7398008a962d3e444.md) | 104 | `result-track:3cde97d7398008a962d3e4443e2d02ff135b06156574a99685e5843cffa947d7` |
| 14 | `theorem` | [ext_nat''](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/ext-nat--773ca631b043b2674105c112.md) | 115 | `result-track:773ca631b043b2674105c112902479c3b1ecb06177811bbebfe011e73a4d14a4` |
| 15 | `theorem` | [MonoidWithZeroHom.ext_nat](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/monoidwithzerohom-ext-nat--b50ad53858de336353d00350.md) | 123 | `result-track:b50ad53858de336353d00350455be687b5f6e5e74f2d8f1caa600391ec0a0915` |
| 16 | `theorem` | [eq_natCast](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/eq-natcast--d1d96bfd35947036fd367f0a.md) | 133 | `result-track:d1d96bfd35947036fd367f0a99cffcb756d14ee62b64708e45a88fd19be5ca53` |
| 17 | `theorem` | [map_natCast](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/map-natcast--80180151f3a898d05b1c7e87.md) | 137 | `result-track:80180151f3a898d05b1c7e87131b94b59e65f93af4124787cf7c90cec9ba3d2f` |
| 18 | `theorem` | [map_ofNat](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/map-ofnat--9a47f1110a5c4687974552bf.md) | 145 | `result-track:9a47f1110a5c4687974552bf4c48062a08c5473790a177d40cb9cabfa0afde57` |
| 19 | `theorem` | [ext_nat](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/ext-nat--28021367f8741e7ffbe8d10f.md) | 149 | `result-track:28021367f8741e7ffbe8d10faa23e6371dc876e9725f7dcfe456c9f68853d40c` |
| 20 | `theorem` | [NeZero.nat_of_neZero](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/nezero-nat-of-nezero--46fe2a3387c9c05b4c0fb946.md) | 152 | `result-track:46fe2a3387c9c05b4c0fb946592a73fe15c08156e88ede13bfcb356709add4eb` |
| 21 | `theorem` | [eq_natCast'](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/eq-natcast--ac43b7d55bd04b26ec6cd9a8.md) | 162 | `result-track:ac43b7d55bd04b26ec6cd9a8accdbe7c8d8ad30924e1d1e807dcac29130f704b` |
| 22 | `theorem` | [Nat.cast_id](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/nat-cast-id--c2b5fdad1f4604eedb08f9ae.md) | 168 | `result-track:c2b5fdad1f4604eedb08f9aeb1570b18d10723b486c5f0e0c200f95ddf2f82d9` |
| 23 | `theorem` | [Nat.castRingHom_nat](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/nat-castringhom-nat--738f8e20da414e932ba2ac9e.md) | 172 | `result-track:738f8e20da414e932ba2ac9ed88b08cdd47d4578bea27f4c92050324622ad991` |
| 24 | `instance` | [Nat.uniqueRingHom](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/nat-uniqueringhom--f25d6c94529259af41f6cad3.md) | 177 | `declaration-track:f25d6c94529259af41f6cad3d8b947981a060cfb3211dc6628b124f3d2b44a7c` |
| 25 | `instance` | [instNatCast](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/instnatcast--560333b1ba1835b17f6dd7d1.md) | 188 | `declaration-track:560333b1ba1835b17f6dd7d18e9d3be1b2855f4d5287ef91acf91d04032abe55` |
| 26 | `theorem` | [natCast_apply](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/natcast-apply--98b29a1a70a358b64631a8ae.md) | 191 | `result-track:98b29a1a70a358b64631a8aec3d4f364809403a77b235d26c40d0c8da724fa76` |
| 27 | `theorem` | [natCast_def](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/natcast-def--c151ff9ccaad099b21191d52.md) | 194 | `result-track:c151ff9ccaad099b21191d5236c25856e02821801dbd3483da289479b5928b0f` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/instance--2b630dadc836eb478eed9941.md) | 203 | `declaration-track:2b630dadc836eb478eed99412ccf93632ec8b55bfd89d07bb47a20f1f7e96b9e` |
| 29 | `theorem` | [ofNat_apply](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/ofnat-apply--2f9349eab5394f588deaf868.md) | 207 | `result-track:2f9349eab5394f588deaf8683c67fa467fcfc5b5037aaa925ab23438c2dc2aba` |
| 30 | `lemma` | [ofNat_def](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/ofnat-def--97738dfdd0f7f587ddb9f995.md) | 209 | `result-track:97738dfdd0f7f587ddb9f995036953ae64a293dbd01cb483b050038ea3e69df8` |
| 31 | `theorem` | [Sum.elim_natCast_natCast](../../../../mathematics/Algebra/Basic/Varianta306886e307c349e3f2d17518637fb7a40a524dcf3ec7f59aa019484d9e4a097.lean/declarations/sum-elim-natcast-natcast--7dbd465fad10c7bbb236d2e4.md) | 215 | `result-track:7dbd465fad10c7bbb236d2e422c2e187c1d785950c11d6870cb6606b38ed0fa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
