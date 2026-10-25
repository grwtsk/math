# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.FiniteRuleSystems

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c3ad70ed39e32b1260d4d0496cd6362583629c0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c3ad70ed39e32b1260d4d0496cd6362583629c0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.Order.Closure.FiniteDependencyClosure`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Locality.RevisionCertificates`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/RevisionCertificates__SourceOccurrencef6b41b1e3cfad5b603e054a5.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofRoute](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/proofroute--a3f7936db056ce484dffe7be.md) | 33 | `declaration-track:a3f7936db056ce484dffe7bee1e87334ac2335907598887a2d554cebe14bf9ca` |
| 2 | `inductive` | [GroundedSupport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/groundedsupport--082e6458aced10fa5e7cb3bb.md) | 43 | `declaration-track:082e6458aced10fa5e7cb3bb2393e03c2011419ad002af7726496cfec575402f` |
| 3 | `def` | [SupportClosed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/supportclosed--da0b9ed4bf2a23b9978d05bf.md) | 51 | `declaration-track:da0b9ed4bf2a23b9978d05bff173011bae3601045457e8043ed5540553c6cca2` |
| 4 | `theorem` | [grounded_mem_of_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/grounded-mem-of-closed--be552463f19485ef80d4864e.md) | 56 | `result-track:be552463f19485ef80d4864e4d08c2c8d034214a27ff5769fd6e7246a5f8eb10` |
| 5 | `theorem` | [grounded_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/grounded-target--6309538bb952512ac4e4a553.md) | 64 | `result-track:6309538bb952512ac4e4a553251367b0e7111b7e9531f4ce7de226fb09f1e947` |
| 6 | `def` | [supportStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/supportstep--6ec5f76dd490664724116b9b.md) | 76 | `declaration-track:6ec5f76dd490664724116b9b370de6a8984157e9f179191f5b37fbbb654db5b4` |
| 7 | `theorem` | [mem_supportStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/mem-supportstep--cb0b2a253ef3867a288d5367.md) | 83 | `result-track:cb0b2a253ef3867a288d536712a1ee5e03e46828a2de0d0ab8e51ab152a9d55e` |
| 8 | `theorem` | [subset_supportStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/subset-supportstep--7bf48b3efa296411688a71ac.md) | 90 | `result-track:7bf48b3efa296411688a71acf7cf5fb9aafb5bf891f97a0d929add651526c62d` |
| 9 | `def` | [routeClosureFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/routeclosurefrom--3a64122fb962d4e595eabbe6.md) | 95 | `declaration-track:3a64122fb962d4e595eabbe61b4f47ca76d4e6d8cd6ecbf35fa4dd59186745d0` |
| 10 | `def` | [supportedClaims](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/supportedclaims--1434dd19d06cb032a451fec0.md) | 108 | `declaration-track:1434dd19d06cb032a451fec0e4e09c1a9eb8ba870647a8f744ba6facb163e9ed` |
| 11 | `theorem` | [supportStep_eq_iff_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/supportstep-eq-iff-closed--5036fa8fee342b8ae0b55860.md) | 111 | `result-track:5036fa8fee342b8ae0b55860a85727a8d893f1d174e3e6efd655bb591ccbd659` |
| 12 | `theorem` | [routeClosureFrom_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/routeclosurefrom-closed--0e54465b722dd716aebe81fa.md) | 128 | `result-track:0e54465b722dd716aebe81fabc21e4511f3e0d0d7de34f992b864bf72ba677a8` |
| 13 | `theorem` | [routeClosureFrom_least](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/routeclosurefrom-least--dd99469546ccab6ae2be021b.md) | 139 | `result-track:dd99469546ccab6ae2be021b7c62ba28077db3cbb4197a1c608993d47fa5fa4c` |
| 14 | `theorem` | [supportedClaims_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/supportedclaims-closed--8bd85fe44babd71c1e9a583c.md) | 154 | `result-track:8bd85fe44babd71c1e9a583c61f5aa720c8d9e73422081312732711d3dfc7079` |
| 15 | `theorem` | [supportedClaims_least](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/supportedclaims-least--12dd5481e1f79006fd353e6c.md) | 159 | `result-track:12dd5481e1f79006fd353e6cf38eb0d067e8702ba7543bcbe57798b3f158ac09` |
| 16 | `theorem` | [mem_supportedClaims_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/mem-supportedclaims-iff--39f1c26708ee55b2c0003fdb.md) | 165 | `result-track:39f1c26708ee55b2c0003fdbf63576138bc5a59b1536601bc194eac1838f306b` |
| 17 | `theorem` | [supportedClaims_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/supportedclaims-mono--2adb416ae66473e8217a269c.md) | 183 | `result-track:2adb416ae66473e8217a269cc0d111c6579c6d053e51419d5cf70b751bb85da9` |
| 18 | `theorem` | [supportedClaims_empty_of_no_ground](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/supportedclaims-empty-of-no-ground--616d15997d9f7f5c99ae7182.md) | 191 | `result-track:616d15997d9f7f5c99ae7182c7b8f54a4ce9027177da888eafac8be0c0761fb3` |
| 19 | `structure` | [CertifiedProofRoute](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/certifiedproofroute--14efe2ad0f465cf53b4e1492.md) | 205 | `declaration-track:14efe2ad0f465cf53b4e1492d9d00bbb0243781feb985a31d9e0219a437dcbd4` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/instance--3792cb751226c498ca7fe514.md) | 218 | `declaration-track:3792cb751226c498ca7fe514dbc3250f5ad968ce447c138f64dabf449f74142e` |
| 21 | `def` | [eligibleProviders](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/eligibleproviders--566d98c3ad3b9840cedd5801.md) | 225 | `declaration-track:566d98c3ad3b9840cedd5801e9d49a27f52f6c4a25d962fa242a63248466f856` |
| 22 | `theorem` | [mem_eligibleProviders](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/mem-eligibleproviders--db27bf3dd8e3f4b88a379302.md) | 234 | `result-track:db27bf3dd8e3f4b88a3793026e75c55b96b770d8a6d7c711065d3b60869984ea` |
| 23 | `theorem` | [certified_supported_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/certified-supported-target--9eecd2c1ee10b3cbcadbdc19.md) | 247 | `result-track:9eecd2c1ee10b3cbcadbdc197845264e6194abc20066c60b49179ef25063c7c0` |
| 24 | `theorem` | [certified_supported_to_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/certified-supported-to-terminal--42a2555777f0f6bf52aa7724.md) | 264 | `result-track:42a2555777f0f6bf52aa7724104eadd71b8af4498d1a5eb2ea399c082a0b853f` |
| 25 | `theorem` | [certified_supported_not_withdrawn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/declarations/certified-supported-not-withdrawn--c4be6f23483bbd72482e1514.md) | 275 | `result-track:c4be6f23483bbd72482e15146c712d77845034fae637a202c424d36896b482eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
