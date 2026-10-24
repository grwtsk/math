# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PartitionOfUnity.Variant7b63308d0df07c22614a2beaafb9981fc514d305cf95b80cbd94a2e01654d129

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbd788fb7c4dc4a281331522b239fef249f85e97",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PartitionOfUnity/Variant7b63308d0df07c22614a2beaafb9981fc514d305cf95b80cbd94a2e01654d129.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PartitionOfUnity/Variant7b63308d0df07c22614a2beaafb9981fc514d305cf95b80cbd94a2e01654d129.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PartitionOfUnity/Variant7b63308d0df07c22614a2beaafb9981fc514d305cf95b80cbd94a2e01654d129.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbd788fb7c4dc4a281331522b239fef249f85e97`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PartitionOfUnity/Variant7b63308d0df07c22614a2beaafb9981fc514d305cf95b80cbd94a2e01654d129.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PartitionOfUnity/Variant7b63308d0df07c22614a2beaafb9981fc514d305cf95b80cbd94a2e01654d129.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.PartitionOfUnity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Combination` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [PartitionOfUnity.finsum_smul_mem_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/PartitionOfUnity/Variant7b63308d0df07c22614a2beaafb9981fc514d305cf95b80cbd94a2e01654d129.lean/declarations/partitionofunity-finsum-smul-mem-convex--42360b295074171550cc470c.md) | 42 | `result-track:42360b295074171550cc470c4b84655020f932851d85ce4c7667b4b430323c1a` |
| 2 | `theorem` | [exists_continuous_forall_mem_convex_of_local](../../../../../mathematics/Analysis/FunctionalAnalysis/PartitionOfUnity/Variant7b63308d0df07c22614a2beaafb9981fc514d305cf95b80cbd94a2e01654d129.lean/declarations/exists-continuous-forall-mem-convex-of-local--f3266698b18cbfe334d8eee4.md) | 56 | `result-track:f3266698b18cbfe334d8eee45c03508b41a539fa6b7c121ecc8b456d65a05b57` |
| 3 | `theorem` | [exists_continuous_forall_mem_convex_of_local_const](../../../../../mathematics/Analysis/FunctionalAnalysis/PartitionOfUnity/Variant7b63308d0df07c22614a2beaafb9981fc514d305cf95b80cbd94a2e01654d129.lean/declarations/exists-continuous-forall-mem-convex-of-local-const--266c86f83e4838a1e70bd8df.md) | 72 | `result-track:266c86f83e4838a1e70bd8df196097c37a3a74a9deab06c3084fa24528067d10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
