# Verification target: GRWTSK.Logic.Inference.FiniteRuleSystems

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a257229bd43026937b34cc93486075286e2ab0fe",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Inference/FiniteRuleSystems.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a257229bd43026937b34cc93486075286e2ab0fe`.

Source path: `GRWTSK/Logic/Inference/FiniteRuleSystems.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Inference/FiniteRuleSystems.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Order.Closure.FiniteDependencyClosure`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Logic.Locality.RevisionCertificates`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/RevisionCertificates__SourceOccurrence6831ddf20c1704a4a19e59d5.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofRoute](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/proofroute--841cd150d4bec7aa4512bf82.md) | 33 | `declaration-track:841cd150d4bec7aa4512bf82ca49b5cbeb051bc87f83bd2f3f4d416cceb846c3` |
| 2 | `inductive` | [GroundedSupport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/groundedsupport--186c9b316804c6399cb048bc.md) | 43 | `declaration-track:186c9b316804c6399cb048bc9d0b15e1e9a9f30f156be206d60d38a8dd81af4c` |
| 3 | `def` | [SupportClosed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/supportclosed--079a5d21d3d8b584da4eb134.md) | 51 | `declaration-track:079a5d21d3d8b584da4eb1342510b5af4f13193fbbe9522339e4bed98c393ede` |
| 4 | `theorem` | [grounded_mem_of_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/grounded-mem-of-closed--1e01f02b4842cde8131abf1b.md) | 56 | `result-track:1e01f02b4842cde8131abf1b114848c1b63935b80c3bdc2f78028cc689e6fe91` |
| 5 | `theorem` | [grounded_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/grounded-target--39787468b9def26bf8d683f4.md) | 64 | `result-track:39787468b9def26bf8d683f41d80d883f3393a2d410a3472e01b4c6a6c6c103e` |
| 6 | `def` | [supportStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/supportstep--fe7baf6eed2fe6548bf95a89.md) | 76 | `declaration-track:fe7baf6eed2fe6548bf95a89937b9453e74b0876ff05f70a59049ecb49401410` |
| 7 | `theorem` | [mem_supportStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/mem-supportstep--ce1d0e61b4d7464d14f9a3f8.md) | 83 | `result-track:ce1d0e61b4d7464d14f9a3f8c3ebd7b723a14f9a6fbb7ad874e8eb856c5c3cee` |
| 8 | `theorem` | [subset_supportStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/subset-supportstep--4949c6e49e3d5432f007d338.md) | 90 | `result-track:4949c6e49e3d5432f007d338a712e31f359127c2779718c4408b648562170a73` |
| 9 | `def` | [routeClosureFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/routeclosurefrom--c3d323e56b83ea9524c3fbbc.md) | 95 | `declaration-track:c3d323e56b83ea9524c3fbbcad26dbe7c3e3c41a97d2d165f60d3a19fa775a89` |
| 10 | `def` | [supportedClaims](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/supportedclaims--b0c3b22991db0da49005e03a.md) | 108 | `declaration-track:b0c3b22991db0da49005e03a98ab4446a428f1741dfb53b6c9e0aab55ee38f1a` |
| 11 | `theorem` | [supportStep_eq_iff_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/supportstep-eq-iff-closed--870444338c747213ef8213f6.md) | 111 | `result-track:870444338c747213ef8213f67b5583b722061345e899e902dfbb4f737bcecb77` |
| 12 | `theorem` | [routeClosureFrom_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/routeclosurefrom-closed--958a8acd9b077765400e27a0.md) | 128 | `result-track:958a8acd9b077765400e27a0948986af7390e792d2b54c7dc6d04f8bbd87d92a` |
| 13 | `theorem` | [routeClosureFrom_least](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/routeclosurefrom-least--c47528bc493f9706e57c420d.md) | 139 | `result-track:c47528bc493f9706e57c420da0d9c7269ebcfd2b3785f9b0a83ccdcf1a2697ea` |
| 14 | `theorem` | [supportedClaims_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/supportedclaims-closed--4b6f1ed1b50dbac4387236e9.md) | 154 | `result-track:4b6f1ed1b50dbac4387236e96fc64d992f3c13442fdb9ad066432b021e32b16a` |
| 15 | `theorem` | [supportedClaims_least](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/supportedclaims-least--c6a8413647f90ec820c974c5.md) | 159 | `result-track:c6a8413647f90ec820c974c542428fcc3a4fe8c6a27346d66b7eae1fb8875ae1` |
| 16 | `theorem` | [mem_supportedClaims_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/mem-supportedclaims-iff--c41f1359644f4b414914a3fc.md) | 165 | `result-track:c41f1359644f4b414914a3fc00fb496750c6520a99801a08c17ae159237c0faf` |
| 17 | `theorem` | [supportedClaims_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/supportedclaims-mono--3b8de30b92aa9e78516406e5.md) | 183 | `result-track:3b8de30b92aa9e78516406e5945efc4c5d8744f19944b7256b001a4abcba515c` |
| 18 | `theorem` | [supportedClaims_empty_of_no_ground](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/supportedclaims-empty-of-no-ground--8a31f19a094aab5441dafb36.md) | 191 | `result-track:8a31f19a094aab5441dafb3635abed1d95257ee4d45a6baca1df76285d5e5056` |
| 19 | `structure` | [CertifiedProofRoute](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/certifiedproofroute--7d9c4fcfa6f753cba9282451.md) | 205 | `declaration-track:7d9c4fcfa6f753cba9282451ab0564c88d90f7d8ef9bb26edc1436abc473dde5` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/instance--35b79190b4ac3489dddee93b.md) | 218 | `declaration-track:35b79190b4ac3489dddee93bc9d80b6bf246314af55875666ca7521f6b10604e` |
| 21 | `def` | [eligibleProviders](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/eligibleproviders--f6dc929fca549c6a4954c82e.md) | 225 | `declaration-track:f6dc929fca549c6a4954c82e698c0778796a676cb7a84a79b118791f880da520` |
| 22 | `theorem` | [mem_eligibleProviders](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/mem-eligibleproviders--e0d746beee8436dc24442e8c.md) | 234 | `result-track:e0d746beee8436dc24442e8c3fd889fb78691d6c55f60c50d9c08aa65417a376` |
| 23 | `theorem` | [certified_supported_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/certified-supported-target--6b9405ff6c34ab2b7e60ca50.md) | 247 | `result-track:6b9405ff6c34ab2b7e60ca502b1bb7faae6abbd775df691d95c2dc7c93b333a3` |
| 24 | `theorem` | [certified_supported_to_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/certified-supported-to-terminal--516744ac228cc553d65893b1.md) | 264 | `result-track:516744ac228cc553d65893b181ca5af5ef29a37d867096f4120e2c9573bb4374` |
| 25 | `theorem` | [certified_supported_not_withdrawn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/declarations/certified-supported-not-withdrawn--bb24461531a06be7d33fd60a.md) | 275 | `result-track:bb24461531a06be7d33fd60a8c0fd8bf1532e48cce7be3e39e6f12f188de36ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
