# Verification target: GRWTSK.Algebra.GroupTheory.Limits.Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49e9f6fbe524846b260c42fb24c3423fdac5d494",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49e9f6fbe524846b260c42fb24c3423fdac5d494`.

Source path: `GRWTSK/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [monoidObj](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/monoidobj--5a67c5f0c16a73c66378a874.md) | 46 | `declaration-track:5a67c5f0c16a73c66378a874730cdd1823823c075892ab3f3dceaeafe86c1804` |
| 2 | `def` | [sectionsSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/sectionssubmonoid--bf49fec07844ac0547287c93.md) | 52 | `declaration-track:bf49fec07844ac0547287c937508d3ca0212338f439ba87f2eeef290bff1bd7b` |
| 3 | `instance` | [sectionsMonoid](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/sectionsmonoid--f7a621131702b1ffa6ea826e.md) | 58 | `declaration-track:f7a621131702b1ffa6ea826ed0cfd2ece04ec8c951dc54895ccf1192cc4655f1` |
| 4 | `instance` | [limitMonoid](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/limitmonoid--0b4f0c71d9503c6adaff8e24.md) | 64 | `declaration-track:0b4f0c71d9503c6adaff8e240c4bb763a12a2e16f432735a80613192a029b4c3` |
| 5 | `def` | [limitπMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/limit-monoidhom--99526d15ea2ab65347effda9.md) | 72 | `declaration-track:99526d15ea2ab65347effda9840f829ecc980b9f22739d831c076c9069314571` |
| 6 | `def` | [limitCone](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/limitcone--ac1632c07b4cdb4e18099a5a.md) | 88 | `declaration-track:ac1632c07b4cdb4e18099a5a09fb29e611d9f2291b8dff473377fac77d038d2a` |
| 7 | `def` | [limitConeIsLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/limitconeislimit--7e72c415fb0e174ccebcee95.md) | 101 | `declaration-track:7e72c415fb0e174ccebcee958e1a1df03f3e555fe3141e058c0426834525be36` |
| 8 | `instance` | [hasLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/haslimit--df46e17934f2652a740bc3cf.md) | 112 | `declaration-track:df46e17934f2652a740bc3cff5d7cf2373223715c1702b12750af1355dacf08c` |
| 9 | `instance` | [hasLimitsOfShape](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/haslimitsofshape--daa5d46efac67a178392ce85.md) | 120 | `declaration-track:daa5d46efac67a178392ce85019b12ff77f7e0905adea7df68b577e5bd8bb88e` |
| 10 | `instance` | [hasLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/haslimitsofsize--6702aa5c45ba9179b8578311.md) | 129 | `declaration-track:6702aa5c45ba9179b8578311dafd7f9a71b4c4388e67552dd0ea0eb1c5aab4e3` |
| 11 | `instance` | [hasLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/haslimits--d5ca52eebf69cd5a6909d2e9.md) | 133 | `declaration-track:d5ca52eebf69cd5a6909d2e94184b48654a6357d7208937e3c6035515f52c26d` |
| 12 | `instance` | [forget_preservesLimitsOfShape](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-preserveslimitsofshape--bb7e7a820fff1be71e3a866b.md) | 139 | `declaration-track:bb7e7a820fff1be71e3a866b41cbb9915f5e5ab2a9ab0de50c97c137a01b9727` |
| 13 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-preserveslimitsofsize--8e2925b92bebbb4052e370e2.md) | 151 | `declaration-track:8e2925b92bebbb4052e370e27cadf8857af8544bbbd905c9f679b5c716e6235c` |
| 14 | `instance` | [forget_preservesLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-preserveslimits--0cc00570bc007ee040c33507.md) | 156 | `declaration-track:0cc00570bc007ee040c33507cf37073a17e9cd38702c4416ffb929b16c9c346f` |
| 15 | `instance` | [forget_createsLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-createslimit--5533033ffc43c20c4f1f9d17.md) | 162 | `declaration-track:5533033ffc43c20c4f1f9d176225971fa235c7bbe9df15491ac63910a5ea46b6` |
| 16 | `instance` | [forget_createsLimitsOfShape](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-createslimitsofshape--72af70882cbb48f985691910.md) | 194 | `declaration-track:72af70882cbb48f9856919101183854887a66ab54a1e8f79f9504fae14561d6d` |
| 17 | `instance` | [forget_createsLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-createslimitsofsize--c673a4de7d6b0ed80dd76936.md) | 200 | `declaration-track:c673a4de7d6b0ed80dd76936d88140cee6380090583666f9c5178e2cab984242` |
| 18 | `instance` | [forget_createsLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-createslimits--155e758e3178c795e4c23b99.md) | 205 | `declaration-track:155e758e3178c795e4c23b9903180eac4bc54e3553d546a94c1a226ffc378820` |
| 19 | `instance` | [commMonoidObj](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/commmonoidobj--1729bc8c441b9577915bc1af.md) | 217 | `declaration-track:1729bc8c441b9577915bc1af6f6bda2a91e4f57d3120c6babefef52f790086f6` |
| 20 | `instance` | [limitCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/limitcommmonoid--b81bf0a3bea6bf88b223c09e.md) | 223 | `declaration-track:b81bf0a3bea6bf88b223c09e6f7be42d87ccb693d3068698f847d14ff5598fa0` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/instance--7f5bb2816264772a83b2992a.md) | 231 | `declaration-track:7f5bb2816264772a83b2992afd5ebcd4e26a065b768d7d4a725ca2905d275349` |
| 22 | `instance` | [forget₂CreatesLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-createslimit--227ad7a52a9b385e15aa89cb.md) | 242 | `declaration-track:227ad7a52a9b385e15aa89cb6f325ff7dac29c8b5d65b8ba7294f97c05aa9881` |
| 23 | `def` | [limitCone](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/limitcone--d1ea2ae1e8183c6dd1b968be.md) | 261 | `declaration-track:d1ea2ae1e8183c6dd1b968bef449dde58a9defaff76b1ebf8063a8b6af84dcaf` |
| 24 | `def` | [limitConeIsLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/limitconeislimit--171408121f352049968d5622.md) | 270 | `declaration-track:171408121f352049968d56220ae4c6bc1e19b18ff6af29686678b8864f83ebde` |
| 25 | `instance` | [hasLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/haslimit--d5ed3cecc18698bfe6c0ddc8.md) | 275 | `declaration-track:d5ed3cecc18698bfe6c0ddc8a273f1a87a2abaadde83c411de8fff9c3e73bb39` |
| 26 | `instance` | [hasLimitsOfShape](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/haslimitsofshape--2f4f67b203083223735c845e.md) | 283 | `declaration-track:2f4f67b203083223735c845e83fbe8238e7f4c52889d394b02438f664537b01b` |
| 27 | `instance` | [hasLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/haslimitsofsize--5c55d456c8c55305fa18dfa4.md) | 288 | `declaration-track:5c55d456c8c55305fa18dfa4967a48bcf7b1a44aabfe51e8abdeec0f452d4b32` |
| 28 | `instance` | [hasLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/haslimits--4c6eccebba2598251e081476.md) | 292 | `declaration-track:4c6eccebba2598251e08147696858c32c6f61febd2136efb3bd97b97f3fce8bd` |
| 29 | `instance` | [forget₂Mon_preservesLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-mon-preserveslimitsofsize--0ff76900f60953599ea4c982.md) | 304 | `declaration-track:0ff76900f60953599ea4c982417d7ae4eb765e6df5df26e5bad8b8b7e1b51fad` |
| 30 | `instance` | [forget₂Mon_preservesLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-mon-preserveslimits--bd02caf2e2d4b1742615542b.md) | 309 | `declaration-track:bd02caf2e2d4b1742615542b6307d77de1476568291ec826294817e84881e7b6` |
| 31 | `instance` | [forget_preservesLimitsOfShape](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-preserveslimitsofshape--5210cd410020f8f95f7ca59b.md) | 317 | `declaration-track:5210cd410020f8f95f7ca59b0d04684db70d158b430d12b1fdeddff64b8d8638` |
| 32 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-preserveslimitsofsize--e9444170c7c0c6c6f6dedea6.md) | 329 | `declaration-track:e9444170c7c0c6c6f6dedea6c81e78bf7cee5332bb2da1baa8b0b79200563f7c` |
| 33 | `instance` | [_root_.GRWTSK.Algebra.GroupTheory.SectionsSubmonoid.Variantc524f687f029d1ce5af43e57f59ba54c4e626154a123590ee4bb0253b17041b8.AddCommMonCat.forget_preservesLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/root-grwtsk-algebra-grouptheory-sectionssubmonoid-variantc524f687f029d1c--0d57ecea985994c7287922f5.md) | 333 | `declaration-track:0d57ecea985994c7287922f5d634b17bdd35292842218b913c53199fe681990e` |
| 34 | `instance` | [forget_preservesLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-preserveslimits--2b92e702c69c23fc5eb7279c.md) | 338 | `declaration-track:2b92e702c69c23fc5eb7279c2d8eada737c6a52a48b0b4f6cef45fd89db317c2` |
| 35 | `instance` | [forget_createsLimit](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-createslimit--42146b4155743ed969559b6e.md) | 342 | `declaration-track:42146b4155743ed969559b6e8ef9926a3a31529a2644f1778d55303a3d399cae` |
| 36 | `instance` | [forget_createsLimitsOfShape](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-createslimitsofshape--cce4946c021134f62770105d.md) | 349 | `declaration-track:cce4946c021134f62770105d8fe5948f9646b0b8b466e2a7d96770c3415942fa` |
| 37 | `instance` | [forget_createsLimitsOfSize](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-createslimitsofsize--f3a335cd3bcabefce4b54e97.md) | 356 | `declaration-track:f3a335cd3bcabefce4b54e971d277b26401d042df523e8c2e2b09b2d536fdf42` |
| 38 | `instance` | [forget_createsLimits](../../../../../mathematics/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/declarations/forget-createslimits--8a6791a8c87ef49919543308.md) | 361 | `declaration-track:8a6791a8c87ef49919543308cfccd0ab6bf58ded3f86c7e42fda1fd7bd4db46e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
