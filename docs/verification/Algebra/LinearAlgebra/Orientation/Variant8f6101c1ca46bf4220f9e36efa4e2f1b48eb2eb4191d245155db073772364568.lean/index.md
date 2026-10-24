# Verification target: GRWTSK.Algebra.LinearAlgebra.Orientation.Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "852c25f0c9cfffc3fa2b89531626b53682b507dc",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `852c25f0c9cfffc3fa2b89531626b53682b507dc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Ray` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation--ad61a5dbc9f68db53d3d2512.md) | 61 | `declaration-track:ad61a5dbc9f68db53d3d25120a7c3a778ae52ba21d3fb96b240efb030fb992c9` |
| 2 | `class` | [Module.Oriented](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/module-oriented--2b349dd8b411b422e60bb3d6.md) | 65 | `declaration-track:2b349dd8b411b422e60bb3d64655030974e114f8f9cd8ac1ef51fed1da8dc26f` |
| 3 | `def` | [Orientation.map](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-map--ffd9b1de160ebf58e552e79e.md) | 75 | `declaration-track:ffd9b1de160ebf58e552e79ef7220f9448932d4a0ac39af5a2b68e8ba27078a7` |
| 4 | `theorem` | [Orientation.map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-map-apply--52a269f991d79f2964380c5f.md) | 80 | `result-track:52a269f991d79f2964380c5ffee3291b10f6523f2dadab45e1a3da57700054ae` |
| 5 | `theorem` | [Orientation.map_refl](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-map-refl--0f5933d214158f55af2b80ec.md) | 87 | `result-track:0f5933d214158f55af2b80ecdaa36f8177aa79ea7e8d4389cf3ce7dde16a6e50` |
| 6 | `theorem` | [Orientation.map_symm](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-map-symm--ece2f315ec4ab5a8d9d06227.md) | 92 | `result-track:ece2f315ec4ab5a8d9d062273eff533997760a581ec5b73ada20e167aae4a709` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/instance--47a46c94c090ae11abfcf656.md) | 97 | `declaration-track:47a46c94c090ae11abfcf65662ecca3c152d86ae67f092d46350f94ef5ddbe4d` |
| 8 | `theorem` | [Orientation.map_positiveOrientation_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-map-positiveorientation-of-isempty--c23898ec0d4073b4c84221ee.md) | 104 | `result-track:c23898ec0d4073b4c84221ee882b0a5f80ec950dbddb91feae824d44add5a2c8` |
| 9 | `theorem` | [Orientation.map_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-map-of-isempty--58e26ad1cf7ca1b33192a5c2.md) | 109 | `result-track:58e26ad1cf7ca1b33192a5c2a7a27ca03395e92b063d324452f2db45b8f7cf1e` |
| 10 | `theorem` | [Orientation.map_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-map-neg--99d19d23861ba7681ac22b4a.md) | 129 | `result-track:99d19d23861ba7681ac22b4abad73a0870720fa98e94a24364965dc0238e8454` |
| 11 | `theorem` | [map_orientation_eq_det_inv_smul](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/map-orientation-eq-det-inv-smul--538c2c9fe74aec84fa958252.md) | 140 | `result-track:538c2c9fe74aec84fa9582524b382320db1d2e67e03d65da056934a9af59a7a0` |
| 12 | `def` | [orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation--51035806a30a2cd959ac3722.md) | 156 | `declaration-track:51035806a30a2cd959ac3722af1123412051316ca1bb29b510ec273e64cda4f5` |
| 13 | `theorem` | [orientation_map](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-map--2bdbebba1cf9aa790ff8f7cf.md) | 160 | `result-track:2bdbebba1cf9aa790ff8f7cff3ae3192b8afe2866949f5674eba94f95497b4f4` |
| 14 | `theorem` | [orientation_unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-unitssmul--afd8ab9790f8de5df2731d84.md) | 167 | `result-track:afd8ab9790f8de5df2731d84f9c432cd29bcc0518d895a967ed712b106e2403f` |
| 15 | `theorem` | [orientation_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-isempty--537649ccbc73fb44da5f4575.md) | 177 | `result-track:537649ccbc73fb44da5f4575b6c419e74560c996fa1162fbbcaee2ce8bb978f8` |
| 16 | `theorem` | [eq_or_eq_neg_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/eq-or-eq-neg-of-isempty--5d3731bc28701cf8fcf40a4a.md) | 201 | `result-track:5d3731bc28701cf8fcf40a4a74200fb1fd3f05bb5827f60149f449ee31aaf311` |
| 17 | `theorem` | [orientation_eq_iff_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-eq-iff-det-pos--f75049cca585a8a988c26115.md) | 225 | `result-track:f75049cca585a8a988c261150caf98154b29fcb0da2a12e538ebac2fec3b2cdd` |
| 18 | `theorem` | [orientation_eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-eq-or-eq-neg--9d8fc052b76cb972a51894ed.md) | 235 | `result-track:9d8fc052b76cb972a51894ed22cfefabee351ddfaf2fd9d2483a207fee021665` |
| 19 | `theorem` | [orientation_ne_iff_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-ne-iff-eq-neg--18a2c0fe0a73d7dd024e53cf.md) | 246 | `result-track:18a2c0fe0a73d7dd024e53cf184a911b54626b8145514eda200137a8f38863ee` |
| 20 | `theorem` | [orientation_comp_linearEquiv_eq_iff_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-comp-linearequiv-eq-iff-det-pos--389cdee073d548f1b6b550ae.md) | 254 | `result-track:389cdee073d548f1b6b550ae751144760fcc520f2d1837ba9f5779a2e0b0c752` |
| 21 | `theorem` | [orientation_comp_linearEquiv_eq_neg_iff_det_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-comp-linearequiv-eq-neg-iff-det-neg--9dbcf69a93de9c0e4ae29c85.md) | 262 | `result-track:9dbcf69a93de9c0e4ae29c850e0fee1ba3da9f9d29ff724d55953f7d91f5d997` |
| 22 | `theorem` | [orientation_neg_single](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-neg-single--ea1cf3622c7e55756ecda6d7.md) | 271 | `result-track:ea1cf3622c7e55756ecda6d75a00f19b48039f4bb3e82c9a59a74cf8008afc23` |
| 23 | `def` | [adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/adjusttoorientation--d190f6e796f761bc00bbc7a1.md) | 279 | `declaration-track:d190f6e796f761bc00bbc7a113205f76621718cab8966667699f1b566437a480` |
| 24 | `theorem` | [orientation_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/orientation-adjusttoorientation--87e0abd4d01baf9c850c5a2a.md) | 287 | `result-track:87e0abd4d01baf9c850c5a2a1cc4ee6577d75d02b2f5c3f274fb743fbd0552ad` |
| 25 | `theorem` | [adjustToOrientation_apply_eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/adjusttoorientation-apply-eq-or-eq-neg--605267d38bcfaf7e1f4f8fef.md) | 298 | `result-track:605267d38bcfaf7e1f4f8fefd5587cb681661a14dbbfae298d967718f8874883` |
| 26 | `theorem` | [det_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/det-adjusttoorientation--867a54346550294775bea169.md) | 307 | `result-track:867a54346550294775bea169d824cac81c0fdaa1303fff4aa8d935ccbca1a2da` |
| 27 | `theorem` | [abs_det_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/abs-det-adjusttoorientation--c5b9d177f74bd3c35dab0787.md) | 321 | `result-track:c5b9d177f74bd3c35dab07870a97a0ae8a3188b678fef30bee4888add5be46f4` |
| 28 | `theorem` | [eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/eq-or-eq-neg--f55c5bf060a72c9713acdf78.md) | 346 | `result-track:f55c5bf060a72c9713acdf7854d9a4df51d94ec7497b12e71a823afb90eb176c` |
| 29 | `theorem` | [ne_iff_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/ne-iff-eq-neg--558aadd8899f585172650c0c.md) | 359 | `result-track:558aadd8899f585172650c0cb000c96a0bef1163d623309749ae638ef9f60fc0` |
| 30 | `theorem` | [map_eq_det_inv_smul](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/map-eq-det-inv-smul--482f1d23a5dd1a6a0d5f44cc.md) | 367 | `result-track:482f1d23a5dd1a6a0d5f44cc05421ec2f086cb64c16cd989c77234cbe6264c75` |
| 31 | `theorem` | [map_eq_iff_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/map-eq-iff-det-pos--2b191977e1b4feacb3d79194.md) | 376 | `result-track:2b191977e1b4feacb3d79194f5ba0a9ef2064bb6ef8cae9476cb95b73a462e9f` |
| 32 | `theorem` | [map_eq_neg_iff_det_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/map-eq-neg-iff-det-neg--c4c8fecf5531b57a442dad15.md) | 390 | `result-track:c4c8fecf5531b57a442dad15ba4d54dd1db2f7a87d23831537dc01d4af510b37` |
| 33 | `def` | [someBasis](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/somebasis--e0bad5aa77da71f25632da10.md) | 407 | `declaration-track:e0bad5aa77da71f25632da1080f13443c238eef164fa52feb27be923515ab4b0` |
| 34 | `theorem` | [someBasis_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant8f6101c1ca46bf4220f9e36efa4e2f1b48eb2eb4191d245155db073772364568.lean/declarations/somebasis-orientation--e26ae4d0e4d48898b6589441.md) | 414 | `result-track:e26ae4d0e4d48898b65894417592d47c9b4f9f8cc34f70811a36764e9421f931` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
