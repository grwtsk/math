# Verification target: GRWTSK.Algebra.MappingCocone.Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c849eea29e0a28ffa49d27a9c9b02827901e1931",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/index.md) · [Full source](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c849eea29e0a28ffa49d27a9c9b02827901e1931`.

Source path: `GRWTSK/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean.json)

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
| 1 | `def` | [mappingCocone](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/mappingcocone--63166dac127ddea2d6e14164.md) | 33 | `declaration-track:63166dac127ddea2d6e1416431c78d633cb14215e5f62e22ae396c91ccb63250` |
| 2 | `def` | [fst](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/fst--58e48a9ab986fc22e1b91baa.md) | 43 | `declaration-track:58e48a9ab986fc22e1b91baaddb07684211085566736bf6e6ee8e8c37e771e77` |
| 3 | `def` | [snd](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/snd--44c6ae392a4e330923d9a2a3.md) | 47 | `declaration-track:44c6ae392a4e330923d9a2a36fe665359ece4cf87308941f7ac19093f945347a` |
| 4 | `def` | [inl](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/inl--ebe2c5c77e5216c28603425b.md) | 51 | `declaration-track:ebe2c5c77e5216c28603425b413546d715718f5ffa757278fad87e39b2fef7a6` |
| 5 | `def` | [inr](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/inr--08b3837fa41bb7d68bb54fe5.md) | 55 | `declaration-track:08b3837fa41bb7d68bb54fe5221a940c021bf6d0aa2b58f0025594ca49a99088` |
| 6 | `lemma` | [inl_v_fst_f](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/inl-v-fst-f--f73d4eaf6750efc9c584041a.md) | 61 | `result-track:f73d4eaf6750efc9c584041a7dc1e5073a8754468d5d0e89887c09b768f336c4` |
| 7 | `lemma` | [inl_v_snd_v](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/inl-v-snd-v--12a10f9dacf2dfcd44e1729c.md) | 69 | `result-track:12a10f9dacf2dfcd44e1729c6420bba0cabcbbc249d5864bd5628b20fa61c6e0` |
| 8 | `lemma` | [inr_v_fst_f](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/inr-v-fst-f--7a209e6f8bd21f5ca0a26532.md) | 77 | `result-track:7a209e6f8bd21f5ca0a265327be00224b058f9b3f4d5fff534594241673d338f` |
| 9 | `lemma` | [inr_v_snd_v](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/inr-v-snd-v--7dcb748091bfc19a88c6a4db.md) | 84 | `result-track:7dcb748091bfc19a88c6a4db506dce340c26fdc8c9224fc607130b787633328a` |
| 10 | `lemma` | [id_X](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/id-x--f72b226caaa9d5e1801766e0.md) | 91 | `result-track:f72b226caaa9d5e1801766e08ed5b15a77bce1dc76e7308e0c2bca0da3f91ac6` |
| 11 | `def` | [descCochain](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/desccochain--8f471ae45e95b3fc2df45fca.md) | 109 | `declaration-track:8f471ae45e95b3fc2df45fca3a0dd12e551c48833aa68120d582557ea7f58d4c` |
| 12 | `lemma` | [inl_v_descCochain_v](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/inl-v-desccochain-v--3042796661160d2c198d51af.md) | 114 | `result-track:3042796661160d2c198d51af205faabdcfafc3f974a2db53a48767656c84f3a7` |
| 13 | `lemma` | [inr_v_descCochain_v](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/inr-v-desccochain-v--f4091b9e6bdd64145fdff001.md) | 122 | `result-track:f4091b9e6bdd64145fdff00127bc5929034216bb3fda17652995f2af84f1f31a` |
| 14 | `lemma` | [inl_comp_descCochain](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/inl-comp-desccochain--f7e954ca26112ecc8d54d277.md) | 130 | `result-track:f7e954ca26112ecc8d54d2773bc5165c1bdd445ffe9c93f343fde6ae052efa1f` |
| 15 | `lemma` | [inr_comp_descCochain](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/inr-comp-desccochain--754967e0086d8b872515ada9.md) | 135 | `result-track:754967e0086d8b872515ada90e8beb693268170cc95d1bfa7d08b6a022f8194e` |
| 16 | `lemma` | [δ_descCochain](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/desccochain--997f1e3c48db5f79227961b8.md) | 142 | `result-track:997f1e3c48db5f79227961b8b7c86573701891e88e9ac1f861c35fbbe5c4b187` |
| 17 | `def` | [descCocycle](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/desccocycle--7b7877fbaa04ec3171bdb19e.md) | 169 | `declaration-track:7b7877fbaa04ec3171bdb19e41fd82ab273fb3d8857aff159408544a32e2ef19` |
| 18 | `def` | [desc](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/desc--44d9cd5602122afdfa6a1641.md) | 182 | `declaration-track:44d9cd5602122afdfa6a1641e2fc92a13a8d924d35960cf107e4218f85462f69` |
| 19 | `lemma` | [ofHom_desc](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/ofhom-desc--4806876eb7c999eadc44ea48.md) | 186 | `result-track:4806876eb7c999eadc44ea483c7734fa477b4b75fee560ce621787702db1b2ad` |
| 20 | `lemma` | [inl_v_desc_f](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/inl-v-desc-f--455fd448ef7be431ac6861ee.md) | 191 | `result-track:455fd448ef7be431ac6861ee67f4773d61ca3aa8d32a4b6a57fe02d3ee3a48d5` |
| 21 | `lemma` | [inr_v_desc_f](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/inr-v-desc-f--1a4a71ff290212c2ee0074c3.md) | 196 | `result-track:1a4a71ff290212c2ee0074c3e727200c15c755ed4af78f27604a60460038ef55` |
| 22 | `def` | [liftCochain](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/liftcochain--514583e9f9822dc216bf70c0.md) | 208 | `declaration-track:514583e9f9822dc216bf70c0c5d57c627f5bc2c060e4aba1470c6010037a4096` |
| 23 | `lemma` | [liftCochain_v_fst_f](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/liftcochain-v-fst-f--c2958084bb817f1864112ac7.md) | 213 | `result-track:c2958084bb817f1864112ac7808ad926c08417bb13a911a3c44ea06fcae5c449` |
| 24 | `lemma` | [liftCochain_v_snd_v](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/liftcochain-v-snd-v--1c2c0fd947a52f652dea5857.md) | 221 | `result-track:1c2c0fd947a52f652dea5857fc18227ad5d288268d03c48d65781a85c13a4c1c` |
| 25 | `lemma` | [liftCochain_comp_fst](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/liftcochain-comp-fst--f881f4df80c868959f98c594.md) | 230 | `result-track:f881f4df80c868959f98c594321863acb7a9e8823f7d231912dac6d04896c59f` |
| 26 | `lemma` | [liftCochain_comp_snd](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/liftcochain-comp-snd--811d7ee5301e93f7ad17f3b7.md) | 235 | `result-track:811d7ee5301e93f7ad17f3b796478f7d06aa7d602c67c13a1d21eb851d605ed4` |
| 27 | `lemma` | [δ_liftCochain](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/liftcochain--1490e958ec88318de2e84f23.md) | 242 | `result-track:1490e958ec88318de2e84f235810b7a8e7d98c9c9e91eb39ad00a8a71292824a` |
| 28 | `def` | [liftCocycle](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/liftcocycle--98697a2bbc3c888335bc0424.md) | 265 | `declaration-track:98697a2bbc3c888335bc04244014ee00f086ce0f0794e1984127ede0cf32be4a` |
| 29 | `def` | [lift](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/lift--22a8e0124d03e7241d243764.md) | 278 | `declaration-track:22a8e0124d03e7241d243764875929dc0b37e6342b31e6b56dd892abc847a116` |
| 30 | `lemma` | [ofHom_lift](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/ofhom-lift--ca9d7551d8167880a77d2a70.md) | 282 | `result-track:ca9d7551d8167880a77d2a70b0aaf5f94ad4929cb49ca8c9cdedd3b25dce8d83` |
| 31 | `lemma` | [lift_f_fst_f](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/lift-f-fst-f--51ae651d9ea956a6d7905dec.md) | 287 | `result-track:51ae651d9ea956a6d7905dece5f89432bd2d33438c39bd3f804e66402f2bb0f7` |
| 32 | `lemma` | [lift_fst](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/lift-fst--a8da1c201e2e80f1c5ab80e2.md) | 292 | `result-track:a8da1c201e2e80f1c5ab80e23adb8f71bd3aed7865df87f04331846fabdb2270` |
| 33 | `lemma` | [lift_f_snd_v](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/lift-f-snd-v--b6d1b405c9606b9c27203c3a.md) | 297 | `result-track:b6d1b405c9606b9c27203c3add7924082f4c142dcbba0f566a6ed6bb3091113c` |
| 34 | `def` | [triangle](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/triangle--2da702510a4ea16ec2c97c5d.md) | 312 | `declaration-track:2da702510a4ea16ec2c97c5d5bf1c77fe0c529ee6d453e49d80d10d317fd8697` |
| 35 | `def` | [rotateTriangleIso](../../../../mathematics/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/declarations/rotatetriangleiso--86f0aca869a3b3af2ce5b3cd.md) | 320 | `declaration-track:86f0aca869a3b3af2ce5b3cd13b3f259b04d24712370af7d4e2c3905a1db385b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
