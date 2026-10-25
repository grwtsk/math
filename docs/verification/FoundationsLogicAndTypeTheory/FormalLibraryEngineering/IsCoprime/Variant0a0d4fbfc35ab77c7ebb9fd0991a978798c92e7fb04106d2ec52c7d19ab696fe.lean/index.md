# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsCoprime.Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abb193758c7a474999b61b4a265983163193a173",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abb193758c7a474999b61b4a265983163193a173`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coprime.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.GCD` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [int_not_isCoprime_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe.lean/declarations/int-not-iscoprime-helper--f4f3f0bd06723d0c93d98cdd.md) | 23 | `result-track:f4f3f0bd06723d0c93d98cdd747e35e8dd8dd359507b17dbf9b5b33475bddb1c` |
| 2 | `theorem` | [isInt_isCoprime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe.lean/declarations/isint-iscoprime--2e682b4eb88fa7804a99ccc2.md) | 28 | `result-track:2e682b4eb88fa7804a99ccc2567264ac34dbb62f82ce73cdce98912b5fcd8a01` |
| 3 | `theorem` | [isInt_not_isCoprime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe.lean/declarations/isint-not-iscoprime--2336c8b975d5e7a14cfe5188.md) | 32 | `result-track:2336c8b975d5e7a14cfe51888b5cfcb6be3f1a1e12c445ce1725d7b146ff92e3` |
| 4 | `def` | [proveIntIsCoprime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe.lean/declarations/proveintiscoprime--608c7cbf6e5f4c2eedcdc546.md) | 38 | `declaration-track:608c7cbf6e5f4c2eedcdc5460ab25afb03e3dc1e474a09e0efed80387ee2e827` |
| 5 | `def` | [evalIntIsCoprime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe.lean/declarations/evalintiscoprime--ba522b8f87a5480b7b441c8e.md) | 49 | `declaration-track:ba522b8f87a5480b7b441c8ee997c05fcc1a64dccdf048f7fff4554953741441` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
