# Verification target: GRWTSK.Algebra.ZMod.Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05a41a6fe4be42df2cba249e322c904daf3f60cb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean/index.md) · [Full source](../../../../mathematics/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05a41a6fe4be42df2cba249e322c904daf3f60cb`.

Source path: `GRWTSK/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Squarefree.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Int` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ZMod.ker_intCastRingHom](../../../../mathematics/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean/declarations/zmod-ker-intcastringhom--cc12324b3174ac888e8a9e47.md) | 25 | `result-track:cc12324b3174ac888e8a9e473ce44421bd5bba619304cbb2da69be6b0de873a2` |
| 2 | `theorem` | [ZMod.ringHom_eq_of_ker_eq](../../../../mathematics/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean/declarations/zmod-ringhom-eq-of-ker-eq--374aee7181ca18518228fadc.md) | 32 | `result-track:374aee7181ca18518228fadcae8ef862d5a831739d5190f5e6520ef4b489d6d9` |
| 3 | `theorem` | [isReduced_zmod](../../../../mathematics/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean/declarations/isreduced-zmod--fc25897900286abedf9189f8.md) | 40 | `result-track:fc25897900286abedf9189f8f919af1982090a900dabd58dd0aa9403f2732246` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean/declarations/instance--ef30c26cd460c48bc55f310c.md) | 46 | `declaration-track:ef30c26cd460c48bc55f310c91b0b507b70241e5578d4f1942f11cd4c387eaba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
