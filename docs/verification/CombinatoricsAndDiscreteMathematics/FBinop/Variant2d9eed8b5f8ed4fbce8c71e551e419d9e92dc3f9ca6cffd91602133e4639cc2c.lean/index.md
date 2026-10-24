# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FBinop.Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6454e81948dfd0f5682189fd54b73e6bf2836e2f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6454e81948dfd0f5682189fd54b73e6bf2836e2f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FBinop` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SProd'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/sprod--d9fee8a3a28ba74c9c8de86e.md) | 12 | `declaration-track:d9fee8a3a28ba74c9c8de86ec233ffeed41a8bce8e3e87d091aed34e17608b43` |
| 2 | `macro_rules` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/macro-rules--95ae5e416a80090c3cf6add4.md) | 18 | `declaration-track:95ae5e416a80090c3cf6add4e9f07c5d25973cf8fad0c5e910cc65939c8d6ca5` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/instance--9db4c617ca53a3075a2f17c2.md) | 21 | `declaration-track:9db4c617ca53a3075a2f17c296063058cfce8fc9b353cb49823690337e7ae648` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/instance--53731585cd905433405202d2.md) | 22 | `declaration-track:53731585cd905433405202d294626da19cc1b55d5838414a63e773092ac0bf40` |
| 5 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--b2bb920d70f2829a6e6cb4a7.md) | 28 | `declaration-track:b2bb920d70f2829a6e6cb4a755a7c0e7bd5400ff9709ae4dff5599123e4d1b61` |
| 6 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--e91e3fb67a673f4b9461a56b.md) | 29 | `declaration-track:e91e3fb67a673f4b9461a56b037e590830e0d0ab74ed222e8f58b8f80a8c2e3d` |
| 7 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--9f19c96d865cba270eb93d4b.md) | 31 | `declaration-track:9f19c96d865cba270eb93d4b65b3f4878c68168eeb0dbdf9a0701b7a87e2738f` |
| 8 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--7dc9fabcf98ddaa031064b4f.md) | 32 | `declaration-track:7dc9fabcf98ddaa031064b4f314fbf5ede1db3985dbcc6cb29d21e85b45e3561` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--e243233a42eb080e2798702f.md) | 33 | `declaration-track:e243233a42eb080e2798702f07d8e221cb1b1d9f67e86d31f2a4716fa2f78942` |
| 10 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--f075cb9ea1bbc3fd91dfe426.md) | 34 | `declaration-track:f075cb9ea1bbc3fd91dfe426a2b5b3d6fda41a82c231a90774a83371721f2ccd` |
| 11 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--ce1a6d9ca458f3852e2f35f5.md) | 35 | `declaration-track:ce1a6d9ca458f3852e2f35f5c1c6372a5b3de158a8d31b48cb33148ec7a5f7f1` |
| 12 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--d73d3617a168c81c0ba44bed.md) | 36 | `declaration-track:d73d3617a168c81c0ba44bed2ff11faa3037c6ee54227b86e62af5e11fe444f4` |
| 13 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--4c1b853c2997a8b6c2c18d4e.md) | 37 | `declaration-track:4c1b853c2997a8b6c2c18d4e2de3c0807a131f22827492f5c845517fb7cff558` |
| 14 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--d1c78a5767cad4bb78b60086.md) | 38 | `declaration-track:d1c78a5767cad4bb78b60086eae6a3a2d7da569f69e633b71f86a86803a95f13` |
| 15 | `axiom` | [Nat.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/nat-card--16f327a4d4883f3a981dcbc0.md) | 40 | `declaration-track:16f327a4d4883f3a981dcbc086cc9cd8f06d0e8e1401d34d3c059a6867444b45` |
| 16 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--4617cf9425a1abe7e6c95e63.md) | 41 | `declaration-track:4617cf9425a1abe7e6c95e635882ab540cbd1cf7863be1eba09e106dd3f6277e` |
| 17 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--8474ac5425b875cf6a666fb9.md) | 43 | `declaration-track:8474ac5425b875cf6a666fb971f21214606e26b86887a63eecae4ce3f26e4fad` |
| 18 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--e6c8e727bc27cf660214bb55.md) | 44 | `declaration-track:e6c8e727bc27cf660214bb5501806170b1772015cbdecbb3074b998763636476` |
| 19 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--fcc0616d38c0ebcb5f01d3cb.md) | 45 | `declaration-track:fcc0616d38c0ebcb5f01d3cb03435be128ba1441596514b6b79a7ea25a6c8943` |
| 20 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--e69258cfed4904c7f511dc56.md) | 49 | `declaration-track:e69258cfed4904c7f511dc560cde90279d1a607a2806c913c21c78ad1f877b7a` |
| 21 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--f1548bcc79fdd657514e2216.md) | 50 | `declaration-track:f1548bcc79fdd657514e221632b09c59d21af89b464a95bf2f35e8883ebaa218` |
| 22 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--9116f29ba954c73dc20abe30.md) | 51 | `declaration-track:9116f29ba954c73dc20abe30ad3d27067584036cde6a08ca11e618a82ff3e337` |
| 23 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--83733e964a91a7133b47026f.md) | 52 | `declaration-track:83733e964a91a7133b47026f5c6eadace50a294f3535fee551c6db9f275d9607` |
| 24 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--60941f0de397d230b8b0517d.md) | 55 | `declaration-track:60941f0de397d230b8b0517de98c0da87f38e36f161179dabef94563fa2cc906` |
| 25 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/example--6626401ba563c52e15b7c703.md) | 57 | `declaration-track:6626401ba563c52e15b7c703e58d1fa6993612a5f642ac75014420d1250188a1` |
| 26 | `structure` | [SubObj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/subobj--7b8a24971be9191cbe1a2343.md) | 60 | `declaration-track:7b8a24971be9191cbe1a2343fb5f2502f25a2c343af225f853c618ba84b69671` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/instance--b7fe1f2a95afa9ab81d2f585.md) | 63 | `declaration-track:b7fe1f2a95afa9ab81d2f5859e45d04f9f1a4ecbe35b2740e1a5da2553862ae3` |
| 28 | `def` | [SubObj.prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/subobj-prod--0d2387bc11f3909fe1c6192b.md) | 69 | `declaration-track:0d2387bc11f3909fe1c6192bdce1107bcb5417b86429395fc27b56a44c7e9029` |
| 29 | `structure` | [DecSubObj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/decsubobj--7bd5e5ff3769894e6ebbea03.md) | 73 | `declaration-track:7bd5e5ff3769894e6ebbea034ad18c6453ebb09019d00a8bff7c230f5f9ebfa8` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/instance--037066e21b03a7c51c52b23c.md) | 76 | `declaration-track:037066e21b03a7c51c52b23c8150e0a97d21cc347458f6c6d1259f4d3eed7f09` |
| 31 | `def` | [DecSubObj.prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variant2d9eed8b5f8ed4fbce8c71e551e419d9e92dc3f9ca6cffd91602133e4639cc2c.lean/declarations/decsubobj-prod--8d08dab7fc8e829cf1e4309e.md) | 82 | `declaration-track:8d08dab7fc8e829cf1e4309eed02f7c9e29e80e29d660ef7dbe74d022df56769` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
