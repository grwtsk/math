# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5622ed0df2150431c5b093b29b481e6fd7e4a845",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5622ed0df2150431c5b093b29b481e6fd7e4a845`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FarFromTriangleFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean/declarations/farfromtrianglefree--31644066d729d9e0c79c7eb2.md) | 49 | `declaration-track:31644066d729d9e0c79c7eb251686072d6810dc4ccbbbf4dec62122153fdf6a8` |
| 2 | `theorem` | [farFromTriangleFree_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean/declarations/farfromtrianglefree-iff--179c06ccd5e83bba7099a8db.md) | 53 | `result-track:179c06ccd5e83bba7099a8db7a95ec9ac93cc49366867ac641f89e201db9ce3d` |
| 3 | `theorem` | [FarFromTriangleFree.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean/declarations/farfromtrianglefree-mono--6058f14563b6f1763f4ad520.md) | 60 | `result-track:6058f14563b6f1763f4ad520287ed606d9044fbea30ec2b7abe8d550e6b2f1d2` |
| 4 | `theorem` | [FarFromTriangleFree.cliqueFinset_nonempty'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean/declarations/farfromtrianglefree-cliquefinset-nonempty--2b9741d9077deef5c784fd6a.md) | 64 | `result-track:2b9741d9077deef5c784fd6aa1f6c1a48b6ee7be05c2537a8b438a2b6fc687fd` |
| 5 | `theorem` | [FarFromTriangleFree.nonpos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean/declarations/farfromtrianglefree-nonpos--6d7415c54948d5636700bf64.md) | 73 | `result-track:6d7415c54948d5636700bf64a431503f8e9f9dcf05eb5c02b780516e08cfd6a4` |
| 6 | `theorem` | [CliqueFree.not_farFromTriangleFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean/declarations/cliquefree-not-farfromtrianglefree--e7705405ff05fef18b7b5141.md) | 80 | `result-track:e7705405ff05fef18b7b5141901d05ac1f6f435c8b35268a96a3ab2684419451` |
| 7 | `theorem` | [FarFromTriangleFree.not_cliqueFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean/declarations/farfromtrianglefree-not-cliquefree--dfba35b970c32789095703ac.md) | 84 | `result-track:dfba35b970c32789095703ac445513e552be181f77c213b322ed7e4e971d8a65` |
| 8 | `theorem` | [FarFromTriangleFree.cliqueFinset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variante80a1a524c9dacb16d2b06bd1601a281d6a5497ec62805fe0c57d5da0546d2f5.lean/declarations/farfromtrianglefree-cliquefinset-nonempty--19fca7ea442218b8e6046e3f.md) | 88 | `result-track:19fca7ea442218b8e6046e3fa77538161769cf9c9b9c2b88d9f92fbad7f78139` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
