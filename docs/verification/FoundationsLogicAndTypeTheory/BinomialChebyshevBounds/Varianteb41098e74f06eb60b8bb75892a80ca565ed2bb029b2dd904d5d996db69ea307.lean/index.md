# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.BinomialChebyshevBounds.Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca75aedcd681a91e9e65b032c89d25d5bc9b68e5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca75aedcd681a91e9e65b032c89d25d5bc9b68e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.LcmChebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Central` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralBinomial](../../../../mathematics/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean/declarations/centralbinomial--4c68ccfabbaee6213b9b9f19.md) | 23 | `declaration-track:4c68ccfabbaee6213b9b9f19155dcab36c06692fc0b70b985d3af54321e7f045` |
| 2 | `theorem` | [centralBinomial_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean/declarations/centralbinomial-pos--a3a48fda99a686e10c648a65.md) | 27 | `result-track:a3a48fda99a686e10c648a65e2222870618e462514ce3a68d851830d8d5a5f84` |
| 3 | `theorem` | [centralBinomial_le_four_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean/declarations/centralbinomial-le-four-pow--237c6a4f71244a035d1d0b86.md) | 32 | `result-track:237c6a4f71244a035d1d0b86d1c14e61d3dc43d7e9023b48dcdc7488fd430aba` |
| 4 | `theorem` | [log_centralBinomial_le_n_log_four](../../../../mathematics/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean/declarations/log-centralbinomial-le-n-log-four--5ec25bca93a72d28414d6a9e.md) | 37 | `result-track:5ec25bca93a72d28414d6a9e1d36df5135ceb5cb91538a6d954204bdee9bcb2d` |
| 5 | `def` | [CentralBinomialThetaDifferenceTarget](../../../../mathematics/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean/declarations/centralbinomialthetadifferencetarget--09a286af7cc72139c0c15077.md) | 53 | `declaration-track:09a286af7cc72139c0c1507746d0f7871f917cfc67be1864b034e6bd8d46030a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
