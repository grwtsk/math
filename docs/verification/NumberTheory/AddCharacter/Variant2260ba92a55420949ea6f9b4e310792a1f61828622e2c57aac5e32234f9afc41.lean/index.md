# Verification target: GRWTSK.NumberTheory.AddCharacter.Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b70aea8e3745ab061bd55311edd9ff3ef3bd909a",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b70aea8e3745ab061bd55311edd9ff3ef3bd909a`.

Source path: `GRWTSK/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Trace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddChar](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/addchar--71e02f7843c333cd23dd90ca.md) | 74 | `declaration-track:71e02f7843c333cd23dd90ca0bc8c44e31b4d50a61c128acb4b30c00261ad848` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/instance--03b437920de04a4581e54f75.md) | 87 | `declaration-track:03b437920de04a4581e54f75ec36b448f4ada8fd8891e2c53baf97c45f34ad20` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/instance--5139a573d094d2b32e49f8c9.md) | 90 | `declaration-track:5139a573d094d2b32e49f8c9c8472b96dc2924667706da46c4c24b6990b8876b` |
| 4 | `def` | [toMonoidHom](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/tomonoidhom--a0800cbc91c91b25d0a1a56e.md) | 100 | `declaration-track:a0800cbc91c91b25d0a1a56e8d1a3822c98728ed16e84deb1d38fd478e4b45b5` |
| 5 | `def` | [toFun](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/tofun--e81f954a601d0c924281b0d2.md) | 108 | `declaration-track:e81f954a601d0c924281b0d29efae4b9c3702ae2b87b1157c3f0b091d321710b` |
| 6 | `instance` | [hasCoeToFun](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/hascoetofun--cdb0be2c06d011c5392667a3.md) | 113 | `declaration-track:cdb0be2c06d011c5392667a3a52d17808fc7097f199e9718f5d9ca92f1ef3231` |
| 7 | `theorem` | [coe_to_fun_apply](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/coe-to-fun-apply--c8e9544e9ed94cd7c016fe11.md) | 117 | `result-track:c8e9544e9ed94cd7c016fe112157f2dd1560a0c9daa15acbd1d9f08b3c9cc08a` |
| 8 | `theorem` | [mul_apply](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/mul-apply--af758b7a1cb1cdfd7abce16a.md) | 122 | `result-track:af758b7a1cb1cdfd7abce16aab5d78efa53c2b82f14bdb527665fc3705ff1f4e` |
| 9 | `theorem` | [one_apply](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/one-apply--9e0a84f48eaa66451f796db0.md) | 127 | `result-track:9e0a84f48eaa66451f796db022208dc696f710c37116e2248801cabbf8efc699` |
| 10 | `instance` | [monoidHomClass](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/monoidhomclass--a9e969b928bcab5ed1b05071.md) | 129 | `declaration-track:a9e969b928bcab5ed1b05071c0775271813fd15123d2d2e11169cb813bbfbab6` |
| 11 | `theorem` | [ext](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/ext--8660cc0d0e5b4d9abfc1cee8.md) | 135 | `result-track:8660cc0d0e5b4d9abfc1cee87743018f7065ef35ba001a85f713191bd50bc059` |
| 12 | `theorem` | [map_zero_one](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/map-zero-one--fa6e704df3ba8aa0998ae062.md) | 140 | `result-track:fa6e704df3ba8aa0998ae0627239dcffc7782c10fecc053f87f58a4dec10640c` |
| 13 | `theorem` | [map_add_mul](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/map-add-mul--1724e0e01b611a71a5c83455.md) | 145 | `result-track:1724e0e01b611a71a5c834558f81341922b61f6520299db12bf49451c0f56eb8` |
| 14 | `theorem` | [map_nsmul_pow](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/map-nsmul-pow--840f616d627acb1f667f8cee.md) | 151 | `result-track:840f616d627acb1f667f8ceec309b45fe221bf869550615a7f02247e7867e950` |
| 15 | `instance` | [hasInv](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/hasinv--fdc43ca5f183e32f80339688.md) | 167 | `declaration-track:fdc43ca5f183e32f80339688ad354fbaf5b57f3a941309b65a07c28a4fcc5266` |
| 16 | `theorem` | [inv_apply](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/inv-apply--ae9a98e9e0aa855e2d8f9e0f.md) | 171 | `result-track:ae9a98e9e0aa855e2d8f9e0f01ea522f75f1e37597b579736f1c7458bc134a8d` |
| 17 | `theorem` | [map_zsmul_zpow](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/map-zsmul-zpow--dc13e0c5a1916be6658707c6.md) | 177 | `result-track:dc13e0c5a1916be6658707c6c32ca4d265c864fd236f12af066f38d57b60afbe` |
| 18 | `instance` | [commGroup](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/commgroup--7be18b7967bc0d7e83aa8f07.md) | 182 | `declaration-track:7be18b7967bc0d7e83aa8f0708ebc17b51e8a152048067c893f4b3e3f9fbc82b` |
| 19 | `def` | [IsNontrivial](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/isnontrivial--eb764104043c353ee1855e02.md) | 199 | `declaration-track:eb764104043c353ee1855e0208370bc804f17119e59d7c34fdc2ac574adf58af` |
| 20 | `theorem` | [isNontrivial_iff_ne_trivial](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/isnontrivial-iff-ne-trivial--3d010c9f68b669b6e47dc383.md) | 204 | `result-track:3d010c9f68b669b6e47dc383519e8557c2f174e69218ec475d57daae1858f680` |
| 21 | `def` | [mulShift](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/mulshift--38dedbecd9cdf86a5b5930ae.md) | 212 | `declaration-track:38dedbecd9cdf86a5b5930ae8ef17fb8d6327dfe633b33535d9ed87d98764f21` |
| 22 | `theorem` | [mulShift_apply](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/mulshift-apply--9685f9c1fc7574e904475263.md) | 217 | `result-track:9685f9c1fc7574e904475263c147008a16f386ce2dbf228fb530a08909ceee78` |
| 23 | `theorem` | [inv_mulShift](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/inv-mulshift--b767e0f261581f1f8735bcf5.md) | 222 | `result-track:b767e0f261581f1f8735bcf535932a6a8730ccee07958b97fa835631e4be67e2` |
| 24 | `theorem` | [mulShift_spec'](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/mulshift-spec--76883a4c5bd33f6e0fdd27db.md) | 228 | `result-track:76883a4c5bd33f6e0fdd27db41c64ddadb65ca1774ede4ad6838a0a61352b0fa` |
| 25 | `theorem` | [pow_mulShift](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/pow-mulshift--ba0b974ea00fffc1f8c08137.md) | 233 | `result-track:ba0b974ea00fffc1f8c08137115dd5dee9ff4d8091820c9ce48080927818cd1c` |
| 26 | `theorem` | [mulShift_mul](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/mulshift-mul--393fa2bf07bb9824174b1228.md) | 239 | `result-track:393fa2bf07bb9824174b1228bbdaf52f8284e510246df033ca5c821117ff67f9` |
| 27 | `theorem` | [mulShift_zero](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/mulshift-zero--a323271e331746e711cf7968.md) | 247 | `result-track:a323271e331746e711cf7968dfbd02e66ed39fa41040e5b47ae2f778f5733feb` |
| 28 | `def` | [IsPrimitive](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/isprimitive--41f6477c4623d3bee3421ef9.md) | 254 | `declaration-track:41f6477c4623d3bee3421ef99c2df413af818ba9da2e0c22807357d19bf2a5d0` |
| 29 | `theorem` | [to_mulShift_inj_of_isPrimitive](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/to-mulshift-inj-of-isprimitive--0997bf1aa39e31af930aae50.md) | 260 | `result-track:0997bf1aa39e31af930aae50a6ead61d348d2f242fc3d3f568a901185032a642` |
| 30 | `theorem` | [IsNontrivial.isPrimitive](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/isnontrivial-isprimitive--ba95c290563e2039d6d942ee.md) | 275 | `result-track:ba95c290563e2039d6d942eee7073f89c1a8356e0c5d261a38066308bcaff803` |
| 31 | `def` | [PrimitiveAddChar](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/primitiveaddchar--f9ee4dec60154482c9b9c2f0.md) | 292 | `declaration-track:f9ee4dec60154482c9b9c2f059b8b60ef4342cb0ede365215c78be85fc20d074` |
| 32 | `def` | [PrimitiveAddChar.n](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/primitiveaddchar-n--17eaa41b5081961e51f4e765.md) | 297 | `declaration-track:17eaa41b5081961e51f4e7653c5b8be03cf45b9de0591919a7756db8451d1d10` |
| 33 | `def` | [PrimitiveAddChar.char](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/primitiveaddchar-char--a0a08395ea07851b70fc329c.md) | 302 | `declaration-track:a0a08395ea07851b70fc329c1bc4671aff5d5d184e7eb2749fb0a048bc29bc4c` |
| 34 | `theorem` | [PrimitiveAddChar.prim](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/primitiveaddchar-prim--2b81b65c12fd704b99c3c2a9.md) | 307 | `result-track:2b81b65c12fd704b99c3c2a9e4c40886e326dfc3e7f790f6f52cd3990e03d7e0` |
| 35 | `def` | [zmodChar](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/zmodchar--e6c58dc382c3de79886ef7c1.md) | 324 | `declaration-track:e6c58dc382c3de79886ef7c1e60b397cea3409d6307e843e1a8913450fc8d49b` |
| 36 | `theorem` | [zmodChar_apply](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/zmodchar-apply--7b8a584fc584359607cb1cd1.md) | 333 | `result-track:7b8a584fc584359607cb1cd1afbdebba429a3d25a7a54dbdf499ddaa16f9cafd` |
| 37 | `theorem` | [zmodChar_apply'](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/zmodchar-apply--a7884134722b5fd2e488fa8b.md) | 338 | `result-track:a7884134722b5fd2e488fa8b3920ea31d1495234a905e4f5af11468037f3d14f` |
| 38 | `theorem` | [zmod_char_isNontrivial_iff](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/zmod-char-isnontrivial-iff--0bf7065b6225d87062b8642e.md) | 346 | `result-track:0bf7065b6225d87062b8642e404a3886edd1ce0cf37443ecf376011074a413b0` |
| 39 | `theorem` | [IsPrimitive.zmod_char_eq_one_iff](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/isprimitive-zmod-char-eq-one-iff--a6d0b3e85c87b7801d848b67.md) | 358 | `result-track:a6d0b3e85c87b7801d848b6787158af204170ad3ca48b6a8306b2fe332751a55` |
| 40 | `theorem` | [zmod_char_primitive_of_eq_one_only_at_zero](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/zmod-char-primitive-of-eq-one-only-at-zero--6c37c9e1000687cae49af224.md) | 366 | `result-track:6c37c9e1000687cae49af224851e95e79e443cf8f5ebfac353e0a3560a5d254d` |
| 41 | `theorem` | [zmodChar_primitive_of_primitive_root](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/zmodchar-primitive-of-primitive-root--8ba76f36fc4732a494a631d1.md) | 377 | `result-track:8ba76f36fc4732a494a631d1c98e22f336ada50bfe46f823e20096917a9d1a5d` |
| 42 | `def` | [primitiveZModChar](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/primitivezmodchar--11810f7c5979546b426a353d.md) | 387 | `declaration-track:11810f7c5979546b426a353d540a0362c594645039272b54f5c54de0a3fdd806` |
| 43 | `def` | [primitiveCharFiniteField](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/primitivecharfinitefield--c59120ca474fefca27baee92.md) | 403 | `declaration-track:c59120ca474fefca27baee92d846d2ed99cd97f73a6d75c8d1da9e16b2792212` |
| 44 | `theorem` | [sum_eq_zero_of_isNontrivial](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/sum-eq-zero-of-isnontrivial--8b43f7b6f4e2d898df2b1f2f.md) | 434 | `result-track:8b43f7b6f4e2d898df2b1f2fe901046246dacfe804e9cf84ad0e57b7bfaa05f0` |
| 45 | `theorem` | [sum_eq_card_of_is_trivial](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/sum-eq-card-of-is-trivial--9662a7043678599e5bbe1f42.md) | 446 | `result-track:9662a7043678599e5bbe1f42aafb8b0b4613e6fe892475d02efb830fc4d5395b` |
| 46 | `theorem` | [sum_mulShift](../../../../mathematics/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/declarations/sum-mulshift--6231512d6912436c968eef6c.md) | 456 | `result-track:6231512d6912436c968eef6c3708d70aadec3e3987075ce7502ba57f16af80d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
