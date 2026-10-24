# Verification target: GRWTSK.Algebra.Pi.Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0840cb51516782757b8b13a38293c46d2ff188f0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0840cb51516782757b8b13a38293c46d2ff188f0`.

Source path: `GRWTSK/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [algebra](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/algebra--61657584f468814520c2762a.md) | 32 | `declaration-track:61657584f468814520c2762a1da589a74270da83ff0149624903d2fe07c645e7` |
| 2 | `theorem` | [algebraMap_def](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/algebramap-def--443268ba4e4fb97923257f6a.md) | 37 | `result-track:443268ba4e4fb97923257f6a3bc058d7f3d8ee8791d23c9200f88b43d8baae7f` |
| 3 | `theorem` | [algebraMap_apply](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/algebramap-apply--756257f8a515ca0ff450a9d0.md) | 41 | `result-track:756257f8a515ca0ff450a9d04fbc075acc2dd07e75f6459b60266c0575130c05` |
| 4 | `def` | [algHom](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/alghom--a62269120dd3939f45862abf.md) | 49 | `declaration-track:a62269120dd3939f45862abfde8f9455aa43eafc34a642edac28f03b2b8c4e3c` |
| 5 | `def` | [evalAlgHom](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/evalalghom--21fefaddf03bd36d2a2e1d8b.md) | 56 | `declaration-track:21fefaddf03bd36d2a2e1d8bf22f2b5c24ef9b4cc3957172dee5f90878c2d886` |
| 6 | `theorem` | [algHom_evalAlgHom](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/alghom-evalalghom--f084da23f01e04167472ee55.md) | 62 | `result-track:f084da23f01e04167472ee55bf9b6c53d5e68f209324f6e746e6b3c7bc290a7e` |
| 7 | `theorem` | [algHom_comp](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/alghom-comp--9384e9c8e600ba57a2eb8c8a.md) | 65 | `result-track:9384e9c8e600ba57a2eb8c8a253522bd38a66b0c805855ec2af3c2e904756138` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/instance--506c587a1ff6d3e6229acb72.md) | 71 | `declaration-track:506c587a1ff6d3e6229acb72b944b65f007bb0b683f7859b9eb88cae32b22a5d` |
| 9 | `example` | [(anonymous)](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/example--8a8130ce4410a803e7628da2.md) | 76 | `declaration-track:8a8130ce4410a803e7628da2d946da5451f571e2bbc120e858700318a2f27661` |
| 10 | `def` | [constAlgHom](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/constalghom--ad5e267cde07bbd4b7feda58.md) | 83 | `declaration-track:ad5e267cde07bbd4b7feda58f587e919e6f96e2140c96928e99a1753b2cba867` |
| 11 | `theorem` | [constRingHom_eq_algebraMap](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/constringhom-eq-algebramap--702e010832b002608afc286c.md) | 91 | `result-track:702e010832b002608afc286ca166b235701e2c3ad3569cc539f0e6df394bd9e7` |
| 12 | `theorem` | [constAlgHom_eq_algebra_ofId](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/constalghom-eq-algebra-ofid--a4cc68ecea2fe2148202c097.md) | 95 | `result-track:a4cc68ecea2fe2148202c0979e10c330fe072b2df2055ac6f697e88a0e7179b2` |
| 13 | `instance` | [Function.algebra](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/function-algebra--b8af187965a954a265b2a583.md) | 102 | `declaration-track:b8af187965a954a265b2a5833396cddfe2fcde51e281cd06162c9a87a64947e5` |
| 14 | `def` | [compLeft](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/compleft--90fae66d4bbfed37049f9dd2.md) | 115 | `declaration-track:90fae66d4bbfed37049f9dd2ae0537e552610d4d8028b93cac6b10654cd6f756` |
| 15 | `def` | [piCongrRight](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/picongrright--2555da50eda92769b6386075.md) | 137 | `declaration-track:2555da50eda92769b63860750047c134ffd8c7623e62a93a8fd1ca670959460b` |
| 16 | `theorem` | [piCongrRight_refl](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/picongrright-refl--bcc53a3166b81d6d9fc927f8.md) | 146 | `result-track:bcc53a3166b81d6d9fc927f837d569dfd8abcf44a10647830e0a2664651f37a9` |
| 17 | `theorem` | [piCongrRight_symm](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/picongrright-symm--cc2fc5ccc98bc71caa6ea51a.md) | 151 | `result-track:cc2fc5ccc98bc71caa6ea51af4a8e291fccdf7843a9915850be870b99f930399` |
| 18 | `theorem` | [piCongrRight_trans](../../../../mathematics/Algebra/Pi/Variant358094bd169f70c36eef06e1d165fdd6d16d4051846d77efaa0f3776e8ac13db.lean/declarations/picongrright-trans--f0714da85cd93b35d288cc0e.md) | 156 | `result-track:f0714da85cd93b35d288cc0ef3c7538fe622346c6980822c0ff8da933987b950` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
