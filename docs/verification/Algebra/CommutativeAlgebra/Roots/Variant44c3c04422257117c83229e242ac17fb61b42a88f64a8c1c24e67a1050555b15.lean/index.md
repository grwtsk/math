# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Roots.Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2977660f60759e115358765e96cc6ac151dd7da",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2977660f60759e115358765e96cc6ac151dd7da`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Minpoly` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isRoot_of_unity_of_root_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/isroot-of-unity-of-root-cyclotomic--538e1c9ff45febedd82f6184.md) | 42 | `result-track:538e1c9ff45febedd82f6184cbc0e0b06a16bcbc471bda020c18bbf094337c6d` |
| 2 | `theorem` | [_root_.isRoot_of_unity_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/root-isroot-of-unity-iff--79ec36a9496ebf640a875424.md) | 58 | `result-track:79ec36a9496ebf640a8754241f464aa333222e9cce9787aeb52c86a55c470f30` |
| 3 | `theorem` | [_root_.IsPrimitiveRoot.isRoot_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/root-isprimitiveroot-isroot-cyclotomic--47b076363391f31c8a51e88b.md) | 65 | `result-track:47b076363391f31c8a51e88bf18749315ab8e58b5f9d4ec6a725bd4342e5bcb3` |
| 4 | `theorem` | [isRoot_cyclotomic_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/isroot-cyclotomic-iff--1113411c10e74bf660da53b2.md) | 72 | `result-track:1113411c10e74bf660da53b282b7beacb51850e75b5304e3421f86d25a764045` |
| 5 | `theorem` | [isRoot_cyclotomic_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/isroot-cyclotomic-iff--ea5c84b763f47e7cf587189d.md) | 105 | `result-track:ea5c84b763f47e7cf587189d90bfa2754fed2e7ce0300e2737c402f59ae093d8` |
| 6 | `theorem` | [roots_cyclotomic_nodup](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/roots-cyclotomic-nodup--fd6c599833ecfb2d6e5bcf0d.md) | 113 | `result-track:fd6c599833ecfb2d6e5bcf0dfff1c2c1871cfb1e8043fc67536e73da8d3f3572` |
| 7 | `theorem` | [cyclotomic.roots_to_finset_eq_primitiveRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/cyclotomic-roots-to-finset-eq-primitiveroots--40f0472f88bef74dbf2c7bec.md) | 122 | `result-track:40f0472f88bef74dbf2c7becfe7caa312b73ac900424cfa36b565a5691fa8f80` |
| 8 | `theorem` | [cyclotomic.roots_eq_primitiveRoots_val](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/cyclotomic-roots-eq-primitiveroots-val--76047e3ae3d7808ff66ea7ae.md) | 133 | `result-track:76047e3ae3d7808ff66ea7aebc23f0cd886d6523ece3da8401c46b12a77c3f8d` |
| 9 | `theorem` | [isRoot_cyclotomic_iff_charZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/isroot-cyclotomic-iff-charzero--665d4958ef9dd19002737878.md) | 140 | `result-track:665d4958ef9dd19002737878c4b93006eac649cc136b9ec1c2759ed2ede72144` |
| 10 | `theorem` | [cyclotomic_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/cyclotomic-injective--f22f137d73e2cd1e76fc3b66.md) | 149 | `result-track:f22f137d73e2cd1e76fc3b66ce4202a70dce228724a10b85e32a755a324a9eb2` |
| 11 | `theorem` | [_root_.IsPrimitiveRoot.minpoly_dvd_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/root-isprimitiveroot-minpoly-dvd-cyclotomic--d61fd9b3ae4e166930481eca.md) | 173 | `result-track:d61fd9b3ae4e166930481eca15731b75691fd667a22de49181620bcbf0d3fabf` |
| 12 | `theorem` | [_root_.IsPrimitiveRoot.minpoly_eq_cyclotomic_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/root-isprimitiveroot-minpoly-eq-cyclotomic-of-irreducible--cacc7f6704622de397820dcd.md) | 183 | `result-track:cacc7f6704622de397820dcd66a5926a76130414656e2401e0c6ae28db063613` |
| 13 | `theorem` | [cyclotomic_eq_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/cyclotomic-eq-minpoly--80fd3d10b887b18733ac1285.md) | 192 | `result-track:80fd3d10b887b18733ac128582c6d9ce7ce9a9d749f9fa00bb1422cc424ed4ce` |
| 14 | `theorem` | [cyclotomic_eq_minpoly_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/cyclotomic-eq-minpoly-rat--8c79615c8131db301847a86d.md) | 200 | `result-track:8c79615c8131db301847a86d3c6ff353de5a01ebb43ec0b9eee48c41831a510c` |
| 15 | `theorem` | [cyclotomic.irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/cyclotomic-irreducible--0c6823704fd165880af9a8c4.md) | 207 | `result-track:0c6823704fd165880af9a8c4a7d65c222beed33d05eaa2db503c152196e05827` |
| 16 | `theorem` | [cyclotomic.irreducible_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/cyclotomic-irreducible-rat--a8659887a5ce6660096950c0.md) | 214 | `result-track:a8659887a5ce6660096950c01b1762a18ff3b4b2d41063b32816f82d1193c618` |
| 17 | `theorem` | [cyclotomic.isCoprime_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/declarations/cyclotomic-iscoprime-rat--5a4a4b7c8a7cc46e2420e75a.md) | 221 | `result-track:5a4a4b7c8a7cc46e2420e75af16e2d5b33462cda48b6563fb9b7423957328665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
