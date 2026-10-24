# Verification target: GRWTSK.Algebra.LinearAlgebra.Isotypic.Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d5f9f88b49f4d48c6ac7e3134363ae95a019566",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d5f9f88b49f4d48c6ac7e3134363ae95a019566`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleModule.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIsotypicOfType](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypicoftype--5c237e6a0aa6654c56967e83.md) | 21 | `declaration-track:5c237e6a0aa6654c56967e83df619450d350ef1379628748289420785d444ad0` |
| 2 | `def` | [IsIsotypic](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypic--039d06ece02518c6e294d6b6.md) | 24 | `declaration-track:039d06ece02518c6e294d6b6d72992db7daf19510302dd7233e81602d85981b2` |
| 3 | `theorem` | [IsIsotypicOfType.isIsotypic](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypicoftype-isisotypic--36d5189ea4ae769676e06916.md) | 27 | `result-track:36d5189ea4ae769676e06916db9b7fd1071508fbb56f4fb026c45171e5224725` |
| 4 | `theorem` | [IsIsotypicOfType.of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypicoftype-of-subsingleton--c283dcd94f305a8051503fb6.md) | 31 | `result-track:c283dcd94f305a8051503fb6cb765925e93f53228ba5f31a090ab45b4af90eba` |
| 5 | `theorem` | [IsIsotypic.of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypic-of-subsingleton--723e0eb5bafb7168cf714b6b.md) | 35 | `result-track:723e0eb5bafb7168cf714b6b52107e9ba7a34f52f1fee310fb8e9bb61720bfef` |
| 6 | `theorem` | [IsIsotypicOfType.of_isSimpleModule](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypicoftype-of-issimplemodule--261a86cfbe0e17a598359c8b.md) | 38 | `result-track:261a86cfbe0e17a598359c8b50b96e0eebe662c6d870b67bc6d021d7b0e287c5` |
| 7 | `theorem` | [IsIsotypicOfType.of_linearEquiv_type](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypicoftype-of-linearequiv-type--bacd52a0192e83b6335d52a0.md) | 45 | `result-track:bacd52a0192e83b6335d52a0c5a638757978f1c5125112a0aa550a7219f226e0` |
| 8 | `theorem` | [IsIsotypicOfType.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypicoftype-of-injective--d199947c4256abd1151fcc74.md) | 48 | `result-track:d199947c4256abd1151fcc7449a529094c83de0233e9707a357d34dfdc874814` |
| 9 | `theorem` | [IsIsotypic.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypic-of-injective--0e34293a541d30c97e9ae68b.md) | 54 | `result-track:0e34293a541d30c97e9ae68b7e0eab3773c3b7e7feb1ef2f806c931d14228c08` |
| 10 | `theorem` | [LinearEquiv.isIsotypicOfType_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/linearequiv-isisotypicoftype-iff--fc594570f7ad9a6a114e94ac.md) | 60 | `result-track:fc594570f7ad9a6a114e94aca9616270c943a4101e756088f7ea1051f28e2b88` |
| 11 | `theorem` | [LinearEquiv.isIsotypicOfType_iff_type](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/linearequiv-isisotypicoftype-iff-type--fb83203022003dac8815b742.md) | 64 | `result-track:fb83203022003dac8815b742a6a7b119dcabbf94be714418def0c7eab20ebed9` |
| 12 | `theorem` | [LinearEquiv.isIsotypic_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/linearequiv-isisotypic-iff--a8e89bee727b15dd47e8981e.md) | 68 | `result-track:a8e89bee727b15dd47e8981e59cf35a8eb077e655de7448830f969feabd24aec` |
| 13 | `theorem` | [isIsotypicOfType_submodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypicoftype-submodule-iff--92936550ba5d378377cdf81c.md) | 71 | `result-track:92936550ba5d378377cdf81c0c06ab4f7561951887f265a280c539d38e2d8b60` |
| 14 | `theorem` | [isIsotypic_submodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypic-submodule-iff--5ecc5d8a75fc5a0fe1bd11ad.md) | 78 | `result-track:5ecc5d8a75fc5a0fe1bd11adb6e0bf6fbac2d6e8ff620dc2d3893262b0225c54` |
| 15 | `theorem` | [IsIsotypicOfType.linearEquiv_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypicoftype-linearequiv-finsupp--f8cc01d8205411478036b6a0.md) | 89 | `result-track:f8cc01d8205411478036b6a00e113d1de8ced1495e46048796e0bc0d27dc185a` |
| 16 | `theorem` | [IsIsotypic.linearEquiv_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypic-linearequiv-finsupp--ce2d918f69dc745407291d3a.md) | 95 | `result-track:ce2d918f69dc745407291d3a0031fc2298abade995c162abad6d2498e1d5d864` |
| 17 | `theorem` | [IsIsotypicOfType.linearEquiv_fun](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypicoftype-linearequiv-fun--aca7c679adda1eff9b7fedee.md) | 104 | `result-track:aca7c679adda1eff9b7fedee327060d9c334ed49373ba1888daec5dc08851d5b` |
| 18 | `theorem` | [IsIsotypic.linearEquiv_fun](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypic-linearequiv-fun--9ed5f09a3f389d6091438751.md) | 110 | `result-track:9ed5f09a3f389d609143875110a4a5ea2e06e520f10edc833009849d1191c7a0` |
| 19 | `def` | [Submodule.IsFullyInvariant](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/submodule-isfullyinvariant--9c9644036fee0309a07e3d43.md) | 124 | `declaration-track:9c9644036fee0309a07e3d434494759653ad996fbd49e2911bffbf49a8cc604a` |
| 20 | `theorem` | [isFullyInvariant_iff_isTwoSided](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isfullyinvariant-iff-istwosided--2dccebd196374061dc6cdb5d.md) | 127 | `result-track:2dccebd196374061dc6cdb5d67f93906fb36ceccb6bd7552cd37c38ccd37d6d3` |
| 21 | `def` | [isotypicComponent](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isotypiccomponent--69545d65c7bc57fee7107988.md) | 135 | `declaration-track:69545d65c7bc57fee71079880fc496ee941b9e5dcc4008e02ed23185cf8680ed` |
| 22 | `theorem` | [Submodule.le_isotypicComponent](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/submodule-le-isotypiccomponent--8d01c6f6b546f8d4965ebf4c.md) | 137 | `result-track:8d01c6f6b546f8d4965ebf4cea354681cdee34f6c6b84c4463196f4da5f076ef` |
| 23 | `theorem` | [bot_lt_isotypicComponent](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/bot-lt-isotypiccomponent--53cc50030b84143fe0eab1a2.md) | 140 | `result-track:53cc50030b84143fe0eab1a27ae54e30f2336fe4ee399cf221bffa12070c46fd` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/instance--9033f6dc859e9eb1c4447f87.md) | 145 | `declaration-track:9033f6dc859e9eb1c4447f876c68826bcc23a3af54829dc2e52df791168533ee` |
| 25 | `theorem` | [Submodule.le_linearEquiv_of_sSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/submodule-le-linearequiv-of-ssup-eq-top--e40ef4a0ef29bdd19ecdaa16.md) | 156 | `result-track:e40ef4a0ef29bdd19ecdaa16059022aec398a84c8b5d8eacbd273f6831efdd1b` |
| 26 | `theorem` | [Submodule.linearEquiv_of_sSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/submodule-linearequiv-of-ssup-eq-top--af293151967684ff5f539ab1.md) | 165 | `result-track:af293151967684ff5f539ab11e35198a3898844a2556b17bc2b7a1a1692817f2` |
| 27 | `theorem` | [Submodule.le_linearEquiv_of_le_sSup](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/submodule-le-linearequiv-of-le-ssup--cb5c8f68b616053f8581c55a.md) | 176 | `result-track:cb5c8f68b616053f8581c55a4285a8d252bde4d4e5223e8785dd466e203f5e70` |
| 28 | `theorem` | [Submodule.linearEquiv_of_le_sSup](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/submodule-linearequiv-of-le-ssup--9e072aadcf8159d5094daece.md) | 188 | `result-track:9e072aadcf8159d5094daecef1748e4d6f7185c5a8dcf96370dab4516629dbeb` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/instance--3cff74bb0e15285c2accf105.md) | 201 | `declaration-track:3cff74bb0e15285c2accf1054d0abd72a85a96917397683aa6ca79beba54f4ef` |
| 30 | `theorem` | [IsIsotypicOfType.isotypicComponent](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypicoftype-isotypiccomponent--1daf51d92222a352cb3b381c.md) | 204 | `result-track:1daf51d92222a352cb3b381c40fadabbd17ccec15e25082844059d818bfdab0c` |
| 31 | `theorem` | [IsIsotypic.isotypicComponent](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypic-isotypiccomponent--155068317abc189b253891df.md) | 210 | `result-track:155068317abc189b253891df888ed6d55885bc46d5d6a319e4c7a1ed9c500482` |
| 32 | `theorem` | [IsIsotypicOfType.of_isotypicComponent_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypicoftype-of-isotypiccomponent-eq-top--82d2f8d08086bc810fc5f9e7.md) | 215 | `result-track:82d2f8d08086bc810fc5f9e7e28a37923606fb694a04dcff086683e689ee91d6` |
| 33 | `theorem` | [isotypicComponent_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isotypiccomponent-eq-top-iff--5bf6c3a47465a5a8abdd6399.md) | 219 | `result-track:5bf6c3a47465a5a8abdd639998dddd22af4304c1a06854572c15b5468f5fe387` |
| 34 | `theorem` | [isFullyInvariant_isotypicComponent](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isfullyinvariant-isotypiccomponent--097ccf65f3363e4a7d4a6750.md) | 225 | `result-track:097ccf65f3363e4a7d4a675093d824c3123bc7d0c9260fc0cee74e663be21902` |
| 35 | `theorem` | [isIsotypic_iff_isFullyInvariant_imp_bot_or_top](../../../../../mathematics/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/declarations/isisotypic-iff-isfullyinvariant-imp-bot-or-top--016ab8476023cdb38fd799b6.md) | 236 | `result-track:016ab8476023cdb38fd799b678ae3ab3ac38d6ac8026e97bc6df0907c2761140` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
