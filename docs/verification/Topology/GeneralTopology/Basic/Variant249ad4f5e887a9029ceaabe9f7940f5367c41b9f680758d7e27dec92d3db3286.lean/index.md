# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b8de13138d474a3e68e118dcede877e6a911258",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b8de13138d474a3e68e118dcede877e6a911258`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Adjunctions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [limitCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/limitcone--d65ec9ef1857dc47cee68d82.md) | 46 | `declaration-track:d65ec9ef1857dc47cee68d823f76575e19ba4ac7e9c1752444552be553757758` |
| 2 | `def` | [limitConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/limitconeislimit--d711094b2a535fcee36be58e.md) | 61 | `declaration-track:d711094b2a535fcee36be58ef1b39105e0eda6b2d754bdeabd51bd51876284e5` |
| 3 | `def` | [conePtOfConeForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/coneptofconeforget--6de9c4085b6edb89b2957d4e.md) | 85 | `declaration-track:6de9c4085b6edb89b2957d4e65e814395f7be427b4bfad1bc0da5f6297f9fe3c` |
| 4 | `instance` | [topologicalSpaceConePtOfConeForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/topologicalspaceconeptofconeforget--cdd1bbd0653ef9d618dec3ff.md) | 87 | `declaration-track:cdd1bbd0653ef9d618dec3ff4fbd67faecc5da8e540fc2163a582c8b58b0a542` |
| 5 | `def` | [coneOfConeForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/coneofconeforget--41e27396d199f2171b3a278d.md) | 95 | `declaration-track:41e27396d199f2171b3a278da2269cb97cb0c6725ed053db8e87dc303238f393` |
| 6 | `def` | [isLimitConeOfForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/islimitconeofforget--e26baadbd571d2d837df780b.md) | 108 | `declaration-track:e26baadbd571d2d837df780b8eaebf0686f44f3b24bcfef5887b54c2a7c1d2e7` |
| 7 | `theorem` | [induced_of_isLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/induced-of-islimit--520fad2c8714340ec76bfbaf.md) | 128 | `result-track:520fad2c8714340ec76bfbaffdfa5faa67645f44fbb474db644216b6d5de475f` |
| 8 | `theorem` | [limit_topology](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/limit-topology--8682b76375709adab201c8e5.md) | 144 | `result-track:8682b76375709adab201c8e5807713f2596b0e43208625c58c120ad6780955a1` |
| 9 | `lemma` | [hasLimit_iff_small_sections](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/haslimit-iff-small-sections--7008e1b3838182723b8e1858.md) | 148 | `result-track:7008e1b3838182723b8e1858f710770824a5d95527cc78559f03f00148a4835e` |
| 10 | `instance` | [topCat_hasLimitsOfShape](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/topcat-haslimitsofshape--42009a55f753f9383164a0dd.md) | 155 | `declaration-track:42009a55f753f9383164a0dd53f4ad873c406a1446f9c848e821af097cddb565` |
| 11 | `instance` | [topCat_hasLimitsOfSize](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/topcat-haslimitsofsize--6428f082f203de7c5497a2e6.md) | 161 | `declaration-track:6428f082f203de7c5497a2e63860de6722c5cc679bb3512a5785078c452e116c` |
| 12 | `instance` | [topCat_hasLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/topcat-haslimits--687d2739966cd5c73eccdbb1.md) | 163 | `declaration-track:687d2739966cd5c73eccdbb1dbf42438aba14628721da3a2bea33a4b62f0f9be` |
| 13 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/forget-preserveslimitsofsize--3ad352d1be04b2d16c168258.md) | 166 | `declaration-track:3ad352d1be04b2d16c168258800802e44cd71286817c761180610edd98b34b68` |
| 14 | `instance` | [forget_preservesLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/forget-preserveslimits--191c57919f507931b7f3fdc5.md) | 169 | `declaration-track:191c57919f507931b7f3fdc5ae64a3cfb5195fe2c9f084334576742990f4d550` |
| 15 | `def` | [coconePtOfCoconeForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/coconeptofcoconeforget--cb27d0c554ac891ae0aa4ccf.md) | 184 | `declaration-track:cb27d0c554ac891ae0aa4ccf8ea56e0af60258680ab052410cf41f31702d4b25` |
| 16 | `instance` | [topologicalSpaceCoconePtOfCoconeForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/topologicalspacecoconeptofcoconeforget--7488a47a4f4e3d84509c8c2f.md) | 186 | `declaration-track:7488a47a4f4e3d84509c8c2f4e5bdf33ecfa3af5dff2d4f366dcbf37fa71a9e9` |
| 17 | `def` | [coconeOfCoconeForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/coconeofcoconeforget--5d280b7516d8b740b1df2b3c.md) | 194 | `declaration-track:5d280b7516d8b740b1df2b3c724b2a8f18b8e1a2d9b96c54385f2db2a53da980` |
| 18 | `def` | [isColimitCoconeOfForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/iscolimitcoconeofforget--f9b3fb5ab6937192f73ff9ed.md) | 207 | `declaration-track:f9b3fb5ab6937192f73ff9ed7d0258d9b8a0ef9dd7b9963d4b2aa5c56c96b682` |
| 19 | `theorem` | [coinduced_of_isColimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/coinduced-of-iscolimit--b2fd4a49a4fb3c72a15548d4.md) | 230 | `result-track:b2fd4a49a4fb3c72a15548d4704ae430591d60d6672a591b4c7878672bff3848` |
| 20 | `lemma` | [isOpen_iff_of_isColimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/isopen-iff-of-iscolimit--cb4ebd30fa0193bc941dbbe6.md) | 243 | `result-track:cb4ebd30fa0193bc941dbbe6892dc2fe36ab8e0d8550771f642b885faca56c35` |
| 21 | `lemma` | [isClosed_iff_of_isColimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/isclosed-iff-of-iscolimit--f1af84f218cc96278a91e026.md) | 250 | `result-track:f1af84f218cc96278a91e026ee82275d642b465ec65509618e1dbbfd440d8362` |
| 22 | `lemma` | [continuous_iff_of_isColimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/continuous-iff-of-iscolimit--c12812b15d3923a7d847c92c.md) | 255 | `result-track:c12812b15d3923a7d847c92ce1443abd0963b31965f4917f2a4f255608a0dc0f` |
| 23 | `theorem` | [colimit_topology](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/colimit-topology--5076ae79fee109480d20742d.md) | 264 | `result-track:5076ae79fee109480d20742dd6c8cad2412f5a77593d15f64855e987aa4dba3f` |
| 24 | `theorem` | [colimit_isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/colimit-isopen-iff--cfe40162e798afa3f8038580.md) | 268 | `result-track:cfe40162e798afa3f8038580204d967bfbf05a771b9f55dcdafd3b420ba55cae` |
| 25 | `lemma` | [hasColimit_iff_small_quot](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/hascolimit-iff-small-quot--17bb920741343ad0a4e927ec.md) | 273 | `result-track:17bb920741343ad0a4e927ec5ef7fd73057ce806076bdc7eb6ab457f16c139e1` |
| 26 | `instance` | [topCat_hasColimitsOfShape](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/topcat-hascolimitsofshape--d3a1e3cbcffb979e5ab7be62.md) | 280 | `declaration-track:d3a1e3cbcffb979e5ab7be621676d42350e71ffff64934646f0d595b8df945d9` |
| 27 | `instance` | [topCat_hasColimitsOfSize](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/topcat-hascolimitsofsize--0d56ab1cf4ae15b893952d1b.md) | 286 | `declaration-track:0d56ab1cf4ae15b893952d1b498f9a6a5978aa88f32e885ac93f37ee0b465fa9` |
| 28 | `instance` | [topCat_hasColimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/topcat-hascolimits--c7abc8f91f5ba522439dfe8c.md) | 288 | `declaration-track:c7abc8f91f5ba522439dfe8cfb78da08229b090d6ecd9d1b47b82d806a2d1940` |
| 29 | `instance` | [forget_preservesColimitsOfSize](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/forget-preservescolimitsofsize--f9c4ee8bf93b65d1e1742540.md) | 291 | `declaration-track:f9c4ee8bf93b65d1e1742540dc26de82ca816af5d2049102c5d5d51ffdaddc16` |
| 30 | `instance` | [forget_preservesColimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/forget-preservescolimits--3f1235c4df8686536730ede2.md) | 294 | `declaration-track:3f1235c4df8686536730ede276d6ba9790b3d8771f4c8f3d6b7edfbf03abb866` |
| 31 | `def` | [isTerminalPUnit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/isterminalpunit--f891b5d2d5c406b1d9dd2ce9.md) | 299 | `declaration-track:f891b5d2d5c406b1d9dd2ce97fd59b63ff0d6396e5001be712ebaa6a42fc99e6` |
| 32 | `def` | [terminalIsoPUnit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/terminalisopunit--49bcad29ea3c617b9e42bd13.md) | 305 | `declaration-track:49bcad29ea3c617b9e42bd13dc2926e0a5c9f15f017b7eb12a00ab33e1971b06` |
| 33 | `def` | [isInitialPEmpty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/isinitialpempty--3d0381a6adefe63a9c300ab4.md) | 309 | `declaration-track:3d0381a6adefe63a9c300ab4973c0e4f4e84eda5f844300b5645d0121962d9bc` |
| 34 | `def` | [initialIsoPEmpty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean/declarations/initialisopempty--daf96e3c8ad20bc169bb3f2d.md) | 315 | `declaration-track:daf96e3c8ad20bc169bb3f2d74e8e41b5e442a3c67760965c10435cc748b2568` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
