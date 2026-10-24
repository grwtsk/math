# Verification target: GRWTSK.Algebra.KummerDedekind.Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c24b9d9f29337f742582dd694483db4d722483cb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/index.md) · [Full source](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c24b9d9f29337f742582dd694483db4d722483cb`.

Source path: `GRWTSK/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean.json)

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
| 1 | `def` | [exponent](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/exponent--4e9f9d7130aafbc6eadbce09.md) | 65 | `declaration-track:4e9f9d7130aafbc6eadbce0925234823d4b3db84a44c211f43dd54e4a3719186` |
| 2 | `theorem` | [exponent_eq_one_iff](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/exponent-eq-one-iff--9ec81f1ae0ddaf50d9129b47.md) | 69 | `result-track:9ec81f1ae0ddaf50d9129b47fc33aa6b7fc9d2d2123cf5c68b07454bcba7acba` |
| 3 | `theorem` | [not_dvd_exponent_iff](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/not-dvd-exponent-iff--654feae58cc1aefee4b4749b.md) | 72 | `result-track:654feae58cc1aefee4b4749b3fbc26464a2d9e1c27b3f86ff268a513c9e4d31d` |
| 4 | `theorem` | [exponent_eq_sInf](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/exponent-eq-sinf--444ebf3c33c4650a82474648.md) | 79 | `result-track:444ebf3c33c4650a824746483109ddf9eb7e51ac6802af4686af30d3d11be012` |
| 5 | `def` | [ZModXQuotSpanEquivQuotSpan](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/zmodxquotspanequivquotspan--da89cbfb804e8e98b46c6db7.md) | 87 | `declaration-track:da89cbfb804e8e98b46c6db711f6f4796591bdb74595256d0d345719851746fb` |
| 6 | `theorem` | [ZModXQuotSpanEquivQuotSpan_mk_apply](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/zmodxquotspanequivquotspan-mk-apply--a734ffe7329cac94b96a5f8e.md) | 95 | `result-track:a734ffe7329cac94b96a5f8eea057056a94d5dfa1b31b451e8bbe6af5aef9690` |
| 7 | `abbrev` | [monicFactorsMod](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/monicfactorsmod--bb19178d5a1dea2614e1b5d4.md) | 110 | `declaration-track:bb19178d5a1dea2614e1b5d4705ce6f79954af7d80f4fc12cd10a4acd7d71975` |
| 8 | `def` | [ZModXQuotSpanEquivQuotSpanPair](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/zmodxquotspanequivquotspanpair--708f1186f1e6164e84e2e366.md) | 117 | `declaration-track:708f1186f1e6164e84e2e3664b6f646573737257eca5ea2ee3c118dd28755d7e` |
| 9 | `def` | [primesOverSpanEquivMonicFactorsModAux](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/primesoverspanequivmonicfactorsmodaux--a086d3a3ccdc3e37fb2abe3e.md) | 149 | `declaration-track:a086d3a3ccdc3e37fb2abe3ea905fa40ecadf3cdf7c721400f2b5c2f9305b66b` |
| 10 | `theorem` | [primesOverSpanEquivMonicFactorsModAux_symm_apply](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/primesoverspanequivmonicfactorsmodaux-symm-apply--7b3a03f89f4b26cf081d7603.md) | 156 | `result-track:7b3a03f89f4b26cf081d76038d44dba58891714393f950cbe80f0675155202b7` |
| 11 | `def` | [primesOverSpanEquivMonicFactorsMod](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/primesoverspanequivmonicfactorsmod--7ab98044eb2c8018d8282a0f.md) | 169 | `declaration-track:7ab98044eb2c8018d8282a0f291cf035806bf9bb6a35561367e1004119604817` |
| 12 | `theorem` | [primesOverSpanEquivMonicFactorsMod_symm_apply](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/primesoverspanequivmonicfactorsmod-symm-apply--f547131896baf49cc65fd933.md) | 178 | `result-track:f547131896baf49cc65fd933ef2099d2c55e5561d6fb6a2d74ce1263e175b08b` |
| 13 | `theorem` | [primesOverSpanEquivMonicFactorsMod_symm_apply_eq_span](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/primesoverspanequivmonicfactorsmod-symm-apply-eq-span--795f03284e5ccc3f6c1400e3.md) | 191 | `result-track:795f03284e5ccc3f6c1400e3c03bd56c01d970d18bc033b96b1be057105ede71` |
| 14 | `theorem` | [liesOver_primesOverSpanEquivMonicFactorsMod_symm](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/liesover-primesoverspanequivmonicfactorsmod-symm--5eebc98eca1b9fd4195a2c79.md) | 201 | `result-track:5eebc98eca1b9fd4195a2c7986a5b3f4d301fc5c618fda4450451036bbe79304` |
| 15 | `theorem` | [inertiaDeg_primesOverSpanEquivMonicFactorsMod_symm_apply](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/inertiadeg-primesoverspanequivmonicfactorsmod-symm-apply--e4702ad0214623cabbb51044.md) | 211 | `result-track:e4702ad0214623cabbb51044f936be380879fb371122d21284797a3cfb812b0f` |
| 16 | `theorem` | [inertiaDeg_primesOverSpanEquivMonicFactorsMod_symm_apply'](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/inertiadeg-primesoverspanequivmonicfactorsmod-symm-apply--dc36c8b1754c22b0af08915b.md) | 227 | `result-track:dc36c8b1754c22b0af08915bd3178219e80e45a8b887ae16a67100d459bc15dd` |
| 17 | `theorem` | [ramificationIdx_primesOverSpanEquivMonicFactorsMod_symm_apply](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/ramificationidx-primesoverspanequivmonicfactorsmod-symm-apply--671b4d5b86d7aabd83d7426e.md) | 239 | `result-track:671b4d5b86d7aabd83d7426ecb38b7609e1b19c6810d0a3760e685c12306a5b4` |
| 18 | `theorem` | [ramificationIdx_primesOverSpanEquivMonicFactorsMod_symm_apply'](../../../../mathematics/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/declarations/ramificationidx-primesoverspanequivmonicfactorsmod-symm-apply--3fd1dc0448bf75cb0a1e6832.md) | 257 | `result-track:3fd1dc0448bf75cb0a1e68323c6a119da3e77dacc1a208890fca52fb366f3262` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
