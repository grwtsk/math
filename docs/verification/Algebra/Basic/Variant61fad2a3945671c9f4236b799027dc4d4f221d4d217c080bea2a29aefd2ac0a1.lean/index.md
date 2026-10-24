# Verification target: GRWTSK.Algebra.Basic.Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f9262eddc439988026f70d67e5f555cd0643e46",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f9262eddc439988026f70d67e5f555cd0643e46`.

Source path: `GRWTSK/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Cardinality` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [residue_def](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/residue-def--c2ed0bd508a43c503a398054.md) | 27 | `result-track:c2ed0bd508a43c503a39805484e592140724459486dc3a72e98606375cd7cc50` |
| 2 | `lemma` | [ker_residue](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/ker-residue--b7ed55dbe0505047d0ab7b42.md) | 29 | `result-track:b7ed55dbe0505047d0ab7b42a06649c4a5ba19a8604fc36032625e0a551230e5` |
| 3 | `lemma` | [residue_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/residue-eq-zero-iff--b389116b7ea5b3dcd2f27fba.md) | 33 | `result-track:b389116b7ea5b3dcd2f27fbaa721c68f7aebaaff6c9e34a9bbb8d43d7a8b3dae` |
| 4 | `lemma` | [residue_ne_zero_iff_isUnit](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/residue-ne-zero-iff-isunit--6ade35d88ac366fc5a363d7a.md) | 36 | `result-track:6ade35d88ac366fc5a363d7a090b59769bc975f29ad25fe048295e6732b2b719` |
| 5 | `lemma` | [residue_surjective](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/residue-surjective--ce7a69e43d06038851066824.md) | 39 | `result-track:ce7a69e43d06038851066824d7c44f62b5a2c8a214c64dc10e2d1fb5d8b8c1e4` |
| 6 | `instance` | [ResidueField.algebra](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/residuefield-algebra--f335d6124f0ced6d31be350e.md) | 45 | `declaration-track:f335d6124f0ced6d31be350e0cfb1756d2aed0fda4298a58c2de6fb73330c889` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/instance--ad1b019ba355ed7e52592e86.md) | 49 | `declaration-track:ad1b019ba355ed7e52592e86c51d297cf91c90cdb2159014e3e067a70c3a7286` |
| 8 | `theorem` | [ResidueField.algebraMap_eq](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/residuefield-algebramap-eq--c963c27b05be64c31bda4161.md) | 55 | `result-track:c963c27b05be64c31bda41614c666c1780af90b7ed0faec4a6ad2196199cdb2f` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/instance--5a1d83042563275df3a4e774.md) | 58 | `declaration-track:5a1d83042563275df3a4e774a2ec68c9bd155f6ee6f0673a91b8ddc83967b714` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/instance--e937e8de71409d6148f5af48.md) | 62 | `declaration-track:e937e8de71409d6148f5af489d1d6d837b54de721d33ee788b1d60fb3f6d8a9e` |
| 11 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/lift--9d40b13cf8f818dd1a04ed38.md) | 71 | `declaration-track:9d40b13cf8f818dd1a04ed3801bbcdd5797b2bad0f8b3649198907e92f16583f` |
| 12 | `theorem` | [lift_comp_residue](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/lift-comp-residue--af7ea299be218db410bbf912.md) | 76 | `result-track:af7ea299be218db410bbf912479973d9faaec6abadce479d4ea824e11fd76f03` |
| 13 | `theorem` | [lift_residue_apply](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/lift-residue-apply--fbd67278be5648ec97c616da.md) | 81 | `result-track:fbd67278be5648ec97c616daae0da7481f09c69aeb70f2e0d71243ad943b928e` |
| 14 | `def` | [map](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/map--e29097bda00c5535b73a6a49.md) | 86 | `declaration-track:e29097bda00c5535b73a6a49ce440e84a114e178e4f47660fe10ab30de049425` |
| 15 | `theorem` | [map_id](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/map-id--714aeb226f5d4959c562ac25.md) | 95 | `result-track:714aeb226f5d4959c562ac250f19c70f4c6758355a9682ff7ad10341ad3427e8` |
| 16 | `theorem` | [map_comp](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/map-comp--2ee9c252ba6cf314eb38c20c.md) | 101 | `result-track:2ee9c252ba6cf314eb38c20c940373afb93eddcb11da541a59abb180cdc9f013` |
| 17 | `theorem` | [map_comp_residue](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/map-comp-residue--4d291df52ec8816a3ee2301e.md) | 106 | `result-track:4d291df52ec8816a3ee2301e0b97c05bbe80432797a6db706991f1a4b62c1c7d` |
| 18 | `theorem` | [map_residue](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/map-residue--d667400490d8ab1f2dd630c4.md) | 110 | `result-track:d667400490d8ab1f2dd630c4d455e7748a4e707026eb32390234efb3bd60381b` |
| 19 | `theorem` | [map_id_apply](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/map-id-apply--58b562d50656ca6e626faa00.md) | 114 | `result-track:58b562d50656ca6e626faa008b2de78acee405c0cd3dc373add0eb596cc2df8f` |
| 20 | `theorem` | [map_map](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/map-map--196179d54111bddda0034bf6.md) | 118 | `result-track:196179d54111bddda0034bf67379d47107ce46ffd38d59e066a3d98412bdb267` |
| 21 | `def` | [mapEquiv](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/mapequiv--a5382d217cbbe2b5963a84e3.md) | 124 | `declaration-track:a5382d217cbbe2b5963a84e3657030063bda477f7d9de55c26c409aee2dbd180` |
| 22 | `theorem` | [mapEquiv.symm](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/mapequiv-symm--b817a2df9622a21756c0a8c8.md) | 134 | `result-track:b817a2df9622a21756c0a8c8301a764334b8e4d6d30a88e6e501d017af67e03c` |
| 23 | `theorem` | [mapEquiv_trans](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/mapequiv-trans--9a0afcf6ff3e4333aadf57b4.md) | 138 | `result-track:9a0afcf6ff3e4333aadf57b43b2832d7149ab701ca957a29adbfa601e6bdc835` |
| 24 | `theorem` | [mapEquiv_refl](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/mapequiv-refl--03d85314ebae37134036713c.md) | 143 | `result-track:03d85314ebae37134036713c94800fff941eb612a4c394a5a48f52544b0b331d` |
| 25 | `def` | [mapAut](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/mapaut--64dbdcae73d47062cd1217e9.md) | 149 | `declaration-track:64dbdcae73d47062cd1217e90263810207526960d7fe5fd65a228b5b49e69b2f` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/instance--ebb5c9e6443e1fde4ab247ec.md) | 160 | `declaration-track:ebb5c9e6443e1fde4ab247ec4b9801051f4aa958af7c517455ee2ded484a83bd` |
| 27 | `theorem` | [residue_smul](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/residue-smul--c28fe7c549b45df0ce4d776d.md) | 164 | `result-track:c28fe7c549b45df0ce4d776d8e4a5042cd59b7e452541a262937afaeb6af2add` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/instance--8f57d1fa063f3332687d9cee.md) | 173 | `declaration-track:8f57d1fa063f3332687d9cee1c6124a7641f992532fe4cfb9f7d99f15750e0a1` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/instance--93ccdbc65a25a8b8dd61529b.md) | 176 | `declaration-track:93ccdbc65a25a8b8dd61529b27bc5c82e2e389240687b8c167f0d168394c6b68` |
| 30 | `instance` | [finite_of_module_finite](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/finite-of-module-finite--e987e674ac8f10160b93bddd.md) | 179 | `declaration-track:e987e674ac8f10160b93bddd7ccd7c47bfe24d4fbf9240d99366b4d87a5b61de` |
| 31 | `lemma` | [finite_of_finite](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/finite-of-finite--f75f5c42451194a9f71783dc.md) | 188 | `result-track:f75f5c42451194a9f71783dc5630a876a30e8004624960b4ce310f163705a499` |
| 32 | `theorem` | [isLocalHom_residue](../../../../mathematics/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/declarations/islocalhom-residue--5dfd44d945861bd0e892bb56.md) | 195 | `result-track:5dfd44d945861bd0e892bb567a6860534295955e2bb8f1e90ebee1aa2fce5fcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
