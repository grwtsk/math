# Verification target: GRWTSK.Algebra.LinearAlgebra.SymplecticGroup.Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57de5a599d6b74550726237888e74d7fffd28186",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57de5a599d6b74550726237888e74d7fffd28186`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [J](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/j--35da14cd92068d4aadd0a896.md) | 35 | `declaration-track:35da14cd92068d4aadd0a8966f9bfe2a3130c55caab0da12323a85ded6268f25` |
| 2 | `theorem` | [J_transpose](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/j-transpose--a38aed77710e3695deed1b84.md) | 39 | `result-track:a38aed77710e3695deed1b847b80e42431936c8ecc42ec16db1ebfeae09d972e` |
| 3 | `theorem` | [J_squared](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/j-squared--bb740543dcd0ef3d24f5621f.md) | 46 | `result-track:bb740543dcd0ef3d24f5621ff66f9e72c849227778932aa14a6a902e60397306` |
| 4 | `theorem` | [J_inv](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/j-inv--9ba70367366550e2bbbcd28f.md) | 51 | `result-track:9ba70367366550e2bbbcd28fdf0f35958539e2a1ad9b1a9d2455740a2771cd1d` |
| 5 | `theorem` | [J_det_mul_J_det](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/j-det-mul-j-det--f935ae81b572fc2843e669af.md) | 56 | `result-track:f935ae81b572fc2843e669afef6ea3e022c9ea06f763eca270396894eeb7096d` |
| 6 | `theorem` | [isUnit_det_J](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/isunit-det-j--d04a78b83f33d5e092d52bea.md) | 62 | `result-track:d04a78b83f33d5e092d52bea30f0358bbd287b405e8e0e8768743d9bebce2fa5` |
| 7 | `def` | [symplecticGroup](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/symplecticgroup--6d03aa1916658d18a999b83d.md) | 70 | `declaration-track:6d03aa1916658d18a999b83df6ab2e6a313a0df771b14ff90c90d92ad255caf2` |
| 8 | `theorem` | [mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/mem-iff--aea2c66b31134c97aeacb74b.md) | 86 | `result-track:aea2c66b31134c97aeacb74b77b1311efed2473702a28389ba288802af5e3361` |
| 9 | `instance` | [coeMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/coematrix--7050b2da1f9d4e3e08b4d877.md) | 89 | `declaration-track:7050b2da1f9d4e3e08b4d877ef8e3d7d5e2b6b621ec3b686e0b237970a670365` |
| 10 | `theorem` | [J_mem](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/j-mem--5e5a932151ffbde4ec985513.md) | 96 | `result-track:5e5a932151ffbde4ec985513702b08cf7e2fa3d1126c4f76dda7a29a22796f07` |
| 11 | `def` | [symJ](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/symj--6444020dd707419738b462dd.md) | 101 | `declaration-track:6444020dd707419738b462ddb32ce2a14c9cc9586aaf3c06a0ed40b6fdd8d2ca` |
| 12 | `theorem` | [coe_J](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/coe-j--3accc02b7d4f46d94851b2b8.md) | 107 | `result-track:3accc02b7d4f46d94851b2b8a20f93073a97237a548b130228f128b5ed427f60` |
| 13 | `theorem` | [neg_mem](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/neg-mem--4118812c2ed9785ac3f10bf0.md) | 113 | `result-track:4118812c2ed9785ac3f10bf0259d1047f38653857d5b1a26f842354888759471` |
| 14 | `theorem` | [symplectic_det](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/symplectic-det--eaf1bcb2f859369bdf8b2b78.md) | 117 | `result-track:eaf1bcb2f859369bdf8b2b7825a5ba73f429c36014cac108a3817a3898bfc66e` |
| 15 | `theorem` | [transpose_mem](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/transpose-mem--f59ad432ac8d146e89cbf34f.md) | 128 | `result-track:f59ad432ac8d146e89cbf34f043ea95d3116d65112fd139a5e4d941e1901fb32` |
| 16 | `theorem` | [transpose_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/transpose-mem-iff--db258bddaf5ef8368d02d4f4.md) | 147 | `result-track:db258bddaf5ef8368d02d4f4aab1382574b25542cb6fa61f1c1531251a47c97c` |
| 17 | `theorem` | [mem_iff'](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/mem-iff--fc63db7392b7c2d64fb1c945.md) | 150 | `result-track:fc63db7392b7c2d64fb1c945c263b21ebaf95dcd4bd58e359036fb5c35f4d271` |
| 18 | `instance` | [hasInv](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/hasinv--634c759e68677d47c29e4662.md) | 153 | `declaration-track:634c759e68677d47c29e46624f98946885bcbe2229c25a0919582441f320d783` |
| 19 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/coe-inv--935516827e49603bb4aee34e.md) | 157 | `result-track:935516827e49603bb4aee34e8b47086f01120bc76609ecca9f8a66254ff399fb` |
| 20 | `theorem` | [inv_left_mul_aux](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/inv-left-mul-aux--2cd1c587d021b3f207ea9e70.md) | 159 | `result-track:2cd1c587d021b3f207ea9e70740192ed062a64e951bad6ede5b85720530e41ba` |
| 21 | `theorem` | [coe_inv'](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/coe-inv--b00de48c5fe2cb9e80d4e4de.md) | 170 | `result-track:b00de48c5fe2cb9e80d4e4deb9c44833b646c65d3369ef3be876dcf475d63f85` |
| 22 | `theorem` | [inv_eq_symplectic_inv](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/inv-eq-symplectic-inv--a241a47301eb063dbf8a69dc.md) | 174 | `result-track:a241a47301eb063dbf8a69dca4db1a251ac607acbffd067a4f80b8adbccebfcc` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SymplecticGroup/Variant46e3bc5032d340c52692bc1c49f615b21d5917500765f10a02e93df37ee1068b.lean/declarations/instance--f50415d400b8e6f88ed837e9.md) | 178 | `declaration-track:f50415d400b8e6f88ed837e95beba816b67d8fd66ca4f029d57efe5ce6550c80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
