# fourteenth_record

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44ec94e2-058e-cff1-85d4-c8874e7953a6",
  "kind": "theorem",
  "lexical_name": "fourteenth_record",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "fourteenth-record--33e0c741a4e5ac69e4110bf2",
  "source": {
    "blob": "5c5b4e6726255939cdcb38f94d60c91d1be9bf7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 105,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenBlocksAndTerminal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33e0c741a4e5ac69e4110bf22e38e3c1fc021b26a6909de9ea81c051cdf07ae3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenBlocksAndTerminal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44ec94e2-058e-cff1-85d4-c8874e7953a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourteenth_record (later : Fin prefixLength → State) (j : Fin 64) :
    (fill later).prefix (ConcreteNewtonFourteenthBlock.prefixIndex j) =
      ConcreteNewtonFourteenthBlock.output j := by
  have h832 : 832 ≤ (ConcreteNewtonFourteenthBlock.prefixIndex j).1 := by
    change 832 ≤ j.1 + 832
    omega
  rw [ConcreteNewtonThirteenBlocksAndTerminal.later_record _ _ h832]
  exact ConcreteNewtonFourteenthBlock.fill_record later ConcreteNewtonTerminalEndpoint.terminalOutput j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenBlocksAndTerminal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenBlocksAndTerminal.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c5b4e6726255939cdcb38f94d60c91d1be9bf7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
