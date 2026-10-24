# Verification target: GRWTSK.Topology.GeneralTopology.MonotoneConvergence.Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c22cc8ef325b3e42741fde7385057f89ffb15a7",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c22cc8ef325b3e42741fde7385057f89ffb15a7`.

Source path: `GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SupConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/supconvergenceclass--2c7d993cc03ecc25fd413424.md) | 47 | `declaration-track:2c7d993cc03ecc25fd41342469a8460ffd1d9b62449ff151aa76206c933c78ff` |
| 2 | `class` | [InfConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/infconvergenceclass--69380142cc0ed8eec8a733cb.md) | 58 | `declaration-track:69380142cc0ed8eec8a733cb9697a207c31b5c6045bb9a9c60e13bdc952c6d7b` |
| 3 | `instance` | [OrderDual.supConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/orderdual-supconvergenceclass--46e6f82d97c908e884fed0e7.md) | 63 | `declaration-track:46e6f82d97c908e884fed0e7df79d3484876b2d0d8f6c7f1efc62bc03045aa03` |
| 4 | `instance` | [OrderDual.infConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/orderdual-infconvergenceclass--919595ab24f64d83005e0425.md) | 67 | `declaration-track:919595ab24f64d83005e0425f61536d40c336a843acb96c18586c120a0ab23df` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/instance--d3751c8311d5a0741bc59236.md) | 72 | `declaration-track:d3751c8311d5a0741bc59236271ae5817f8b38bd7aa43275c803e9cbd846f1d8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/instance--cad3ce85a9860b7243fba249.md) | 81 | `declaration-track:cad3ce85a9860b7243fba249a6b7d8b8bfe9d32d8f1ea1c5e968b61d230f80ce` |
| 7 | `theorem` | [tendsto_atTop_isLUB](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-attop-islub--ae4ce6c167b514ab84ccc311.md) | 93 | `result-track:ae4ce6c167b514ab84ccc3112e05711eb322cd909feede15dbdd84318e5bcf09` |
| 8 | `theorem` | [tendsto_atBot_isLUB](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-atbot-islub--eb1fe4166800c7f9a2aa8289.md) | 99 | `result-track:eb1fe4166800c7f9a2aa8289777753656c9a0820c3ec87a10ce0258d19aff070` |
| 9 | `theorem` | [tendsto_atBot_isGLB](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-atbot-isglb--7e3c0176aff8cacb7f8124f0.md) | 108 | `result-track:7e3c0176aff8cacb7f8124f0bd339e9fec1a620787423729a6cb527eca48a312` |
| 10 | `theorem` | [tendsto_atTop_isGLB](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-attop-isglb--cece75bbdf13aaddabeaa55c.md) | 111 | `result-track:cece75bbdf13aaddabeaa55cd1408682dfa8a435a2003498cee051524662d18b` |
| 11 | `theorem` | [tendsto_atTop_ciSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-attop-cisup--2eed996a660da3ad8cbd86f8.md) | 120 | `result-track:2eed996a660da3ad8cbd86f8c9b4e1b465fb7b95f5b42f82f401dc30ff822d39` |
| 12 | `theorem` | [tendsto_atBot_ciSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-atbot-cisup--a7ae8c5403a75c65b6f888e3.md) | 125 | `result-track:a7ae8c5403a75c65b6f888e3c5a0628198b7d17033a65584a36f9243e4f50ab3` |
| 13 | `theorem` | [tendsto_atBot_ciInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-atbot-ciinf--3a87ef92dd46ba9d6f4153ab.md) | 134 | `result-track:3a87ef92dd46ba9d6f4153ab46a652598eebe0aaf997eea8361e4ad285d15bc5` |
| 14 | `theorem` | [tendsto_atTop_ciInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-attop-ciinf--f3fb2af11a70815c011f109d.md) | 137 | `result-track:f3fb2af11a70815c011f109d8e1894f0e9dc794dd6bba2bae1e53ff9644127fd` |
| 15 | `theorem` | [tendsto_atTop_iSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-attop-isup--677a550d5921037af6f5e765.md) | 146 | `result-track:677a550d5921037af6f5e765c84fe9e25ceaea4b8245e6b75fc3e5a3361bddfe` |
| 16 | `theorem` | [tendsto_atBot_iSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-atbot-isup--9edc1e7bfa349f1d62a32e1d.md) | 149 | `result-track:9edc1e7bfa349f1d62a32e1d63b8a933202eb8d6c85123fad1f3402fb5931324` |
| 17 | `theorem` | [tendsto_atBot_iInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-atbot-iinf--e5a0544529e56a15a5c38dd7.md) | 158 | `result-track:e5a0544529e56a15a5c38dd769fa7862a75a0f84e75cc0d8a1b3d16a702ed9d8` |
| 18 | `theorem` | [tendsto_atTop_iInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-attop-iinf--b239c1010a234baf1198a221.md) | 161 | `result-track:b239c1010a234baf1198a221f02046fdd72e90d5875a6cd4fa7ed931a0bfff42` |
| 19 | `instance` | [Prod.supConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/prod-supconvergenceclass--8c4e0b204955e4f1f9906478.md) | 168 | `declaration-track:8c4e0b204955e4f1f99064784436cb27ed9d23ca9d74037098a3d77db027c112` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/instance--7d779acce8c0976c4c17e112.md) | 180 | `declaration-track:7d779acce8c0976c4c17e1128804b90c39d225e68341410b76ccc364f1212b86` |
| 21 | `instance` | [Pi.supConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/pi-supconvergenceclass--4418032aa801572bb5ab3831.md) | 184 | `declaration-track:4418032aa801572bb5ab38316008a26725901cc9aee33b206a97458eb5292c38` |
| 22 | `instance` | [Pi.infConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/pi-infconvergenceclass--12f29f38bbb78c9e35b8e2cd.md) | 191 | `declaration-track:12f29f38bbb78c9e35b8e2cd23ed688d381a7b026e776fba9a4d59ee7b607767` |
| 23 | `instance` | [Pi.supConvergenceClass'](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/pi-supconvergenceclass--0764eb4260263c2accab4179.md) | 196 | `declaration-track:0764eb4260263c2accab4179be90d2b3545a8a616aaf6b6546844ab017b28c9a` |
| 24 | `instance` | [Pi.infConvergenceClass'](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/pi-infconvergenceclass--127dc75809c457ff4ca2e92a.md) | 200 | `declaration-track:127dc75809c457ff4ca2e92af67a29ead7408482986f50774c5229d7c2c2c9c2` |
| 25 | `theorem` | [tendsto_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-of-monotone--5690355057f6d7198dc5b6df.md) | 204 | `result-track:5690355057f6d7198dc5b6dfbb42334067d5161375533766b2c70230775b4c5a` |
| 26 | `theorem` | [tendsto_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-of-antitone--217f93a166ec6e8e9def1a23.md) | 211 | `result-track:217f93a166ec6e8e9def1a23c68a2c2a5d126212d539d185ebf0d4620a3d68a7` |
| 27 | `theorem` | [tendsto_iff_tendsto_subseq_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-iff-tendsto-subseq-of-monotone--6aa63e7717243ad676cf417e.md) | 216 | `result-track:6aa63e7717243ad676cf417e7ff7e06208d0b72a60a097da886c6c7217088a8f` |
| 28 | `theorem` | [tendsto_iff_tendsto_subseq_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/tendsto-iff-tendsto-subseq-of-antitone--df0a883bf6b08b21b78f9a55.md) | 226 | `result-track:df0a883bf6b08b21b78f9a551b3bcaf18a0bafb5db51b3d873f8232825d3dded` |
| 29 | `theorem` | [Monotone.ge_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/monotone-ge-of-tendsto--f5215dfee48a4b09a4af84ec.md) | 240 | `result-track:f5215dfee48a4b09a4af84ecee87bd303c085af49b1da1a459cdba0a86096344` |
| 30 | `theorem` | [Monotone.le_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/monotone-le-of-tendsto--6b572af73189bb938581cf09.md) | 246 | `result-track:6b572af73189bb938581cf09b181babc90c17614ce216bd350ec941465e131f4` |
| 31 | `theorem` | [Antitone.le_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/antitone-le-of-tendsto--19571a04664bef584ed7e433.md) | 251 | `result-track:19571a04664bef584ed7e433645af5212f9ffa5e3226561aa3c4fe21fe0cb860` |
| 32 | `theorem` | [Antitone.ge_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/antitone-ge-of-tendsto--0ebc127591e455eb6f3f2a18.md) | 256 | `result-track:0ebc127591e455eb6f3f2a1889112b61351f62fcd0a489cf0da62328ee928d95` |
| 33 | `theorem` | [isLUB_of_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/islub-of-tendsto-attop--7a8cacadbc13de32b694126a.md) | 261 | `result-track:7a8cacadbc13de32b694126abc16804c6678fea91da813e94f19106865e66a93` |
| 34 | `theorem` | [isGLB_of_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/isglb-of-tendsto-atbot--be983b922e1518826a56d66b.md) | 269 | `result-track:be983b922e1518826a56d66b5bc7e5f3a5f2e962bab71a4b801f53e33bbf23f9` |
| 35 | `theorem` | [isLUB_of_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/islub-of-tendsto-atbot--a5f068d3eba24a2653761f14.md) | 274 | `result-track:a5f068d3eba24a2653761f1446cf4d8430109d620b123c25b7940c6f998d6111` |
| 36 | `theorem` | [isGLB_of_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/isglb-of-tendsto-attop--65eddcb6ecc740a772383916.md) | 279 | `result-track:65eddcb6ecc740a7723839166d1b4b416e92c4c9281444cf389f9bf3a86e496a` |
| 37 | `theorem` | [iSup_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/isup-eq-of-tendsto--555294d602778b054c8bde48.md) | 284 | `result-track:555294d602778b054c8bde48ae3f05b56f298fd130043e81644972377931d789` |
| 38 | `theorem` | [iInf_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/iinf-eq-of-tendsto--7aaa887fbe92965c3318159b.md) | 289 | `result-track:7aaa887fbe92965c3318159bf2f974ff41c8a470a3c29f18017f2b36db3da57f` |
| 39 | `theorem` | [iSup_eq_iSup_subseq_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/isup-eq-isup-subseq-of-monotone--1e1a4fab1df9d54cd0c04c7a.md) | 294 | `result-track:1e1a4fab1df9d54cd0c04c7a5f96391a7ad5071556126d63e475b72030f384d0` |
| 40 | `theorem` | [iSup_eq_iSup_subseq_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/isup-eq-isup-subseq-of-antitone--78a0c089ab32e8a4f4b781a7.md) | 302 | `result-track:78a0c089ab32e8a4f4b781a72ba4021cbe68644ab960a9a1c03e677ab1f7241c` |
| 41 | `theorem` | [iInf_eq_iInf_subseq_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/iinf-eq-iinf-subseq-of-monotone--1f267d1945c72efdcd7276d9.md) | 310 | `result-track:1f267d1945c72efdcd7276d9901ca45607b96f2123a2abed0d1f82bcad29d97d` |
| 42 | `theorem` | [iInf_eq_iInf_subseq_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/declarations/iinf-eq-iinf-subseq-of-antitone--635c2de7579c53f3b9b459ba.md) | 315 | `result-track:635c2de7579c53f3b9b459baa5dbe08cd4246a6c30bcfd3294a2dfd23c673aeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
