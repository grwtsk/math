# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DependencyClosure.Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf6b3705feae0a363c60217b425e28bb8c31897f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf6b3705feae0a363c60217b425e28bb8c31897f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Incremental.ReverseImportGraph` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Incremental.ReducerSeed` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [InclusionReason](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/declarations/inclusionreason--c1611c7cb9d9d896c6f13305.md) | 7 | `declaration-track:c1611c7cb9d9d896c6f13305db9a426763de4b71b1a4ed1363cf91164017a2ea` |
| 2 | `structure` | [InclusionPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/declarations/inclusionpath--aa11b1c5ad103f6c3b8d949e.md) | 18 | `declaration-track:aa11b1c5ad103f6c3b8d949edb43aabcbb611d515746d87be037dd1dce15c520` |
| 3 | `structure` | [DownstreamClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/declarations/downstreamclosure--9473c10a522b03b304fd52e2.md) | 27 | `declaration-track:9473c10a522b03b304fd52e2bbfa39bccc656164b534df8e13908c94a3b01253` |
| 4 | `theorem` | [downstreamClosure_contains_seed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/declarations/downstreamclosure-contains-seed--f1aeb19e650c254b85e1bfcd.md) | 48 | `result-track:f1aeb19e650c254b85e1bfcd7c86ac2f39342bb462cbe1b0c7c3f865d76d82ae` |
| 5 | `theorem` | [reverseImportClosure_contains_seed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/declarations/reverseimportclosure-contains-seed--d839fa6648bf903182ed6889.md) | 55 | `result-track:d839fa6648bf903182ed6889a24d80fdd6d8d4b765c4a519fff4dfecf618d0da` |
| 6 | `theorem` | [downstreamClosure_reverse_closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/declarations/downstreamclosure-reverse-closed--41e2796a13be6ba0b432fca4.md) | 62 | `result-track:41e2796a13be6ba0b432fca43ff4ce13e3b8b5100d5f939da2e6702730331394` |
| 7 | `theorem` | [reverseImportClosure_is_reverse_closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/declarations/reverseimportclosure-is-reverse-closed--f35248090e163d986ac32b4a.md) | 70 | `result-track:f35248090e163d986ac32b4a9ababf5ff0f2c622014e9252634b6ed57dc099bb` |
| 8 | `theorem` | [downstreamClosure_everyAffected_explained](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/declarations/downstreamclosure-everyaffected-explained--79824d76ae2ae53767c72971.md) | 78 | `result-track:79824d76ae2ae53767c72971a127c5fa86bd10a0b1ce35ab890a764cf0ed8994` |
| 9 | `theorem` | [reverseImportClosure_every_module_explained](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/declarations/reverseimportclosure-every-module-explained--0876aff8c3cf7a9856faf9a5.md) | 85 | `result-track:0876aff8c3cf7a9856faf9a5ef9061b42401c54d635946557df932fd032c55a2` |
| 10 | `theorem` | [downstreamClosure_no_unexplained_modules](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/declarations/downstreamclosure-no-unexplained-modules--6b030ef21b600a6c1abe7e22.md) | 92 | `result-track:6b030ef21b600a6c1abe7e229c1b288f6acc17f9c8c8daf2b2b78fb5a699db26` |
| 11 | `theorem` | [reverseImportClosure_is_minimal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531.lean/declarations/reverseimportclosure-is-minimal--1b6e29eba591bc039a29df23.md) | 99 | `result-track:1b6e29eba591bc039a29df23af44bc278f4e22d3304ee5be85d49a126035a77b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
