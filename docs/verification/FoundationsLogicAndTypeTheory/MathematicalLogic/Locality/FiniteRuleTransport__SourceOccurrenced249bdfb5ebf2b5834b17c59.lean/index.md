# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Locality.FiniteRuleTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3b7396e50342f63b9b5df2b1cb162de4e305a5b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3b7396e50342f63b9b5df2b1cb162de4e305a5b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.FiniteRuleSystems`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Finset.Union` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [providerReadUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/providerreadunion--3e2cfae44d326ca9141a5fc7.md) | 37 | `declaration-track:3e2cfae44d326ca9141a5fc7df0dcdc399955d8247dbd9da759f3a6502e63393` |
| 2 | `theorem` | [mem_providerReadUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/mem-providerreadunion--cc6c073f4d1b8655fbdb9f9c.md) | 41 | `result-track:cc6c073f4d1b8655fbdb9f9c48a29aaf37c9c69dc1e6fe9fd5b62f1c5e7d948e` |
| 3 | `theorem` | [provider_read_agreement](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/provider-read-agreement--f339d26cdac240f963146a1a.md) | 48 | `result-track:f339d26cdac240f963146a1a3e9da5bea60117bb911a0525d1f2d9674c65b135` |
| 4 | `def` | [eligibleReadUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/eligiblereadunion--0943e40847a92b49fad7a756.md) | 61 | `declaration-track:0943e40847a92b49fad7a756219b99c7f5598d9cdf447340a6f13a1481b103be` |
| 5 | `theorem` | [currently_eligible_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/currently-eligible-preserved--464415f55770882f6f035b16.md) | 68 | `result-track:464415f55770882f6f035b1649e8ab14b0f11ad544926a500d47e97070a7307f` |
| 6 | `theorem` | [eligible_rule_transport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/eligible-rule-transport--11f8458df92e4fbb06c241fd.md) | 87 | `result-track:11f8458df92e4fbb06c241fdeae5062227b5ac3a7f35a2594fd90e6762ae1cee` |
| 7 | `theorem` | [grounded_replay_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/grounded-replay-target--4f890d548eeed8e16a80edec.md) | 105 | `result-track:4f890d548eeed8e16a80edecdf1a01253cb255da2284c5da82deae556db0fb91` |
| 8 | `theorem` | [computed_support_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/computed-support-preserved--3e208aabdae5197b71639ed9.md) | 125 | `result-track:3e208aabdae5197b71639ed9f260fbe7740d5132ca5e350cdcf667570ef52b0d` |
| 9 | `theorem` | [computed_support_replay_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/computed-support-replay-target--6f1e7f8c55cbcb25c7152c71.md) | 141 | `result-track:6f1e7f8c55cbcb25c7152c7126a42ab1d1fbb257584c53ffeb83d050cac5c253` |
| 10 | `def` | [target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/target--6275c0532c1f57c18a37bf71.md) | 159 | `declaration-track:6275c0532c1f57c18a37bf716a4d867396f44f67c88f19f335cf6c539e4522b9` |
| 11 | `def` | [routes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/routes--2cf9c8848c97fc12765b797e.md) | 162 | `declaration-track:2cf9c8848c97fc12765b797ebf4c6c2ed1284fc05eed6ad3f62f14498c16bae8` |
| 12 | `def` | [recorded](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/recorded--b8d807acccce49f351535875.md) | 166 | `declaration-track:b8d807acccce49f35153587586569b279d6f683e9bac192110f16bef0ea5f0ed` |
| 13 | `def` | [providers](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/providers--7b819ec6611745cb40d41280.md) | 170 | `declaration-track:7b819ec6611745cb40d41280a86455969699d1085fb80204c3e878a1662f763c` |
| 14 | `theorem` | [all_providers_eligible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/all-providers-eligible--69a82adc555a0d777664a64b.md) | 191 | `result-track:69a82adc555a0d777664a64be00c6cfb03d541ba21d50a7c9f3e41cf0bb443ef` |
| 15 | `theorem` | [footprint_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/footprint-exact--abf5e8b7d7539a520a94507b.md) | 196 | `result-track:abf5e8b7d7539a520a94507b878d67734ecd57d5a84651c790f137c4d394e308` |
| 16 | `theorem` | [grounded_P](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/grounded-p--271b90a6320e7ed06acbafab.md) | 202 | `result-track:271b90a6320e7ed06acbafabc02f9b613e14de451230551ab3eddcc26a709570` |
| 17 | `theorem` | [grounded_Q](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/grounded-q--abe26d7bc31662d8644dfb4f.md) | 211 | `result-track:abe26d7bc31662d8644dfb4fb5c6f37d2652f9c916d24a2a5e135633d5464f44` |
| 18 | `theorem` | [computed_Q](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/computed-q--5523227cb43257ee171201fa.md) | 221 | `result-track:5523227cb43257ee171201fa361b63299291679e8a680a1c7c5c858c3c221be1` |
| 19 | `def` | [hostileLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/hostileleft--bab2abc711bbb8461dcb900a.md) | 225 | `declaration-track:bab2abc711bbb8461dcb900ad8ff5c4c162b53881cfeb2e02d4748863c71ab60` |
| 20 | `def` | [hostileRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/hostileright--241de7d532394198dbeaef61.md) | 227 | `declaration-track:241de7d532394198dbeaef611f501656e1c7572ca457a47848010dd52da667f1` |
| 21 | `theorem` | [hostile_pair_agrees](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/hostile-pair-agrees--d697d03a11541f82e5a33af5.md) | 229 | `result-track:d697d03a11541f82e5a33af54bdf44eea60a48fdd4aaea2cdd78a886c047a825` |
| 22 | `theorem` | [global_conclusion_locality_fails](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/global-conclusion-locality-fails--fddd7d409379bd364d55267e.md) | 238 | `result-track:fddd7d409379bd364d55267ef10fe5f3eb922f593559fb4514b014e3e2417199` |
| 23 | `theorem` | [no_union_revision_certificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/no-union-revision-certificate--cb2004f5ea5cbed2e5f745ec.md) | 247 | `result-track:cb2004f5ea5cbed2e5f745ecd0336d74f6c47c0068d08d55fb09aa6350bf0cb4` |
| 24 | `theorem` | [hostile_left_not_fresh](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/hostile-left-not-fresh--2c6b3cedba54589b48d903f1.md) | 258 | `result-track:2c6b3cedba54589b48d903f1fcbd4181b3dc7ebc99ab6f2fcf10f333799d1243` |
| 25 | `theorem` | [safe_unread_change_replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrenced249bdfb5ebf2b5834b17c59.lean/declarations/safe-unread-change-replay--892bb28abd426990b5834b4a.md) | 266 | `result-track:892bb28abd426990b5834b4af96c2d42af75a366610ee3a8e2481f8027945f08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
