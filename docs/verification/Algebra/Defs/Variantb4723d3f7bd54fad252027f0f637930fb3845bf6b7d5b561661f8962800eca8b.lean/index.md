# Verification target: GRWTSK.Algebra.Defs.Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80d14c31cb0a723de689be163ee73b46e7a07777",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80d14c31cb0a723de689be163ee73b46e7a07777`.

Source path: `GRWTSK/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.StacksAttribute` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Distrib](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/distrib--3e4fddd396abddd93e21eb40.md) | 61 | `declaration-track:3e4fddd396abddd93e21eb4029b72c05de828061eb1c34d3b414d988998dd666` |
| 2 | `class` | [LeftDistribClass](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/leftdistribclass--5f9c0090e194b85cbeed8144.md) | 68 | `declaration-track:5f9c0090e194b85cbeed814400a338dd233d69f9be9501a4b753ccd2b530b580` |
| 3 | `class` | [RightDistribClass](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/rightdistribclass--2f56c0416cae33b2eae4e253.md) | 73 | `declaration-track:2f56c0416cae33b2eae4e2531561e9bf6fdef3e656db97dd13ce929e1ee21e73` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/instance--5a65014b07c18144439ff6f9.md) | 78 | `declaration-track:5a65014b07c18144439ff6f9b708654f4a0c63be2b9910455e76f7417417812f` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/instance--cb7c58cd00521ef5e0fe592e.md) | 82 | `declaration-track:cb7c58cd00521ef5e0fe592eebeb5fc60319672a709fa99161b78a671fcefc95` |
| 6 | `theorem` | [left_distrib](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/left-distrib--517a601d2ec6cff943cf1929.md) | 86 | `result-track:517a601d2ec6cff943cf1929f651f5c6d1dce1ed24b99a76c5fa13f674a7bf6c` |
| 7 | `theorem` | [right_distrib](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/right-distrib--bb977a4babd2d46204d667c5.md) | 92 | `result-track:bb977a4babd2d46204d667c5a8aaace8625356731df920187d3caafd947d8c63` |
| 8 | `theorem` | [distrib_three_right](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/distrib-three-right--d04ab0b22bc4e31255f32684.md) | 98 | `result-track:d04ab0b22bc4e31255f3268422882f6ebb981d5ed15bb17aa568638e8289df67` |
| 9 | `class` | [NonUnitalNonAssocSemiring](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/nonunitalnonassocsemiring--89c9b4a26d49643eb3f1d03b.md) | 118 | `declaration-track:89c9b4a26d49643eb3f1d03b3e2e83e2bc8687ad8890582fcd6c0b6d8eacffe1` |
| 10 | `class` | [NonUnitalSemiring](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/nonunitalsemiring--d4e0b6aaa35eca83e5861f6c.md) | 121 | `declaration-track:d4e0b6aaa35eca83e5861f6c7904e7f70890213c14e6e0978d90ec56de28fe59` |
| 11 | `class` | [NonAssocSemiring](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/nonassocsemiring--5384d3bb546cfa560ef65290.md) | 124 | `declaration-track:5384d3bb546cfa560ef65290dc99cfe908f8d133f160e9de84b4174086007d4c` |
| 12 | `class` | [NonUnitalNonAssocRing](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/nonunitalnonassocring--1e1e5273b1cc716530b60923.md) | 128 | `declaration-track:1e1e5273b1cc716530b60923f8ebc56ecffe92a7dcd2f47b6772f7d02ca139ce` |
| 13 | `class` | [NonUnitalRing](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/nonunitalring--6a146bba1c58ed0512b2f79f.md) | 131 | `declaration-track:6a146bba1c58ed0512b2f79f983f7f03ebde30e4be715ffacafcd1ae1b318682` |
| 14 | `class` | [NonAssocRing](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/nonassocring--b803e17e2cb2450ecb7b50e2.md) | 134 | `declaration-track:b803e17e2cb2450ecb7b50e2c45d1ea0307e91fe1fff5703bf8ee7fa48837f1b` |
| 15 | `class` | [Semiring](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/semiring--adca299b88c7fcd4e4bc6eb0.md) | 140 | `declaration-track:adca299b88c7fcd4e4bc6eb095b5a8821caa4d0224a8ea4e911a3c752358cb0c` |
| 16 | `class` | [Ring](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/ring--5978d7e6074f8d502e43da63.md) | 143 | `declaration-track:5978d7e6074f8d502e43da631140888c8bc2af3831f63b6576ff2c080d811bed` |
| 17 | `theorem` | [add_one_mul](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/add-one-mul--5d6f79847cf8dc151dc3e30a.md) | 153 | `result-track:5d6f79847cf8dc151dc3e30a0eea7eb49e74889f45bf4f4a84d0b35e577b7b30` |
| 18 | `theorem` | [mul_add_one](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/mul-add-one--da6811228492f2687ab3719f.md) | 156 | `result-track:da6811228492f2687ab3719f761aa286c0f114bb5745b7dcf6017734cca32c83` |
| 19 | `theorem` | [one_add_mul](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/one-add-mul--2e9a84a752843600b49cdf45.md) | 159 | `result-track:2e9a84a752843600b49cdf45900590cf2e2de55d66750c2efcb50fd3d1305983` |
| 20 | `theorem` | [mul_one_add](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/mul-one-add--6a921a1328fb5346f4226db0.md) | 162 | `result-track:6a921a1328fb5346f4226db051ffd94d97d77215a4e9062f6c70230f7f6dddb2` |
| 21 | `theorem` | [two_mul](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/two-mul--3d2661b5e8829ba84748c821.md) | 172 | `result-track:3d2661b5e8829ba84748c82140fc63b9f7c34a81ae4ad47fcf7766c3184f07fd` |
| 22 | `theorem` | [mul_two](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/mul-two--d35b6ec99defb9e53df94b16.md) | 176 | `result-track:d35b6ec99defb9e53df94b16769fbcc75551f77fd0191e090d4101c705b7224a` |
| 23 | `lemma` | [ite_zero_mul](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/ite-zero-mul--c87d769c34dbff9bb9edbba0.md) | 184 | `result-track:c87d769c34dbff9bb9edbba0bdd537574ee546179faf0501427df256627f6f71` |
| 24 | `lemma` | [mul_ite_zero](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/mul-ite-zero--33d2a14aadc348cb7f0e05f5.md) | 186 | `result-track:33d2a14aadc348cb7f0e05f5a2153aed3d58085fae46d3bd182b8c26fb214b89` |
| 25 | `lemma` | [ite_zero_mul_ite_zero](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/ite-zero-mul-ite-zero--ba436ce445464677ba8d9add.md) | 188 | `result-track:ba436ce445464677ba8d9adda033002704804a6050ade327a8621c7e6054bc0e` |
| 26 | `theorem` | [mul_boole](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/mul-boole--3bb5daff3a516a40f33e6806.md) | 193 | `result-track:3bb5daff3a516a40f33e680686b9ba104d0ea9762f239900330577a8847d1b21` |
| 27 | `theorem` | [boole_mul](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/boole-mul--3d08b8d3b253c4813649fd69.md) | 196 | `result-track:3d08b8d3b253c4813649fd69ca207bf9c5331c6b8c5823a4ed38a22dd3083923` |
| 28 | `class` | [NonUnitalNonAssocCommSemiring](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/nonunitalnonassoccommsemiring--f20413b48ea55d42409e5990.md) | 200 | `declaration-track:f20413b48ea55d42409e5990e98cfccd02ee3eba67acd79c9e77fe81b07c25c7` |
| 29 | `class` | [NonUnitalCommSemiring](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/nonunitalcommsemiring--b178d300460b71efe0606631.md) | 206 | `declaration-track:b178d300460b71efe0606631b68fa7af266057e646c502643b363e88138ddd6b` |
| 30 | `class` | [CommSemiring](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/commsemiring--d2e14ca552fe33f0b27f1c62.md) | 209 | `declaration-track:d2e14ca552fe33f0b27f1c628ae0b49c68020d0c62d072741e3f5316892ee590` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/instance--6e3695635913f8d6fe45eb84.md) | 212 | `declaration-track:6e3695635913f8d6fe45eb84cc6a6f124dd3f29cac31788bf1ccdefe114e5114` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/instance--81f0fbbf851d5d8837743889.md) | 217 | `declaration-track:81f0fbbf851d5d8837743889c7b3d4505549e6a995a672022b74d30bb81dbee8` |
| 33 | `theorem` | [add_mul_self_eq](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/add-mul-self-eq--bc08bac05aee45c1e6114491.md) | 225 | `result-track:bc08bac05aee45c1e6114491a09353600cb68acdd4deb9955cdc761fd357e556` |
| 34 | `lemma` | [add_sq](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/add-sq--eb16b2e2b741cb6330828d11.md) | 228 | `result-track:eb16b2e2b741cb6330828d11e287749adbc8e400c92d19fe05febefabfcaf9dc` |
| 35 | `lemma` | [add_sq'](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/add-sq--88e4573ed0987c44326e076e.md) | 231 | `result-track:88e4573ed0987c44326e076e0a85978f64f1129e843d2252730b3beed669e35f` |
| 36 | `class` | [HasDistribNeg](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/hasdistribneg--0ff34c86a4c6e37eeb56484a.md) | 244 | `declaration-track:0ff34c86a4c6e37eeb56484abaa93a3f7a0839db03eaf3b99a5723055a1390bf` |
| 37 | `theorem` | [neg_mul](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/neg-mul--d906535a4f4a67550a72557b.md) | 255 | `result-track:d906535a4f4a67550a72557ba11986d59764da7e825ff3138b11a8a493f4f962` |
| 38 | `theorem` | [mul_neg](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/mul-neg--384443ca36f4c799651a8c1f.md) | 259 | `result-track:384443ca36f4c799651a8c1fa5e778b07624bd83f052b7c879fe8beed48bd67e` |
| 39 | `theorem` | [neg_mul_neg](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/neg-mul-neg--8129584792874c3f0568c975.md) | 262 | `result-track:8129584792874c3f0568c9759d483ca17a9b79644ceb09509c9f2bcb276d4696` |
| 40 | `theorem` | [neg_mul_eq_neg_mul](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/neg-mul-eq-neg-mul--038263876bc07907018043a3.md) | 264 | `result-track:038263876bc07907018043a32ed97f806f45cf9a65dd40f96cb6c873d7e3a984` |
| 41 | `theorem` | [neg_mul_eq_mul_neg](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/neg-mul-eq-mul-neg--da65295f8cbde1799ba7add9.md) | 267 | `result-track:da65295f8cbde1799ba7add9b7c8091217b2d786f3322ea56bc695ee208083c3` |
| 42 | `theorem` | [neg_mul_comm](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/neg-mul-comm--c69533cef466904a008e8a33.md) | 270 | `result-track:c69533cef466904a008e8a33d0e3497aa676370394d0139c30e308adfa168c84` |
| 43 | `theorem` | [neg_eq_neg_one_mul](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/neg-eq-neg-one-mul--63ef9768c7dc22b9217735a4.md) | 278 | `result-track:63ef9768c7dc22b9217735a41c8acfc17e58983997320a69d716df13fa3a6765` |
| 44 | `theorem` | [mul_neg_one](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/mul-neg-one--74a442a58889fa1fc75a02b5.md) | 282 | `result-track:74a442a58889fa1fc75a02b5c102e7f5e9ddeaf19ea3e1c97d9a3b81b9cddd10` |
| 45 | `theorem` | [neg_one_mul](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/neg-one-mul--cf0bfa2df43d936a439f3196.md) | 286 | `result-track:cf0bfa2df43d936a439f3196d68cdd092de0988c865dfa82e5bc943bb6d5a5d2` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/instance--c25f8a198633cf99f8252aea.md) | 294 | `declaration-track:c25f8a198633cf99f8252aeaa8640b67bf2df652c922e3d257719aebc00939e5` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/instance--44ebf75f065e1798f5821327.md) | 310 | `declaration-track:44ebf75f065e1798f58213279d8234cfb5deee36bcfe00784bf71c1e5d05085b` |
| 48 | `theorem` | [mul_sub_left_distrib](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/mul-sub-left-distrib--8cf76e9c1a0e02f92bfd8473.md) | 316 | `result-track:8cf76e9c1a0e02f92bfd8473fb94578720d23faa0130e854d043582ac98ec0c2` |
| 49 | `theorem` | [mul_sub_right_distrib](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/mul-sub-right-distrib--7f78d56021883d210619e53d.md) | 321 | `result-track:7f78d56021883d210619e53db1a03493ff8023b3413c6bc5e01ace74e096cec0` |
| 50 | `theorem` | [sub_one_mul](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/sub-one-mul--edca70e6641a68b8086c9e88.md) | 332 | `result-track:edca70e6641a68b8086c9e88fbb7195183a0c2bb191e8a44cbee83f8667de407` |
| 51 | `theorem` | [mul_sub_one](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/mul-sub-one--0da8c5fedfb135258163c7ae.md) | 334 | `result-track:0da8c5fedfb135258163c7aee3a42d78d89e4c8f27ad7b2e882d54c78e8f1497` |
| 52 | `theorem` | [one_sub_mul](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/one-sub-mul--58a3f5a0088013e827c1966d.md) | 336 | `result-track:58a3f5a0088013e827c1966dffec2d800168619defb746b3a865d1ff9fbd3f4c` |
| 53 | `theorem` | [mul_one_sub](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/mul-one-sub--3603f5702d36aa30ad3cd825.md) | 338 | `result-track:3603f5702d36aa30ad3cd8254c244afd7817eef2a6796e48e26e75d46f99c836` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/instance--a2875e382ce7064d3f9799ec.md) | 348 | `declaration-track:a2875e382ce7064d3f9799ecf79f435ed773cb67e11d45617011ecea4e3cbeea` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/instance--1237a42e9a674d20788607fd.md) | 353 | `declaration-track:1237a42e9a674d20788607fdd0df714174dfb1299ebba142cb419daf905c6fcf` |
| 56 | `class` | [NonUnitalNonAssocCommRing](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/nonunitalnonassoccommring--92365c05bec7ba9412ef04be.md) | 360 | `declaration-track:92365c05bec7ba9412ef04beed5db0b958eee431779490c7c4ab01b725a1d88c` |
| 57 | `class` | [NonUnitalCommRing](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/nonunitalcommring--6c22dcf170ad25368ffcb1a1.md) | 364 | `declaration-track:6c22dcf170ad25368ffcb1a19a7055af163e938ac97aeaadb716801a6282fc74` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/instance--f9f9aebcf6fc2f0a9d502cd8.md) | 367 | `declaration-track:f9f9aebcf6fc2f0a9d502cd8e72978877146648599673c41443a298a0f59675b` |
| 59 | `class` | [CommRing](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/commring--5f1ce9615d0b252f80f955ea.md) | 372 | `declaration-track:5f1ce9615d0b252f80f955eaac8111af1c38ed4ac48023d8e332b1af8375692c` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/instance--7e18f42a8cfb78a6ddae4372.md) | 374 | `declaration-track:7e18f42a8cfb78a6ddae4372216709717dab307bd9a4a9a725cb8e515637dbf6` |
| 61 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/instance--adc6250f916b99c83e92bcc4.md) | 378 | `declaration-track:adc6250f916b99c83e92bcc49b871ba9f418cff044f79ae3dbff09e0c89f78ed` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/instance--62b69133992fbf3d814c8a51.md) | 382 | `declaration-track:62b69133992fbf3d814c8a5161da0a438fb9e0d2f2ea564b15b71669642a87d4` |
| 63 | `class` | [IsDomain](../../../../mathematics/Algebra/Defs/Variantb4723d3f7bd54fad252027f0f637930fb3845bf6b7d5b561661f8962800eca8b.lean/declarations/isdomain--bbab4ab7dd57d4f79fea90a2.md) | 394 | `declaration-track:bbab4ab7dd57d4f79fea90a251c8112a8f2883bc9c4a3ee9b67c88e6c7619db9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
