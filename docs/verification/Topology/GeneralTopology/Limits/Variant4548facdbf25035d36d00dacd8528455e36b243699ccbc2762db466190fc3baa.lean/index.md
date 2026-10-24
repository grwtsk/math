# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67175ce41d96b60f31a9042e375beab7138edf70",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67175ce41d96b60f31a9042e375beab7138edf70`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHaus.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullback--18ab7e73bf0f268c8c837bca.md) | 37 | `declaration-track:18ab7e73bf0f268c8c837bca4d657e743bbf35d772dab43e7089da33e2d9d467` |
| 2 | `def` | [pullback.fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullback-fst--6c91eea7a384fe89474fe39d.md) | 47 | `declaration-track:6c91eea7a384fe89474fe39d300291307c56927843d7d36d1dce291d7ac5badf` |
| 3 | `def` | [pullback.snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullback-snd--6e4e98e648893ee78a5268ee.md) | 54 | `declaration-track:6e4e98e648893ee78a5268ee847b758518efd710dab724781e7c37384a346f1f` |
| 4 | `lemma` | [pullback.condition](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullback-condition--54e02bf48c6d5f44d573f739.md) | 59 | `result-track:54e02bf48c6d5f44d573f73934159ab3ed7577efaf9ca8f70364ed8ee901d907` |
| 5 | `def` | [pullback.lift](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullback-lift--485041b2d1c0772e5bcc371e.md) | 67 | `declaration-track:485041b2d1c0772e5bcc371e919e3a9eeb2d82d9d1cef6e95a7f0abc5d9ff1fa` |
| 6 | `lemma` | [pullback.lift_fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullback-lift-fst--d56a74fb77ce3b21132089a2.md) | 76 | `result-track:d56a74fb77ce3b21132089a2ac43acfae0a4b51d6e6cd9302c9fb9f931d1eb76` |
| 7 | `lemma` | [pullback.lift_snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullback-lift-snd--23208d798891c4740ef27db5.md) | 80 | `result-track:23208d798891c4740ef27db5fee92d750d1dbe14a4806e019e0b6a49da89d4e6` |
| 8 | `lemma` | [pullback.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullback-hom-ext--71b1614de02fbc7aa7ed385c.md) | 83 | `result-track:71b1614de02fbc7aa7ed385cc1ce082681cb40a4c6630b6acebdf59263b55aba` |
| 9 | `def` | [pullback.cone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullback-cone--6edd753f81ed2a130e6259d2.md) | 97 | `declaration-track:6edd753f81ed2a130e6259d268528a5ec5bb11ced791e2e8bcebc39261226e68` |
| 10 | `def` | [pullback.isLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullback-islimit--a42abeda6bf7451d7d55fc5f.md) | 104 | `declaration-track:a42abeda6bf7451d7d55fc5f53206323f3f40956e42bc7c46ef7e45f50e2f3f5` |
| 11 | `def` | [pullbackIsoPullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullbackisopullback--db2c8999569a66f565f00ef6.md) | 115 | `declaration-track:db2c8999569a66f565f00ef630c0024395af0553431915d4fe460bf62ed1eb7c` |
| 12 | `def` | [pullbackHomeoPullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullbackhomeopullback--692e5b02ef70b593d355eeba.md) | 120 | `declaration-track:692e5b02ef70b593d355eeba8bdde7225dd08a8dded96a298ed29d7f4f9b3b12` |
| 13 | `theorem` | [pullback_fst_eq](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullback-fst-eq--e05e967725a67f99728ba7db.md) | 123 | `result-track:e05e967725a67f99728ba7db46e1427b674644833a36739c534b77c316bce3f9` |
| 14 | `theorem` | [pullback_snd_eq](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/pullback-snd-eq--47c76c78e5d4e20d229e2e4d.md) | 128 | `result-track:47c76c78e5d4e20d229e2e4dcc8740e890781e9c1f5ccc33f797a729a609b082` |
| 15 | `def` | [finiteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/finitecoproduct--30871f31702e2d96f31f162e.md) | 145 | `declaration-track:30871f31702e2d96f31f162ea7133c20e288a63090557372c0bd0a7f02dee2cc` |
| 16 | `def` | [finiteCoproduct.ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/finitecoproduct--cc8cb374eb2488e97814cfb0.md) | 150 | `declaration-track:cc8cb374eb2488e97814cfb07960e11aa3c633bbffb007c50214c2a40007e4cb` |
| 17 | `def` | [finiteCoproduct.desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/finitecoproduct-desc--440cbfb43786dadaaad82f8b.md) | 159 | `declaration-track:440cbfb43786dadaaad82f8b82df370ec5e0b943a4f8886b0e89f1cc715f6660` |
| 18 | `lemma` | [finiteCoproduct.ι_desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/finitecoproduct-desc--0ba8b19a01f15e139e88eb26.md) | 167 | `result-track:0ba8b19a01f15e139e88eb260fb6cb3049866ffec94d832d904e2be4cc47cf29` |
| 19 | `lemma` | [finiteCoproduct.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/finitecoproduct-hom-ext--a0dc4621798aa56859badb02.md) | 170 | `result-track:a0dc4621798aa56859badb020d1da403e7ae6b98fa6cbeb274d76f2d7eb62330` |
| 20 | `def` | [finiteCoproduct.cocone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/finitecoproduct-cocone--fc0ed8e9677c353106a10c45.md) | 181 | `declaration-track:fc0ed8e9677c353106a10c459d629513229f51be83508e95ae8af0a131e02ed6` |
| 21 | `def` | [finiteCoproduct.isColimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/finitecoproduct-iscolimit--bf15a91555f9d99a8c82637e.md) | 189 | `declaration-track:bf15a91555f9d99a8c82637e2c5638202dc97c757961aa3114fb823c408161da` |
| 22 | `def` | [coproductIsoCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/coproductisocoproduct--c44590fb1cb69969dd3c85ea.md) | 202 | `declaration-track:c44590fb1cb69969dd3c85ea6698679a1f8097916af6fc3a30e56cf879593ef8` |
| 23 | `theorem` | [Sigma.ι_comp_toFiniteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/sigma-comp-tofinitecoproduct--ed8675a36190fe80c5010d9c.md) | 205 | `result-track:ed8675a36190fe80c5010d9c3f0fa58f3c649f7c0503f8da7248786cda5f9311` |
| 24 | `def` | [coproductHomeoCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/coproducthomeocoproduct--d95f7e511b87a74ce0e48427.md) | 213 | `declaration-track:d95f7e511b87a74ce0e48427b4fbe1374dac1dda6229e0d291907b842c7f820f` |
| 25 | `lemma` | [finiteCoproduct.ι_injective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/finitecoproduct-injective--2894d2b49427f48768bd979a.md) | 218 | `result-track:2894d2b49427f48768bd979afbe01d79bd06d9fead30df24cab5dec72d363722` |
| 26 | `lemma` | [finiteCoproduct.ι_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/finitecoproduct-jointly-surjective--c176604914830d42971a72df.md) | 222 | `result-track:c176604914830d42971a72df74ac3a2b5bb281919f3a50369ae1eec7e786f90b` |
| 27 | `lemma` | [finiteCoproduct.ι_desc_apply](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/declarations/finitecoproduct-desc-apply--a8f94183a95ae1ea7cea9297.md) | 225 | `result-track:a8f94183a95ae1ea7cea9297967eae63d0b087f905152411708d080568fd00b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
