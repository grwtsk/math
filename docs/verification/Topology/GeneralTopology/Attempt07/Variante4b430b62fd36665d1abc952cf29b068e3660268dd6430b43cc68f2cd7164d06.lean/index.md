# Verification target: GRWTSK.Topology.GeneralTopology.Attempt07.Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c04cc56af2960b7e79f142f7468effa3e6f32e25",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c04cc56af2960b7e79f142f7468effa3e6f32e25`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [p](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/declarations/p--41252324e96eb6efb9190b63.md) | 15 | `declaration-track:41252324e96eb6efb9190b63759baab9cff89fa9cc9b167df729509f56aec027` |
| 2 | `def` | [normalizedSquare](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/declarations/normalizedsquare--b3c9e94585351691cfcbcf84.md) | 17 | `declaration-track:b3c9e94585351691cfcbcf8468c55fddf37d54f768cb8a259adbbcdef368c3d3` |
| 3 | `theorem` | [p_coe](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/declarations/p-coe--3a913134baebf3301a174b00.md) | 20 | `result-track:3a913134baebf3301a174b00c3893a1783c9263944dce3239b33dc6ae52cd6d1` |
| 4 | `theorem` | [actual_scaled_square_real](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/declarations/actual-scaled-square-real--d492de477928f536310355a0.md) | 23 | `result-track:d492de477928f536310355a0be236505ff021a89c84c0fe27e3952559d396eef` |
| 5 | `theorem` | [p_ratio](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/declarations/p-ratio--e00ed13f2b71a4e1d376efa6.md) | 49 | `result-track:e00ed13f2b71a4e1d376efa68f3795d27aefe776b5fba2a211ae7d4457d5e82a` |
| 6 | `theorem` | [p_ratio_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/declarations/p-ratio-tendsto--edc6178e51347daef733c085.md) | 53 | `result-track:edc6178e51347daef733c0852fc18d9659b925df026366d64b9bd446c121802f` |
| 7 | `theorem` | [normalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/declarations/normalization-tendsto--ec7e9582c4f3123042ee5b0f.md) | 70 | `result-track:ec7e9582c4f3123042ee5b0f2748e4241ae7d53d820bb436077bf7eb957cdec5` |
| 8 | `theorem` | [exp_scaled_neg_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/declarations/exp-scaled-neg-tendsto--3cff73237ef8a1b03f29cae0.md) | 79 | `result-track:3cff73237ef8a1b03f29cae035c22aa6aab339a5d70d917690f94018bf23ac08` |
| 9 | `theorem` | [exp_square_rescale](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/declarations/exp-square-rescale--07a419e7d913bada6f9c4494.md) | 84 | `result-track:07a419e7d913bada6f9c4494cfe93efe97dbd8e09a8a7f50d2a43a3f800ad9a0` |
| 10 | `theorem` | [scaled_square_exact](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/declarations/scaled-square-exact--7da79afdf0f3b23c875ee80b.md) | 93 | `result-track:7da79afdf0f3b23c875ee80b023f4d3a07dd65acf40b0d5610578114251bad90` |
| 11 | `theorem` | [scaled_square_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/declarations/scaled-square-tendsto--7f3e6b8f66acf09d4c6bb817.md) | 117 | `result-track:7f3e6b8f66acf09d4c6bb817db3b6e9aeae8bccc4ad85d0dc18ef60ee7b38ac4` |
| 12 | `theorem` | [quarter_scaled_limit](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variante4b430b62fd36665d1abc952cf29b068e3660268dd6430b43cc68f2cd7164d06.lean/declarations/quarter-scaled-limit--de6a04487b43bd8c707cb47a.md) | 137 | `result-track:de6a04487b43bd8c707cb47a44f3ef249cf80cb8f20ca5cffd6eeeb45b52cbce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
