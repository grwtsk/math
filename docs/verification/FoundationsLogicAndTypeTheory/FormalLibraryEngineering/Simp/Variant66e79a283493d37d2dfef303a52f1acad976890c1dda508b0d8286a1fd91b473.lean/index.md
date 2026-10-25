# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant66e79a283493d37d2dfef303a52f1acad976890c1dda508b0d8286a1fd91b473

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "addb0b9661d72da22329369bbf933f39838c45ec",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant66e79a283493d37d2dfef303a52f1acad976890c1dda508b0d8286a1fd91b473.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant66e79a283493d37d2dfef303a52f1acad976890c1dda508b0d8286a1fd91b473.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant66e79a283493d37d2dfef303a52f1acad976890c1dda508b0d8286a1fd91b473.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `addb0b9661d72da22329369bbf933f39838c45ec`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant66e79a283493d37d2dfef303a52f1acad976890c1dda508b0d8286a1fd91b473.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant66e79a283493d37d2dfef303a52f1acad976890c1dda508b0d8286a1fd91b473.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Util` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MatchDiscrOnly` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MarkNestedSubsingletons` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [simpCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant66e79a283493d37d2dfef303a52f1acad976890c1dda508b0d8286a1fd91b473.lean/declarations/simpcore--bef6c7a2dd1aa5d8df516f03.md) | 27 | `declaration-track:bef6c7a2dd1aa5d8df516f03129998b95fd2748d38b12fd756866d70712b0c4d` |
| 2 | `def` | [dsimpCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant66e79a283493d37d2dfef303a52f1acad976890c1dda508b0d8286a1fd91b473.lean/declarations/dsimpcore--a6e3f5a5074465b0ccfef0e1.md) | 46 | `declaration-track:a6e3f5a5074465b0ccfef0e1640b6b9473b9db42dd8035a60d20c50ba92a3a15` |
| 3 | `def` | [preprocessImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant66e79a283493d37d2dfef303a52f1acad976890c1dda508b0d8286a1fd91b473.lean/declarations/preprocessimpl--e324e181597707f65c3fc943.md) | 59 | `declaration-track:e324e181597707f65c3fc9438cf4e09a389b178f8deb688194035157307e7a0c` |
| 4 | `def` | [pushNewFact'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant66e79a283493d37d2dfef303a52f1acad976890c1dda508b0d8286a1fd91b473.lean/declarations/pushnewfact--303904a348789a6a28194930.md) | 87 | `declaration-track:303904a348789a6a281949302d2f75c683247e89d697cd98d280b7163c95e738` |
| 5 | `def` | [pushNewFact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant66e79a283493d37d2dfef303a52f1acad976890c1dda508b0d8286a1fd91b473.lean/declarations/pushnewfact--bf2b36f265338f416bec4f77.md) | 99 | `declaration-track:bf2b36f265338f416bec4f77e35b86dcd8bda2cb84529f4587d8a46be3214b4b` |
| 6 | `def` | [preprocessLight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant66e79a283493d37d2dfef303a52f1acad976890c1dda508b0d8286a1fd91b473.lean/declarations/preprocesslight--f44fdbb7635067dc1e66bbd3.md) | 108 | `declaration-track:f44fdbb7635067dc1e66bbd3d7e08315be505e159f38a579efa54bf7d4bbb4a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
