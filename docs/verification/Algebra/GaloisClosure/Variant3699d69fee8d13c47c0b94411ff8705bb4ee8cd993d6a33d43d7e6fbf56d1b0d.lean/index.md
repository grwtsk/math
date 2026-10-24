# Verification target: GRWTSK.Algebra.GaloisClosure.Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2aaac67bcd23bc719b439fad45dbb6e8d7941151",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2aaac67bcd23bc719b439fad45dbb6e8d7941151`.

Source path: `GRWTSK/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal.Closure` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SeparableClosure` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteGaloisIntermediateField](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/finitegaloisintermediatefield--7817771c7d9fba63a2ee541d.md) | 41 | `declaration-track:7817771c7d9fba63a2ee541d63d15ce38a13d0b602c984d3da78dd583cc73f02` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--a866f7c19e7ec5836b285d0e.md) | 47 | `declaration-track:a866f7c19e7ec5836b285d0e42590306788b04e6ee68105442162e08fd891893` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--36dde5b93d71add20a335361.md) | 50 | `declaration-track:36dde5b93d71add20a3353613d4cf47d150b77d431cc725253fd588ce2a0ceeb` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--54ac6a0e34d7defb628f19f4.md) | 53 | `declaration-track:54ac6a0e34d7defb628f19f4cd4eee432f8a2964acadebd8fb3a03386fe3042f` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--a27072dfc89202241cc35d37.md) | 56 | `declaration-track:a27072dfc89202241cc35d374284c51ba96dc20096405aa3ed6212fa556ec2ff` |
| 6 | `lemma` | [val_injective](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/val-injective--9283d8a7cf369fbc2f2bb1f5.md) | 60 | `result-track:9283d8a7cf369fbc2f2bb1f5038d0aa7e68ce1b715b754a1806a70667fcbbcf2` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--edf31fbf1c33532b32c23bff.md) | 66 | `declaration-track:edf31fbf1c33532b32c23bfff572878c6437c17b96adacd1411d3c3eed65246c` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--3ed17551bb9529e935207187.md) | 69 | `declaration-track:3ed17551bb9529e935207187644eba7a463099083a8313435663ff07fa765f11` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--5fbd58e2f77160c74b2e3b0f.md) | 74 | `declaration-track:5fbd58e2f77160c74b2e3b0faac39fd50d428cccb5388ee8ae6a847d8d541324` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--6e10a2b42744d0590a6c7b5a.md) | 79 | `declaration-track:6e10a2b42744d0590a6c7b5a2bca39c630ee6c4fd6a5f1b8ce3466e5fc56f5ec` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--e2a001e7621704471f287b7c.md) | 83 | `declaration-track:e2a001e7621704471f287b7cf8d0aeb2d6eb9d96ee3a15a8fd1198b0ac7a76ed` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--aedf66ed50849b832621df30.md) | 87 | `declaration-track:aedf66ed50849b832621df30b45b82e23ea5e369107676191aeda6ec9168332a` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--e70b4f9103cf7d795800b1db.md) | 90 | `declaration-track:e70b4f9103cf7d795800b1db728c7a9694e10cc513e35547313690fa1f975645` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--f1cd87b382cabf81d49602cd.md) | 93 | `declaration-track:f1cd87b382cabf81d49602cd319666dc78c533fe8b8940df74ce1a96dce2302e` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--a87d9e5796d64d33d39d3bf7.md) | 96 | `declaration-track:a87d9e5796d64d33d39d3bf7c397030b56267c03f3c9dc71c582de5afd40cf7b` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/instance--574d9f898daa1f8a385b1d65.md) | 99 | `declaration-track:574d9f898daa1f8a385b1d6592f2d7eda47fa311eba6cb4ca6a177c8dcaa5456` |
| 17 | `lemma` | [le_iff](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/le-iff--ff1e2fbf889ce475d6fb5ce3.md) | 104 | `result-track:ff1e2fbf889ce475d6fb5ce3ffae57f3d5bbca494458fba71b4e48d7211c9665` |
| 18 | `def` | [adjoin](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/adjoin--95d72c5859fbc24e751df4d5.md) | 112 | `declaration-track:95d72c5859fbc24e751df4d5a67f5071c338732e0210e0fe92666700f4a9fd99` |
| 19 | `lemma` | [adjoin_val](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/adjoin-val--95dc27affc6f7f3e11907bc6.md) | 123 | `result-track:95dc27affc6f7f3e11907bc6e4ebb18b38e7c9d973e3af32ff71998158deca63` |
| 20 | `lemma` | [subset_adjoin](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/subset-adjoin--87a03fa0eb60e8810601f12e.md) | 129 | `result-track:87a03fa0eb60e8810601f12ed8e027b6e9afae068d5eefc910a115122525d23b` |
| 21 | `theorem` | [adjoin_simple_le_iff](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/adjoin-simple-le-iff--9cc43bf8ff7bc5f434fb2ad1.md) | 133 | `result-track:9cc43bf8ff7bc5f434fb2ad1fe47c559332cd1c93d77dffa9dbb79c2e089cd37` |
| 22 | `theorem` | [adjoin_map](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/adjoin-map--aea860912d590f0261e8e4b7.md) | 139 | `result-track:aea860912d590f0261e8e4b79734abb58621d383226bbf3a8b64ca9f25886eb9` |
| 23 | `theorem` | [adjoin_simple_map_algHom](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/adjoin-simple-map-alghom--8368ee5d98168764b01c44f3.md) | 145 | `result-track:8368ee5d98168764b01c44f362332786813aea930d117acc598fb43396c74b7e` |
| 24 | `theorem` | [adjoin_simple_map_algEquiv](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/adjoin-simple-map-algequiv--6ec8d2e6d62ae91fd2799cd2.md) | 150 | `result-track:6ec8d2e6d62ae91fd2799cd2d892fd1a8bcd1e99f654c4b5635ef96ff5df9673` |
| 25 | `lemma` | [mem_fixingSubgroup_iff](../../../../mathematics/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/declarations/mem-fixingsubgroup-iff--779c548feebdc699ae1316cc.md) | 154 | `result-track:779c548feebdc699ae1316cc68ae9fd660e245e0e803a014bc3cb11059f38214` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
