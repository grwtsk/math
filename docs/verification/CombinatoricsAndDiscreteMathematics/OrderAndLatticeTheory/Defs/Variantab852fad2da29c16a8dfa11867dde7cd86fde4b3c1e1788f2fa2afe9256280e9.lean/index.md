# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f28f022fdba2c1fff9f4ae11e92879c494d2035c",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f28f022fdba2c1fff9f4ae11e92879c494d2035c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.NeZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/pnat--66ca6a3e20949f0596adabae.md) | 32 | `declaration-track:66ca6a3e20949f0596adabae3c4aa975b3468a957b953ed8a9604ae51c9d130d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/instance--213e73ce1332117190936160.md) | 39 | `declaration-track:213e73ce13321171909361602eda4200529ce997602402f0bdf4f2bee5dd0913` |
| 3 | `def` | [PNat.val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/pnat-val--82022aea92108d0fe5b6bfdd.md) | 44 | `declaration-track:82022aea92108d0fe5b6bfdd2779038ca4e4b8654aeb0536092bf05c4e7045f0` |
| 4 | `instance` | [coePNatNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/coepnatnat--2b7b5fc774c0e1945766cd39.md) | 46 | `declaration-track:2b7b5fc774c0e1945766cd39a9ba5c13acf650a576a2a664a91abfd4a3d3634c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/instance--451af82343f30ce6d3584a01.md) | 50 | `declaration-track:451af82343f30ce6d3584a013e10450d29b15abf1a3676bc9ee6d0c98ce6ebb5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/instance--5206e59d930448ad9c55660a.md) | 54 | `declaration-track:5206e59d930448ad9c55660ae2dfaabb8b03c7804f0be70c1877b79002e9906c` |
| 7 | `theorem` | [mk_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/mk-coe--b8c756e891e0f38b15b0e074.md) | 61 | `result-track:b8c756e891e0f38b15b0e0742ca2760802de17aefb8e259b0c9b27f92b340610` |
| 8 | `def` | [natPred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/natpred--cb77b5f89b63b2241063819b.md) | 66 | `declaration-track:cb77b5f89b63b2241063819b4e19457bcc29ae2fb79ba56e7686439dffde6108` |
| 9 | `theorem` | [natPred_eq_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/natpred-eq-pred--13848b1132b02bef4d61285a.md) | 71 | `result-track:13848b1132b02bef4d61285a1d2cc118555022330f7e6a56cc12acb410615454` |
| 10 | `def` | [toPNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/topnat--a0370f40c4ee450cf8e7227a.md) | 81 | `declaration-track:a0370f40c4ee450cf8e7227a8246a7dd2a4fb50fa06a21c2a03c943c5fd61da6` |
| 11 | `def` | [succPNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/succpnat--12e42efa599fbb033286cece.md) | 86 | `declaration-track:12e42efa599fbb033286cece594cad1153ec65e5f6e5444e2956ae30fe71d9b6` |
| 12 | `theorem` | [succPNat_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/succpnat-coe--8fb16c2cb91fc21626d72be5.md) | 91 | `result-track:8fb16c2cb91fc21626d72be52f854d1f6ef46ef6ecc6256f3a5af1b828395d9a` |
| 13 | `theorem` | [natPred_succPNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/natpred-succpnat--1c97ca9a258749d5613d0cae.md) | 96 | `result-track:1c97ca9a258749d5613d0cae86c90b45abb68082c75dfdb4bd6964b2f576d33e` |
| 14 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PNat.Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.PNat.succPNat_natPred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-pn--e438eee5823404f2e158fdbc.md) | 101 | `result-track:e438eee5823404f2e158fdbc1228ef67bb3b0e72349ef1a181dff28d25d90463` |
| 15 | `def` | [toPNat'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/topnat--ea61711871e433010cbf7751.md) | 107 | `declaration-track:ea61711871e433010cbf7751bb03a05bec698f7a179a0faac1b2215984454ba2` |
| 16 | `theorem` | [toPNat'_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/topnat-coe--8118a2e456a52f7db70dcb6e.md) | 112 | `result-track:8118a2e456a52f7db70dcb6ec0697d5fd36cc0d968f625f8dd025b9e38154688` |
| 17 | `theorem` | [mk_le_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/mk-le-mk--95aa691548ea164f2f424403.md) | 131 | `result-track:95aa691548ea164f2f424403d889e6aeb56a08f9ae882899fe385575c06cccd3` |
| 18 | `theorem` | [mk_lt_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/mk-lt-mk--9afe74137a870c9742e1036b.md) | 136 | `result-track:9afe74137a870c9742e1036b1aecdaf0b95f7b066022973fbb7098c06b0eefe6` |
| 19 | `theorem` | [coe_le_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/coe-le-coe--e1b22446555464e6e32212cf.md) | 141 | `result-track:e1b22446555464e6e32212cf8fbeaf8be5a2f59e3356c8c6b387a4db685b2600` |
| 20 | `theorem` | [coe_lt_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/coe-lt-coe--4f8d194473f447bde34afea0.md) | 146 | `result-track:4f8d194473f447bde34afea05b6bd6fcadf96006d764c915a35d6c0da6a01ec1` |
| 21 | `theorem` | [pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/pos--14dd044331d6c20fa7fe6447.md) | 151 | `result-track:14dd044331d6c20fa7fe6447e56b191506848eb7af25d01f66420a21b50b7d8a` |
| 22 | `theorem` | [eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/eq--0aab2a488bbcd638e5e52d25.md) | 155 | `result-track:0aab2a488bbcd638e5e52d25fac58dfaf0c952a9609ef5f1f9702351bdbb01c3` |
| 23 | `theorem` | [coe_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/coe-injective--c0431ff78b6382e9499fc6bd.md) | 159 | `result-track:c0431ff78b6382e9499fc6bdc1792e26401ccd7aa3da0443edce2e1e4c5d8967` |
| 24 | `theorem` | [ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/ne-zero--501f884f46d37132dfd6e3ed.md) | 164 | `result-track:501f884f46d37132dfd6e3ed22d8b91a2bce24a936dfb13968c732c9cbeb54eb` |
| 25 | `instance` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PNat.Variant2e382a1ccffe34f2a1b8e3de75178b78554a812a81bb7c0a8e2e746767808c17.NeZero.pnat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-pn--9883539aac210ff16286db67.md) | 168 | `declaration-track:9883539aac210ff16286db67366e66798ac29b8bd89133c5cdab012047ccd050` |
| 26 | `theorem` | [toPNat'_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/topnat-coe--e9be3f4e7d3b5aacf06af719.md) | 172 | `result-track:e9be3f4e7d3b5aacf06af719e02a826c2df7588864fce50071abf61ae156695f` |
| 27 | `theorem` | [coe_toPNat'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/coe-topnat--8f769a4fcf2fec2c388aaef2.md) | 177 | `result-track:8f769a4fcf2fec2c388aaef247a737206a05f7685d5cfbbdc6cf659438dab113` |
| 28 | `theorem` | [one_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/one-le--76dd50082c20302986c6dd1f.md) | 182 | `result-track:76dd50082c20302986c6dd1feaf3320f4e6429a92a1d91ae5d8c1167e7fa0b25` |
| 29 | `theorem` | [not_lt_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/not-lt-one--499bfaac26131ae828b3d31e.md) | 187 | `result-track:499bfaac26131ae828b3d31e94bd42814fcbc94df917acfdd24184579bf549c4` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/instance--f8171d3563a9b9980b14b949.md) | 191 | `declaration-track:f8171d3563a9b9980b14b949f276f549ac2d29f78996fa8135d22959c39e31fe` |
| 31 | `theorem` | [mk_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/mk-one--41d48a413a871092a5fa3746.md) | 196 | `result-track:41d48a413a871092a5fa3746ed0f14d549e48fdbc7146f02a774dea314f68136` |
| 32 | `theorem` | [one_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/one-coe--7703eae74859120796d053bd.md) | 201 | `result-track:7703eae74859120796d053bd8d1bb70857052a1e25330aa9c6bb460ba726cd59` |
| 33 | `theorem` | [coe_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/coe-eq-one-iff--67a062ce7abacb4bfb9b94d8.md) | 206 | `result-track:67a062ce7abacb4bfb9b94d8036863f04d6e2e46382ed58c72db5d50f72e09ab` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/instance--1286be1ff508d4f9f31016b7.md) | 210 | `declaration-track:1286be1ff508d4f9f31016b78c30c223b93c43f54077e5e3eec202f12aef4df2` |
| 35 | `def` | [strongInductionOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/stronginductionon--dc7191bed7e4e46db9b77dbd.md) | 214 | `declaration-track:dc7191bed7e4e46db9b77dbde707956d3886763c318f5fe4114d1693a3d6c12e` |
| 36 | `def` | [modDivAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/moddivaux--243de2113b81decfb9e8c638.md) | 226 | `declaration-track:243de2113b81decfb9e8c63807a75c3d2f23787586d605b1a1ed16b792d864f4` |
| 37 | `def` | [modDiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/moddiv--a51fe2f3164cca054a591aef.md) | 239 | `declaration-track:a51fe2f3164cca054a591aefe9cf8a8c8afa603554191896e636b4d6836e4ba4` |
| 38 | `def` | [mod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/mod--39d2cd86d68425469b1a9964.md) | 246 | `declaration-track:39d2cd86d68425469b1a996470a1dcef481dea70a6ed59a06b70f6afed7ed0f3` |
| 39 | `def` | [div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/div--e589c9411c2921a45ff838e0.md) | 254 | `declaration-track:e589c9411c2921a45ff838e0d93d3ce204a920018f63b9459fcdace807ff13e1` |
| 40 | `theorem` | [mod_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/mod-coe--6171179d6a2c375be174c299.md) | 258 | `result-track:6171179d6a2c375be174c29944404e9d52b350e0c71a51f5b48ff6854cee57ef` |
| 41 | `theorem` | [div_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/div-coe--dbc23cd97d240e7673e55127.md) | 270 | `result-track:dbc23cd97d240e7673e551279f81242a5a4afcc1409551d1b4ee861926afec14` |
| 42 | `def` | [divExact](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/divexact--1d05e036c1d6a89166516bf9.md) | 283 | `declaration-track:1d05e036c1d6a89166516bf9509b0c4b2089e53203227df9d64de82aef3772d0` |
| 43 | `instance` | [Nat.canLiftPNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/nat-canliftpnat--edf6f8308b387cc0d0d64ed6.md) | 291 | `declaration-track:edf6f8308b387cc0d0d64ed61543dd5b9fc8e6d9f45b16055f8f081d28c6c3ee` |
| 44 | `instance` | [Int.canLiftPNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantab852fad2da29c16a8dfa11867dde7cd86fde4b3c1e1788f2fa2afe9256280e9.lean/declarations/int-canliftpnat--cc23e7f57312d663f872cc3f.md) | 295 | `declaration-track:cc23e7f57312d663f872cc3fe4efca6ca3b9273af2cfd12851592436907cffca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
