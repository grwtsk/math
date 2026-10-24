# Verification target: GRWTSK.Algebra.LinearAlgebra.AdicCompletion.Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57858996d010d11013a08f1699446ea6be6dc935",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57858996d010d11013a08f1699446ea6be6dc935`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SModEq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.JacobsonIdeal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsHausdorff](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/ishausdorff--3f35fc94ed0385156e2716a0.md) | 40 | `declaration-track:3f35fc94ed0385156e2716a0b2b746439bbb67e79759eb1a550e8157ef06eb98` |
| 2 | `class` | [IsPrecomplete](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/isprecomplete--3d3add3eeb1768537818150d.md) | 45 | `declaration-track:3d3add3eeb1768537818150da5a663e5b96228d6530f09f116a8898b1916f2c9` |
| 3 | `class` | [IsAdicComplete](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/isadiccomplete--ea0b1ae76b9d866b3bca7094.md) | 51 | `declaration-track:ea0b1ae76b9d866b3bca7094073ad04a8a9f2bac5571b8ca9a7714adf94678df` |
| 4 | `theorem` | [IsHausdorff.haus](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/ishausdorff-haus--5a829df5f7a077372e168798.md) | 56 | `result-track:5a829df5f7a077372e16879889533d2a7fc62fd9ab56c8c2800ce29f5b85191a` |
| 5 | `theorem` | [isHausdorff_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/ishausdorff-iff--c7bc613cf2465384b2141dce.md) | 61 | `result-track:c7bc613cf2465384b2141dce172ccbc2ac7058566cfa397fd1d8201d59650034` |
| 6 | `theorem` | [IsPrecomplete.prec](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/isprecomplete-prec--8133a1d8c224b9aa72dda93a.md) | 66 | `result-track:8133a1d8c224b9aa72dda93a8d74c2535daf3aadb73b6566a59444519eb338cb` |
| 7 | `theorem` | [isPrecomplete_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/isprecomplete-iff--f35739cd01cd34a5f73a1b65.md) | 72 | `result-track:f35739cd01cd34a5f73a1b65814a50ab4ac31c4443dea370236a8ed0eab72194` |
| 8 | `def` | [Hausdorffification](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/hausdorffification--da9d85d4f68987122c6ba0b4.md) | 84 | `declaration-track:da9d85d4f68987122c6ba0b4bc6e64a06004f600fa17f3fd788208ac58b69014` |
| 9 | `def` | [adicCompletion](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/adiccompletion--5f5924dde44cbaba319d47bb.md) | 91 | `declaration-track:5f5924dde44cbaba319d47bb0d5a1e56fabd32f89b30795f865ae54eee8b9db8` |
| 10 | `instance` | [bot](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/bot--97beafacc64643f8662b5ba4.md) | 104 | `declaration-track:97beafacc64643f8662b5ba4f5025278750372dd8c922a3b353312aab77f3fa5` |
| 11 | `theorem` | [subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/subsingleton--187df5cccdeb9f1000ff416f.md) | 110 | `result-track:187df5cccdeb9f1000ff416fe26694d84b9ac1129d246710029633ee508f4503` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/instance--3b62b4def1e8b29bcb1906db.md) | 118 | `declaration-track:3b62b4def1e8b29bcb1906db7f54c357e28755537577ce3e767e2fdd1bf18e02` |
| 13 | `theorem` | [iInf_pow_smul](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/iinf-pow-smul--fb61437adfdd63b098ecd07e.md) | 124 | `result-track:fb61437adfdd63b098ecd07ec545b7cc34f448f559518e77427dc5a0dcac51b3` |
| 14 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/of--00358270aea7f8829f0794de.md) | 134 | `declaration-track:00358270aea7f8829f0794de0d13e33724698ba5bc4863850790ebf564abf708` |
| 15 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/induction-on--c869d827adf45254be1a0a48.md) | 141 | `result-track:c869d827adf45254be1a0a48325b5c32aeaeb0e4e972628c39a63e985b537036` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/instance--bf8d83d3da071b18cd806133.md) | 148 | `declaration-track:bf8d83d3da071b18cd806133050062d4724343466c39aad9dc1c29f0a611cbc5` |
| 17 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/lift--3af5cb1153cb08ab5c5c884f.md) | 160 | `declaration-track:3af5cb1153cb08ab5c5c884f56fddf36239dbe74190c52f21f2686e611c49b46` |
| 18 | `theorem` | [lift_of](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/lift-of--98be687ef28dba7ef3c5515d.md) | 167 | `result-track:98be687ef28dba7ef3c5515de8a6a4d882292b12349a7b8e9c0313ebf4396cef` |
| 19 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/lift-comp-of--9136e67fd8834ae665e4d50c.md) | 171 | `result-track:9136e67fd8834ae665e4d50ce0d1b7387abd745286914f82501d4ff3aa53f5ae` |
| 20 | `theorem` | [lift_eq](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/lift-eq--d39acaab3e2f36b97055a73f.md) | 176 | `result-track:d39acaab3e2f36b97055a73fa3514c1bd9db44398bdefd45ec53e2eb0023ad26` |
| 21 | `instance` | [bot](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/bot--48a106b02d72bb713ca3f48f.md) | 185 | `declaration-track:48a106b02d72bb713ca3f48f68b806be62deedb8fcfb64cb2af0384419f75fbb` |
| 22 | `instance` | [top](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/top--e2e5abef9df7b058139aec54.md) | 194 | `declaration-track:e2e5abef9df7b058139aec542bd7c76cbfead72671030f350f7fa3bd8de0425e` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/instance--d4daac2e67f9205388e60aff.md) | 201 | `declaration-track:d4daac2e67f9205388e60affcb4aa461eb76dd9a0277c4453a0f11eb36e65e37` |
| 24 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/of--0ffef85fd5aa29ff5a15e3a6.md) | 210 | `declaration-track:0ffef85fd5aa29ff5a15e3a60db340f2f63e62e8af2246c541f5ff2186e6bc8c` |
| 25 | `theorem` | [of_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/of-apply--e4867f0c519735dc18aa1764.md) | 218 | `result-track:e4867f0c519735dc18aa176407b9fe0b0a5fa643ac22b724af355dee014649a8` |
| 26 | `def` | [eval](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/eval--ef2ca82252564579cef9cafe.md) | 223 | `declaration-track:ef2ca82252564579cef9cafe9787485bb4a048b14c75e8dff24aece1cb7f9e0b` |
| 27 | `theorem` | [coe_eval](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/coe-eval--f15236daa1eccba027689fa0.md) | 230 | `result-track:f15236daa1eccba027689fa02b46d9e790ac6f8778780d77bf33b7fdcbf999b4` |
| 28 | `theorem` | [eval_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/eval-apply--b69eda97f998fb1771912848.md) | 235 | `result-track:b69eda97f998fb1771912848e0c8ff327783db4d1f303f46c1828856c6ebefb3` |
| 29 | `theorem` | [eval_of](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/eval-of--50b99214b7e2a110124f9b2f.md) | 240 | `result-track:50b99214b7e2a110124f9b2fd98568536231f60be6e775b7d23e6ebfeb195f07` |
| 30 | `theorem` | [eval_comp_of](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/eval-comp-of--6dc85f7605b1412cf4fb7513.md) | 245 | `result-track:6dc85f7605b1412cf4fb7513cac81ab0dbd62f798e3021faa75d442859bb2f42` |
| 31 | `theorem` | [range_eval](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/range-eval--99316f9e5037d3d0803d73bf.md) | 250 | `result-track:99316f9e5037d3d0803d73bf19f66b9524a3e7ac46e8113e65c3af17824590c2` |
| 32 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/ext--8d1b1aee5914c047797c212b.md) | 257 | `result-track:8d1b1aee5914c047797c212b5244ab13978b88125ee7b1820326290c2f355c60` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/instance--a56e98a4a3bb8d72cd3ea02e.md) | 263 | `declaration-track:a56e98a4a3bb8d72cd3ea02e4405150a855f2400553a9cc6a745e9ecfefb4740` |
| 34 | `instance` | [bot](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/bot--a878d1ec6ece0235969beee5.md) | 273 | `declaration-track:a878d1ec6ece0235969beee5a9e055b1a255bc4627fbc82a8d95b0ce1791756e` |
| 35 | `theorem` | [subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/subsingleton--5902876183fcf760f84b8026.md) | 276 | `result-track:5902876183fcf760f84b8026e95fed3ac76b07e231912d8cfdc81bbdca4b60c3` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/instance--4165dab28fc4d7104370d4cc.md) | 280 | `declaration-track:4165dab28fc4d7104370d4ccb7b2ab4b5b68df14f0b21d2241d4dc831eb1c0ce` |
| 37 | `theorem` | [le_jacobson_bot](../../../../../mathematics/Algebra/LinearAlgebra/AdicCompletion/Variant3c802bf202c02a351466eaedb196e36250b96a875f49aa6fb6ca161b4bd9442f.lean/declarations/le-jacobson-bot--168d2acbc0479f31240642cc.md) | 287 | `result-track:168d2acbc0479f31240642ccb505588168c45d85cfe1f10b9f95e142026076e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
