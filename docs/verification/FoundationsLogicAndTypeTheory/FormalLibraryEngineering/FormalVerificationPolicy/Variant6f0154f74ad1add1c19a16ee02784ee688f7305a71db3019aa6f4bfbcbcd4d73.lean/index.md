# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalVerificationPolicy.Variant6f0154f74ad1add1c19a16ee02784ee688f7305a71db3019aa6f4bfbcbcd4d73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b603837a0753c1547deddb3c8b40d68823b4e9fa",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant6f0154f74ad1add1c19a16ee02784ee688f7305a71db3019aa6f4bfbcbcd4d73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant6f0154f74ad1add1c19a16ee02784ee688f7305a71db3019aa6f4bfbcbcd4d73.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant6f0154f74ad1add1c19a16ee02784ee688f7305a71db3019aa6f4bfbcbcd4d73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b603837a0753c1547deddb3c8b40d68823b4e9fa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant6f0154f74ad1add1c19a16ee02784ee688f7305a71db3019aa6f4bfbcbcd4d73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant6f0154f74ad1add1c19a16ee02784ee688f7305a71db3019aa6f4bfbcbcd4d73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.GrandChallenge.FormalVerificationPolicy` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [formal_policy_requires_kernel_check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant6f0154f74ad1add1c19a16ee02784ee688f7305a71db3019aa6f4bfbcbcd4d73.lean/declarations/formal-policy-requires-kernel-check--550f484e3f2e404323c9dff9.md) | 19 | `result-track:550f484e3f2e404323c9dff928187b2370a214fca67b8805c163df90e7876d80` |
| 2 | `theorem` | [formal_policy_forbids_sorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant6f0154f74ad1add1c19a16ee02784ee688f7305a71db3019aa6f4bfbcbcd4d73.lean/declarations/formal-policy-forbids-sorry--0440ead85c9e34fad623fccb.md) | 23 | `result-track:0440ead85c9e34fad623fccbc13addd20110db322473f268c475524887305b13` |
| 3 | `theorem` | [formal_policy_forbids_axiom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant6f0154f74ad1add1c19a16ee02784ee688f7305a71db3019aa6f4bfbcbcd4d73.lean/declarations/formal-policy-forbids-axiom--e016d1aa37134f8b2a05591c.md) | 27 | `result-track:e016d1aa37134f8b2a05591cdb8ba1ff629f4947d2fd79020adb513727591084` |
| 4 | `theorem` | [formal_policy_allows_informal_heuristics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant6f0154f74ad1add1c19a16ee02784ee688f7305a71db3019aa6f4bfbcbcd4d73.lean/declarations/formal-policy-allows-informal-heuristics--22671231cf8d170a8ede8c93.md) | 31 | `result-track:22671231cf8d170a8ede8c9390eebe71752f9da5f039bc2117574b768a282272` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
