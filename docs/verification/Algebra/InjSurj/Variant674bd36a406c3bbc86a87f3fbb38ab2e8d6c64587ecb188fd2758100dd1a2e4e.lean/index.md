# Verification target: GRWTSK.Algebra.InjSurj.Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b5eaf7e8a20ff37c455008a8a941ef47840f5e2",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/index.md) · [Full source](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b5eaf7e8a20ff37c455008a8a941ef47840f5e2`.

Source path: `GRWTSK/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean.json)

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
| 1 | `theorem` | [leftDistribClass](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/leftdistribclass--45f344fdcfa410a40494a696.md) | 46 | `result-track:45f344fdcfa410a40494a696c39387e5582f377dfbb924c831bf90f9ba9b4c13` |
| 2 | `theorem` | [rightDistribClass](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/rightdistribclass--ad532ae1af80c84d5020e006.md) | 51 | `result-track:ad532ae1af80c84d5020e0064e32064bf72efa6474a76d9f8dd6c777c6920d38` |
| 3 | `abbrev` | [distrib](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/distrib--eba4135ebe72aecf2d780602.md) | 60 | `declaration-track:eba4135ebe72aecf2d78060278ac4f2279ecf435322206adb0059b08f6a6656b` |
| 4 | `abbrev` | [hasDistribNeg](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/hasdistribneg--946081229f1d2be14c08b089.md) | 68 | `declaration-track:946081229f1d2be14c08b089618915a91ab2b8446980de691108fd7cf72f14e2` |
| 5 | `abbrev` | [addMonoidWithOne](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/addmonoidwithone--15857fb0042e2ce8ae025fcd.md) | 78 | `declaration-track:15857fb0042e2ce8ae025fcd960089dfed81bee4ee511150a75b296adca21825` |
| 6 | `abbrev` | [addCommMonoidWithOne](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/addcommmonoidwithone--ea67648f37e983d2fd35513d.md) | 90 | `declaration-track:ea67648f37e983d2fd35513d1fa841455e103b038f78af4e67d2cd75f6b87f83` |
| 7 | `abbrev` | [addGroupWithOne](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/addgroupwithone--e1f540e466cc511a877031b5.md) | 100 | `declaration-track:e1f540e466cc511a877031b55f83208dc0e85af10d3ab52f6d44d1ac9ec1041d` |
| 8 | `abbrev` | [addCommGroupWithOne](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/addcommgroupwithone--087bf668f024f65610736d84.md) | 115 | `declaration-track:087bf668f024f65610736d84bccebbf3f625d52afdae2175bd5e733f93b71132` |
| 9 | `abbrev` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalnonassocsemiring--96182fa4ab88385e0c8e5b34.md) | 126 | `declaration-track:96182fa4ab88385e0c8e5b3447b10961080e85abe5a2f442372c52f26d87bda9` |
| 10 | `abbrev` | [nonUnitalSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalsemiring--cb0dbec840d9eef27fd9c529.md) | 135 | `declaration-track:cb0dbec840d9eef27fd9c529a1a09873d8da35adae468b53c42109748e16b617` |
| 11 | `abbrev` | [nonAssocSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonassocsemiring--87fe35e14d55e1f9370b6f0d.md) | 144 | `declaration-track:87fe35e14d55e1f9370b6f0d517f031ff9d9f7e4a72d11f1a6c9f2d88825110e` |
| 12 | `abbrev` | [semiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/semiring--cd972f2b0ba8e25668017eed.md) | 154 | `declaration-track:cd972f2b0ba8e25668017eed5ccf183adc1750c226f7c733528729673e5c692c` |
| 13 | `abbrev` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalnonassocring--5b222fc2ab160e3845ef4e3a.md) | 164 | `declaration-track:5b222fc2ab160e3845ef4e3a48f82285de70bb239856554165136ecd746db2c8` |
| 14 | `abbrev` | [nonUnitalRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalring--ab6c2be085f43a86f804549d.md) | 174 | `declaration-track:ab6c2be085f43a86f804549dd95d715f41460b80f0b540f1333857973011160f` |
| 15 | `abbrev` | [nonAssocRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonassocring--337fafed63fc1bce46cc9b23.md) | 184 | `declaration-track:337fafed63fc1bce46cc9b237a9cc1685b6ed407cf3d16465727f2c2ebe8ebbe` |
| 16 | `abbrev` | [ring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/ring--88f19146f75d7e3a8a6f1102.md) | 196 | `declaration-track:88f19146f75d7e3a8a6f1102e08128cf061f0fbecbfd3d1dc48d1b142b715ea4` |
| 17 | `abbrev` | [nonUnitalNonAssocCommSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalnonassoccommsemiring--0f0288bad7766394a8cfbe76.md) | 210 | `declaration-track:0f0288bad7766394a8cfbe768911afc0456d1bc6564e0037347087dcf97d189a` |
| 18 | `abbrev` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalcommsemiring--aba8981b676d8d0438e443e6.md) | 219 | `declaration-track:aba8981b676d8d0438e443e66d718abaa03f1a990d5e6e82be49b94aa5420de7` |
| 19 | `abbrev` | [nonAssocCommSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonassoccommsemiring--7e987122cd8e6aa84ef2c562.md) | 228 | `declaration-track:7e987122cd8e6aa84ef2c5624f06611ef33edc29a422ad9ea2aa8b18ce1eb46b` |
| 20 | `abbrev` | [commSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/commsemiring--e9d41e3f36dfeda18e28e19a.md) | 237 | `declaration-track:e9d41e3f36dfeda18e28e19af4e9d6a0bcbe9582e7f051b7d899bc6c48ca3335` |
| 21 | `abbrev` | [nonUnitalNonAssocCommRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalnonassoccommring--c0e93751acc9857faf16dac0.md) | 247 | `declaration-track:c0e93751acc9857faf16dac0330999f503e405c566fead51ec643789ce7a122f` |
| 22 | `abbrev` | [nonUnitalCommRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalcommring--cefd34aec4d7ab43982879ec.md) | 257 | `declaration-track:cefd34aec4d7ab43982879ec553ea87d2a8830b27e175a3e36c40594820c0c4b` |
| 23 | `abbrev` | [nonAssocCommRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonassoccommring--417cec762e8ba4f9ae814290.md) | 267 | `declaration-track:417cec762e8ba4f9ae814290ffee44880a1416d46bd3f22fbbc0b5dcc7391aa3` |
| 24 | `abbrev` | [commRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/commring--9f53f5a2628292fb822cb5e2.md) | 278 | `declaration-track:9f53f5a2628292fb822cb5e2119518ecb4ccb742aede89bec10486628e7857e3` |
| 25 | `theorem` | [leftDistribClass](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/leftdistribclass--ce535a561999d18b26c09637.md) | 296 | `result-track:ce535a561999d18b26c09637ed66326b10e5952cda2314a9ae5534f32ebef60e` |
| 26 | `theorem` | [rightDistribClass](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/rightdistribclass--ce66c442ec107c1aecb9211c.md) | 301 | `result-track:ce66c442ec107c1aecb9211cb075a95d6e6a5ca3ca6e3cbf1675cae91f22c843` |
| 27 | `abbrev` | [distrib](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/distrib--4a0ebe55a3bf5ef7e436d3b9.md) | 307 | `declaration-track:4a0ebe55a3bf5ef7e436d3b9997b9da88f8448d693b2d473a70d3678b5166962` |
| 28 | `abbrev` | [hasDistribNeg](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/hasdistribneg--9bd5538b653d6e7413da121b.md) | 318 | `declaration-track:9bd5538b653d6e7413da121b7a189e6b450f78b35a25f2863453a5bff4cbe403` |
| 29 | `abbrev` | [addMonoidWithOne](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/addmonoidwithone--9d951a0c22461f1b60bfce54.md) | 328 | `declaration-track:9d951a0c22461f1b60bfce540e65c3d5cde3ff59c466cf4c1998cc13fbfd304b` |
| 30 | `abbrev` | [addCommMonoidWithOne](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/addcommmonoidwithone--d72c529230c3f16f5ab182c0.md) | 339 | `declaration-track:d72c529230c3f16f5ab182c0625bcd162f30e981273348f8dd0900585b08058d` |
| 31 | `abbrev` | [addGroupWithOne](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/addgroupwithone--d39cdeffa5630c26e559ec1a.md) | 348 | `declaration-track:d39cdeffa5630c26e559ec1a285adf47282d268a8058861edfb1118b97d7f384` |
| 32 | `abbrev` | [addCommGroupWithOne](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/addcommgroupwithone--55646f14766195c1b0283a53.md) | 363 | `declaration-track:55646f14766195c1b0283a53a399862330b7e8a580eae18120cdc808fc0b7368` |
| 33 | `abbrev` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalnonassocsemiring--31d878f581f1f6f62a593a2d.md) | 373 | `declaration-track:31d878f581f1f6f62a593a2dfbf5ab82206f99fd27ded1557f07b740dcb3dd54` |
| 34 | `abbrev` | [nonUnitalSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalsemiring--05ef5e635b96a5043f9c0750.md) | 382 | `declaration-track:05ef5e635b96a5043f9c07502edc18b98a74cc03df994fe160f63c2b8c692f8a` |
| 35 | `abbrev` | [nonAssocSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonassocsemiring--0cfe7de1e4c0755e5720f044.md) | 390 | `declaration-track:0cfe7de1e4c0755e5720f044afd897427f64c309f2652c1ded3246edd2c263be` |
| 36 | `abbrev` | [semiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/semiring--6adf0d1180ffe4ae6576a506.md) | 400 | `declaration-track:6adf0d1180ffe4ae6576a5069fe29654a0dcc869acdc3076ff125299448f4855` |
| 37 | `abbrev` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalnonassocring--8e699a1df1da31abe415d487.md) | 410 | `declaration-track:8e699a1df1da31abe415d4870b5382cc0e1dfb693363d0a985dc0132fd95432d` |
| 38 | `abbrev` | [nonUnitalRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalring--93bad09273157553b6485525.md) | 420 | `declaration-track:93bad09273157553b64855255eda1bd4d89f4f98b12ac45f18b4216ee903280d` |
| 39 | `abbrev` | [nonAssocRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonassocring--a68d5e8d71623b4a1bc4e33f.md) | 430 | `declaration-track:a68d5e8d71623b4a1bc4e33ffd8f92916e7ec32ea0d2f6bf3f12847f543e23cf` |
| 40 | `abbrev` | [ring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/ring--35fd2ecf74236c7de468778e.md) | 441 | `declaration-track:35fd2ecf74236c7de468778edcb94ded7d22a2c4086eaa467493eba8387a3e59` |
| 41 | `abbrev` | [nonUnitalNonAssocCommSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalnonassoccommsemiring--8e87345396bfb7e934ccd63a.md) | 453 | `declaration-track:8e87345396bfb7e934ccd63a6badbdaab224ad1d88d5840adbea475719a315a0` |
| 42 | `abbrev` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalcommsemiring--268079c1c903f0356041c79b.md) | 461 | `declaration-track:268079c1c903f0356041c79baa9f4d97aac98e0e19d0868e5f7829e22483eeb4` |
| 43 | `abbrev` | [nonAssocCommSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonassoccommsemiring--32decb5d1bee6a04885d31fe.md) | 469 | `declaration-track:32decb5d1bee6a04885d31fe416c00517fa65cb396917626d09125772cd30df6` |
| 44 | `abbrev` | [commSemiring](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/commsemiring--ad5a98f3dd87dfba39851930.md) | 478 | `declaration-track:ad5a98f3dd87dfba398519300cf98682c478c6d6ff963848ba5ef45720e3384d` |
| 45 | `abbrev` | [nonUnitalNonAssocCommRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalnonassoccommring--7c0ee52ab7d964d4cc368f3f.md) | 487 | `declaration-track:7c0ee52ab7d964d4cc368f3f5a0d298436fcee9625c82fece8adf4704b79c271` |
| 46 | `abbrev` | [nonUnitalCommRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonunitalcommring--b92e3e699ac5674a3bfc6f64.md) | 497 | `declaration-track:b92e3e699ac5674a3bfc6f6442b394d983eb10c73b0f473ccf42856d83f7ecdd` |
| 47 | `abbrev` | [nonAssocCommRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/nonassoccommring--74a2f2609ad8dfd00bba8431.md) | 507 | `declaration-track:74a2f2609ad8dfd00bba843133064f6cd37ad3b8d7870193fad8e2fa242dd2d6` |
| 48 | `abbrev` | [commRing](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/commring--5a469a45bf594e48a67d99de.md) | 517 | `declaration-track:5a469a45bf594e48a67d99de56750153ee898947a6fe25158dde222c154bf602` |
| 49 | `instance` | [AddOpposite.instHasDistribNeg](../../../../mathematics/Algebra/InjSurj/Variant674bd36a406c3bbc86a87f3fbb38ab2e8d6c64587ecb188fd2758100dd1a2e4e.lean/declarations/addopposite-insthasdistribneg--d4f87b204549c5c8f3a61245.md) | 530 | `declaration-track:d4f87b204549c5c8f3a61245cec4eba005b20db41aefa7be52af1d0977891ab0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
