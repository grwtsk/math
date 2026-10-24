# Verification target: GRWTSK.Algebra.LinearAlgebra.Limits.Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "578cb9de3bbf8af05056639a3f6edc7a6713b1fa",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `578cb9de3bbf8af05056639a3f6edc7a6713b1fa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Colimit.Module` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [addCommGroupObj](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/addcommgroupobj--6e19865e995acc159fc45eec.md) | 32 | `declaration-track:6e19865e995acc159fc45eecd8f5c8583f776227378da8d6b7de2dd5081cfcc3` |
| 2 | `instance` | [moduleObj](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/moduleobj--e843e4a681059799c55d478a.md) | 36 | `declaration-track:e843e4a681059799c55d478a9174fafee96cb7e6bf0a2952b5068d8d455fc430` |
| 3 | `def` | [sectionsSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/sectionssubmodule--2eb4c9dc238364086321dc0a.md) | 42 | `declaration-track:2eb4c9dc238364086321dc0aeb05f597728e102ff37cec0a9ff36cc335e81677` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/instance--d1e6683fb3473ce8b305b00c.md) | 50 | `declaration-track:d1e6683fb3473ce8b305b00c37bcdb824d169cbbcdaa889b8899867c9dbe7e14` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/instance--d08b18b9f70c3f240cc7f34e.md) | 53 | `declaration-track:d08b18b9f70c3f240cc7f34ec1aef9de829a9da6fbc3b6a085108f6482857ebf` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/instance--8c9a2a2becbf4ed91c316e12.md) | 60 | `declaration-track:8c9a2a2becbf4ed91c316e128b76bcd5be03f34b7ecaa9f79fe5c8af785265fe` |
| 7 | `instance` | [limitAddCommMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/limitaddcommmonoid--9ce9e711572d7c3f53c74967.md) | 65 | `declaration-track:9ce9e711572d7c3f53c74967338bfc164da130cf25ed5dc3b97e88626d671567` |
| 8 | `instance` | [limitAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/limitaddcommgroup--def6397724379bdc2e61e53b.md) | 69 | `declaration-track:def6397724379bdc2e61e53b76acff9b415a4b0cfebf4f796608cb68de3526ba` |
| 9 | `instance` | [limitModule](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/limitmodule--7183067acabf9a37d706a9fe.md) | 73 | `declaration-track:7183067acabf9a37d706a9fe0d9b6c40087e1d7a0e109020dd91cda17784d0dd` |
| 10 | `def` | [limitπLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/limit-linearmap--a953e1634c72b34c09115eee.md) | 78 | `declaration-track:a953e1634c72b34c09115eee31f3a86bb51398dfa0234beb4ac586963d8bf2c8` |
| 11 | `def` | [limitCone](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/limitcone--26ed31c68865dcc864871b48.md) | 99 | `declaration-track:26ed31c68865dcc864871b480ffb949642353a9c10bcf084907bef6c92eb2b89` |
| 12 | `def` | [limitConeIsLimit](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/limitconeislimit--c7eea94a6384f49855203ccc.md) | 109 | `declaration-track:c7eea94a6384f49855203ccce99fc7748ec032bb3a4fea2ecc5effdbbd0abd9b` |
| 13 | `instance` | [hasLimit](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/haslimit--abf80cccd58404d4b10dfd30.md) | 128 | `declaration-track:abf80cccd58404d4b10dfd3068dbc118eb3ae69c6a7b664ac08ac6a685a1f70d` |
| 14 | `lemma` | [hasLimitsOfShape](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/haslimitsofshape--4ffc0ba5bcd96ad9b003849a.md) | 134 | `result-track:4ffc0ba5bcd96ad9b003849a8eeba21500b8b2cc36a116e8fea080e70a69f2f4` |
| 15 | `lemma` | [hasLimitsOfSize](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/haslimitsofsize--40ee2c774afed75d15079c58.md) | 137 | `result-track:40ee2c774afed75d15079c58beda489679a0b64eb3fbd22bfcb18f11c30f28e6` |
| 16 | `instance` | [hasLimits](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/haslimits--3c76d39d05a183d6659a0edb.md) | 140 | `declaration-track:3c76d39d05a183d6659a0edb201ce72856fb52115b0c5670e765f673a560ccac` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/instance--61e2261f22d962d163aaac5d.md) | 143 | `declaration-track:61e2261f22d962d163aaac5dc17da182069371fc03b3385edbd287112fa45bcd` |
| 18 | `def` | [forget₂AddCommGroup_preservesLimitsAux](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/forget-addcommgroup-preserveslimitsaux--d827b2cd9684b09640cd2941.md) | 148 | `declaration-track:d827b2cd9684b09640cd2941fe2fa274d2e9bc502dda2257ff5767668f49f89d` |
| 19 | `instance` | [forget₂AddCommGroup_preservesLimit](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/forget-addcommgroup-preserveslimit--80af2c3779839073ae2d1f9d.md) | 156 | `declaration-track:80af2c3779839073ae2d1f9d7baa5cd879f124d8a228767c94de2e7e4166ff38` |
| 20 | `instance` | [forget₂AddCommGroup_preservesLimitsOfSize](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/forget-addcommgroup-preserveslimitsofsize--23a00b8086c70d305290ea5a.md) | 163 | `declaration-track:23a00b8086c70d305290ea5ab10461b3aed908c666566587ba64d8a5b9716042` |
| 21 | `instance` | [forget₂AddCommGroup_preservesLimits](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/forget-addcommgroup-preserveslimits--541332ca967c0163abf2322f.md) | 168 | `declaration-track:541332ca967c0163abf2322ff5bbc62af10a26d5aab6eac757a21545dcbfbad2` |
| 22 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/forget-preserveslimitsofsize--8d520767e86ff5600e21d8e2.md) | 174 | `declaration-track:8d520767e86ff5600e21d8e223e899ccaf90c75e302f883ebc57e4b1953c9fa5` |
| 23 | `instance` | [forget_preservesLimits](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/forget-preserveslimits--1ad50b91ddfc87d280d5ad45.md) | 180 | `declaration-track:1ad50b91ddfc87d280d5ad4586de069b3012959b312906e057479f14714e4d4d` |
| 24 | `instance` | [forget₂AddCommGroup_reflectsLimit](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/forget-addcommgroup-reflectslimit--83e3ecbccf99a0f3a244e439.md) | 185 | `declaration-track:83e3ecbccf99a0f3a244e4398b18467ef473a3f6e0a8ac857d679ab0a7dd37ea` |
| 25 | `instance` | [forget₂AddCommGroup_reflectsLimitOfShape](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/forget-addcommgroup-reflectslimitofshape--973d9e84def8ee663528e56d.md) | 194 | `declaration-track:973d9e84def8ee663528e56d9a77bed17dc5b476d6c7fa49c91f186fdf7f2bb8` |
| 26 | `instance` | [forget₂AddCommGroup_reflectsLimitOfSize](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/forget-addcommgroup-reflectslimitofsize--7c457aa61dd04ddd9732aa3b.md) | 197 | `declaration-track:7c457aa61dd04ddd9732aa3bbadf740899a379af7f678d73ef3e89e178a2a890` |
| 27 | `def` | [directLimitDiagram](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/directlimitdiagram--c90c0bb9914b1150f0b1cc56.md) | 212 | `declaration-track:c90c0bb9914b1150f0b1cc56a3cfa169cd7b1900e8596a40cf28f793466feac2` |
| 28 | `def` | [directLimitCocone](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/directlimitcocone--39deab52a379b1afd58938f5.md) | 230 | `declaration-track:39deab52a379b1afd58938f5d8dd834541a367ca7fb9abf5a47200d663b25d4e` |
| 29 | `def` | [directLimitIsColimit](../../../../../mathematics/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/declarations/directlimitiscolimit--0e07f7de9b6cfc715204445f.md) | 241 | `declaration-track:0e07f7de9b6cfc715204445f0d4c6445d6ec086019681bf7fb000e3cc82d7c75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
