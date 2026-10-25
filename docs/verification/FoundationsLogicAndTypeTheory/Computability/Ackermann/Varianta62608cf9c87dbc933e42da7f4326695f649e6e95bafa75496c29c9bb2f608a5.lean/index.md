# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Ackermann.Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0591278f143cf3bb909e263a515a3dd52fa92aff",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0591278f143cf3bb909e263a515a3dd52fa92aff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.PartrecCode` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack--018341c3f179e5d087e6dc41.md) | 61 | `declaration-track:018341c3f179e5d087e6dc41c4a2ce9a6c8077566d8bf6d0c009b8342b2b4a5b` |
| 2 | `theorem` | [ack_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-zero--f8bc7e1d25de6e66d8a1b74a.md) | 67 | `result-track:f8bc7e1d25de6e66d8a1b74a05ac96e15d569d9f45958d614aa753d1ea299a67` |
| 3 | `theorem` | [ack_succ_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-succ-zero--de858c5016eca9d1ba955eb3.md) | 70 | `result-track:de858c5016eca9d1ba955eb36f896c544878fbccfe5c0828cc2413851d4395d0` |
| 4 | `theorem` | [ack_succ_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-succ-succ--147eab0734298f38c71e6087.md) | 73 | `result-track:147eab0734298f38c71e6087c7c3bc835a88da89d93d5d0da77245058bf6a1d4` |
| 5 | `theorem` | [ack_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-one--1a93c250c910e1859f29ad38.md) | 76 | `result-track:1a93c250c910e1859f29ad3870e492d045b2ce5bc7bda269116e5612868a0377` |
| 6 | `theorem` | [ack_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-two--9fd9c1af7f0a218f7bf4c7ae.md) | 82 | `result-track:9fd9c1af7f0a218f7bf4c7aed303d932d918b57c607ff9513b894085edbc15ba` |
| 7 | `theorem` | [ack_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-three--df1258f7514182e4b151cb51.md) | 88 | `result-track:df1258f7514182e4b151cb5112abe7710d832348331a3445ee7b7609074b2701` |
| 8 | `theorem` | [ack_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-pos--84dca95c09896acd46e9dab1.md) | 98 | `result-track:84dca95c09896acd46e9dab19bde7482e9975085234707fd77effa170e95e54a` |
| 9 | `theorem` | [one_lt_ack_succ_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/one-lt-ack-succ-left--f2381da1f3b1eddd3aefc428.md) | 107 | `result-track:f2381da1f3b1eddd3aefc428340d585ed6ec16fac9607790a498f0dd7618df14` |
| 10 | `theorem` | [one_lt_ack_succ_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/one-lt-ack-succ-right--d8032d4dfad4afad3a8241bc.md) | 116 | `result-track:d8032d4dfad4afad3a8241bc49daed3e246a38e66f916d6c693665948e1ca54a` |
| 11 | `theorem` | [ack_strictMono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-strictmono-right--64d334ce8ac463baf7b66ca4.md) | 124 | `result-track:64d334ce8ac463baf7b66ca48bbae7ce1bff70485cbfaa940f548600175cc072` |
| 12 | `theorem` | [ack_mono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-mono-right--7b098a7d179270de7b108b81.md) | 134 | `result-track:7b098a7d179270de7b108b81e0a9a343e65e6827fa1a4d3f247117ff6d6176ca` |
| 13 | `theorem` | [ack_injective_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-injective-right--150a86a5d325cc620a7e86db.md) | 137 | `result-track:150a86a5d325cc620a7e86dbdb3115355539eb292174a40c1e89afcf447e2b45` |
| 14 | `theorem` | [ack_lt_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-lt-iff-right--da52b141adb6df3a1397fc4f.md) | 141 | `result-track:da52b141adb6df3a1397fc4fbfb5a70bb8be491852a0441374f4d10e8d93e6db` |
| 15 | `theorem` | [ack_le_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-le-iff-right--510beba2f53cb36f9db437c3.md) | 145 | `result-track:510beba2f53cb36f9db437c3564f7bc47b3c4e1d2b2ee253c20a581a3c57059b` |
| 16 | `theorem` | [ack_inj_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-inj-right--0f543d7fa74cf5d3779ec660.md) | 149 | `result-track:0f543d7fa74cf5d3779ec6602969b7502c675aa734e7b60aa6751ccf805f2030` |
| 17 | `theorem` | [max_ack_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/max-ack-right--729dfa62ea5a7d70aa15ce7f.md) | 152 | `result-track:729dfa62ea5a7d70aa15ce7f69a4643a37b61a9c358dfbf2c5fbe0fa4193aec6` |
| 18 | `theorem` | [add_lt_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/add-lt-ack--fec1f4836943d0fdb47ba0cd.md) | 155 | `result-track:fec1f4836943d0fdb47ba0cdf01a09cf1d49c5007e0e430bf5365d1aa58af832` |
| 19 | `theorem` | [add_add_one_le_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/add-add-one-le-ack--c3db38e1dcfdf09ac3859e61.md) | 167 | `result-track:c3db38e1dcfdf09ac3859e6176a37af8c89f16b1f10a3373df12cdde86104508` |
| 20 | `theorem` | [lt_ack_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/lt-ack-left--389bffa5ddb8cf682fc6ce4b.md) | 170 | `result-track:389bffa5ddb8cf682fc6ce4bcc528a3447c9c67ae260cc794f6f260dfe215b11` |
| 21 | `theorem` | [lt_ack_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/lt-ack-right--b34df2220b109b438b12fbf8.md) | 173 | `result-track:b34df2220b109b438b12fbf830c693e433c3989a34a4da27f9d5bf719d48be69` |
| 22 | `theorem` | [ack_strict_mono_left'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-strict-mono-left--41d8327d1d76a91e68650790.md) | 177 | `result-track:41d8327d1d76a91e6865079061f7f831143cc4a330d2c9ecdff05d928dc149f2` |
| 23 | `theorem` | [ack_strictMono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-strictmono-left--dc98aa877728c472d4d43471.md) | 192 | `result-track:dc98aa877728c472d4d434719e9348747700d15e1dc5242baa984fcee82e7cd6` |
| 24 | `theorem` | [ack_mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-mono-left--3fa6327af61452c085d94e57.md) | 195 | `result-track:3fa6327af61452c085d94e579c3250c10f8f9cfd14b20a6fa119c8e276512ebf` |
| 25 | `theorem` | [ack_injective_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-injective-left--1049426f007536ee1166ac7b.md) | 198 | `result-track:1049426f007536ee1166ac7b73faadc6db5811aa9cdeb3801b0bd537d4a5228c` |
| 26 | `theorem` | [ack_lt_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-lt-iff-left--10755135f64648265daa89ee.md) | 202 | `result-track:10755135f64648265daa89eea528bd8c2bff584956d718bbd6f71a86dab85f66` |
| 27 | `theorem` | [ack_le_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-le-iff-left--7eeb4e26de509bdf926d33ac.md) | 206 | `result-track:7eeb4e26de509bdf926d33ac0a5b7fd9995e71c4d0c9f4e4942789136d5c437e` |
| 28 | `theorem` | [ack_inj_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-inj-left--436e9a5af8298914d853de91.md) | 210 | `result-track:436e9a5af8298914d853de917cbb5cabc9ec6e4ff63bb1596a488f1023c1a47c` |
| 29 | `theorem` | [max_ack_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/max-ack-left--6e0e326fe4ba45358619b73b.md) | 213 | `result-track:6e0e326fe4ba45358619b73b64f4f2816c795abc051ed33424f37f2343191250` |
| 30 | `theorem` | [ack_le_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-le-ack--98adbb5c2db7cdc8be641add.md) | 216 | `result-track:98adbb5c2db7cdc8be641addc5de427d5a928d5d82c411e6c3e0936e9ee5c123` |
| 31 | `theorem` | [ack_succ_right_le_ack_succ_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-succ-right-le-ack-succ-left--1fc69bd6292e9fe11b19885a.md) | 219 | `result-track:1fc69bd6292e9fe11b19885a414de9934ffbf394b62bdd5feccff0c81614fad2` |
| 32 | `theorem` | [sq_le_two_pow_add_one_minus_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/sq-le-two-pow-add-one-minus-three--e492932fd221ceafcf331e83.md) | 227 | `result-track:e492932fd221ceafcf331e8396daace10ad139b5e2321f6502e7faaa70e94ce9` |
| 33 | `theorem` | [ack_add_one_sq_lt_ack_add_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-add-one-sq-lt-ack-add-three--db47028122efb0a282aa7332.md) | 242 | `result-track:db47028122efb0a282aa7332473149f8b8e0c456f96a84e5025b377a9aff93d9` |
| 34 | `theorem` | [ack_ack_lt_ack_max_add_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-ack-lt-ack-max-add-two--fcbb8bc7db9255a727fbdfd8.md) | 252 | `result-track:fcbb8bc7db9255a727fbdfd88ff50b99a5596ea2fcb97a97ab439e36409eeeba` |
| 35 | `theorem` | [ack_add_one_sq_lt_ack_add_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-add-one-sq-lt-ack-add-four--89f76529cf260fad39f18e64.md) | 260 | `result-track:89f76529cf260fad39f18e641ef2d148f2bc948b9f9d44c95529a54291e32e74` |
| 36 | `theorem` | [ack_pair_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/ack-pair-lt--1b5648fb4488983ab99bba44.md) | 269 | `result-track:1b5648fb4488983ab99bba446707a78930e866522defb4be4d5ce409a153c323` |
| 37 | `theorem` | [exists_lt_ack_of_nat_primrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/exists-lt-ack-of-nat-primrec--37ae293e87ee137ef997ce15.md) | 274 | `result-track:37ae293e87ee137ef997ce15703090d4ce7afb33f2df539ff5ce8141d6367490` |
| 38 | `theorem` | [not_nat_primrec_ack_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/not-nat-primrec-ack-self--df1f39a609363f4ae0b6f896.md) | 342 | `result-track:df1f39a609363f4ae0b6f896d57248520e05c79b71a18435d72bb458ee1d5e8c` |
| 39 | `theorem` | [not_primrec_ack_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/not-primrec-ack-self--3ad8d3ec703dc0d2c73dbfd8.md) | 346 | `result-track:3ad8d3ec703dc0d2c73dbfd82989eff5f64f93bd978817e1abd8d81e22f999d0` |
| 40 | `theorem` | [not_primrec₂_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/not-primrec-ack--8377ddf61d2f6c40cfb64581.md) | 351 | `result-track:8377ddf61d2f6c40cfb64581b99b37cf26a7ed5a0e60a1cc51cc4c8d44da712d` |
| 41 | `def` | [pappAck](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/pappack--08226686250e565b7fe212f4.md) | 358 | `declaration-track:08226686250e565b7fe212f4177bcaec134f4684a64be55fde43d55f8d538e7e` |
| 42 | `lemma` | [primrec_pappAck_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/primrec-pappack-step--6433fbcfab10073b470a8bd0.md) | 366 | `result-track:6433fbcfab10073b470a8bd083d9396d7dc98d4b9c7d1ccffa84ec074606cbf9` |
| 43 | `lemma` | [eval_pappAck_step_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/eval-pappack-step-zero--0e838bb1e008f3073d99f8d4.md) | 372 | `result-track:0e838bb1e008f3073d99f8d49252ae082419a10a15e64490856bb92f7841bd8f` |
| 44 | `lemma` | [eval_pappAck_step_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/eval-pappack-step-succ--91c778e507ef128152b2dc26.md) | 376 | `result-track:91c778e507ef128152b2dc26de99becc519e8031e1755ac301a41564bab2e4af` |
| 45 | `lemma` | [primrec_pappAck](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/primrec-pappack--31c27334d99371caa1790db6.md) | 380 | `result-track:31c27334d99371caa1790db6baeeef7d199519fc1159e332470bbb80e7b34ad7` |
| 46 | `lemma` | [eval_pappAck](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/eval-pappack--ceba1d17c335b50b8b0ac87f.md) | 386 | `result-track:ceba1d17c335b50b8b0ac87f379b33c7c92fd97ecdffd8f85fb3035ceb824520` |
| 47 | `theorem` | [_root_.computable₂_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/declarations/root-computable-ack--8749f3d173ae942a5ef558c9.md) | 393 | `result-track:8749f3d173ae942a5ef558c92c44f425715e352a25911fda637e88fb5c1eb48a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
