# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BSD.Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83b72d0c87ed1e37dc45b9efa479b456336208d5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83b72d0c87ed1e37dc45b9efa479b456336208d5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.GrandChallenge.BSD.RankOrderCompatibility` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.GrandChallenge.BSD.MorleyTrisectorAnalogy` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.GrandChallenge.BSD.TorsionOffset` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bsd_rank_order_compatible_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean/declarations/bsd-rank-order-compatible-if-supplied--2fa9d875e8d78ee55bd7e87a.md) | 29 | `result-track:2fa9d875e8d78ee55bd7e87abdaa6aeb2a75e34beeaf15a4036da9e6dae23618` |
| 2 | `theorem` | [bsd_mismatch_obstruction_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean/declarations/bsd-mismatch-obstruction-if-supplied--7057d3d46f511dba65dfc579.md) | 34 | `result-track:7057d3d46f511dba65dfc57970bbc3eb532e5d1c18e7d33cd43b2a2af0d679e6` |
| 3 | `theorem` | [morley_analogy_only](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean/declarations/morley-analogy-only--244fd3e5b9cdfbf33e812bc4.md) | 39 | `result-track:244fd3e5b9cdfbf33e812bc4a98ea1d87d45736f1b86f0be2b93d4b13c07e8f6` |
| 4 | `theorem` | [torsion_offset_no_intersection_with_half_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean/declarations/torsion-offset-no-intersection-with-half-if-supplied--a7d3dbbbe4a93aef3b8ee731.md) | 43 | `result-track:a7d3dbbbe4a93aef3b8ee7312da5a98d3a344ec7d5583add9d99d61ddc548579` |
| 5 | `theorem` | [torsion_offset_no_intersection_with_one_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean/declarations/torsion-offset-no-intersection-with-one-if-supplied--3dcf5c242ce87cc2b830b6fd.md) | 48 | `result-track:3dcf5c242ce87cc2b830b6fd115685b6661f40695019c5c0f95551737fb8efe6` |
| 6 | `theorem` | [torsion_offset_no_intersection_with_composites_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean/declarations/torsion-offset-no-intersection-with-composites-if-supplied--b1ae49f7364f33987a0d2460.md) | 53 | `result-track:b1ae49f7364f33987a0d24606a32293e26bc284e51231c064c52965fc303f729` |
| 7 | `theorem` | [bsd_obstruction_accounted_for_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean/declarations/bsd-obstruction-accounted-for-if-supplied--ac94202f7324805ce10df760.md) | 59 | `result-track:ac94202f7324805ce10df76075eacdb7817335e4b7de902b9528b3ad4f5117a0` |
| 8 | `theorem` | [bsd_rank_order_if_compatibility_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean/declarations/bsd-rank-order-if-compatibility-supplied--e26d196f13ff3978c0684495.md) | 64 | `result-track:e26d196f13ff3978c0684495e8ea6a41a5d81484d10711bfa2037ca3abe15add` |
| 9 | `theorem` | [torsion_offset_obstruction_persistence_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Variante512dba3fab72ddcf87f6d9bc5790e070b4064b3967a1f827f40c83b26e98607.lean/declarations/torsion-offset-obstruction-persistence-if-supplied--d55dbfa121525226a0ccd7a2.md) | 69 | `result-track:d55dbfa121525226a0ccd7a2fa8df1aaa87928c14f5606a94d08757a1dd316a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
