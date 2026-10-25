# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Finite.Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db6534378070470d73e1d84e113659225eed6e55",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db6534378070470d73e1d84e113659225eed6e55`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.Ownership` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_on_of_finite_cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0.lean/declarations/forall-on-of-finite-cover--d397f4451bbf8a437e4fe96d.md) | 20 | `result-track:d397f4451bbf8a437e4fe96d68d15b7de0fe953f3e69313ca4ed828c3babbcf6` |
| 2 | `theorem` | [forall_on_of_finite_cover_and_tail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0.lean/declarations/forall-on-of-finite-cover-and-tail--699cf465c7ec3a952da6af00.md) | 31 | `result-track:699cf465c7ec3a952da6af009ef7a82f54de7c33886c046161a1bf67f2253a5d` |
| 3 | `theorem` | [finite_range_does_not_imply_ray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0.lean/declarations/finite-range-does-not-imply-ray--f0bca483f44727be3148212d.md) | 44 | `result-track:f0bca483f44727be3148212d82db4ab7af96bac952b7d301d6125cd087d7da1c` |
| 4 | `theorem` | [endpoints_do_not_cover_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0.lean/declarations/endpoints-do-not-cover-interval--4e7202a5899974415cee733d.md) | 56 | `result-track:4e7202a5899974415cee733dfeb976050d50556f83be072b6524989d454b0599` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
