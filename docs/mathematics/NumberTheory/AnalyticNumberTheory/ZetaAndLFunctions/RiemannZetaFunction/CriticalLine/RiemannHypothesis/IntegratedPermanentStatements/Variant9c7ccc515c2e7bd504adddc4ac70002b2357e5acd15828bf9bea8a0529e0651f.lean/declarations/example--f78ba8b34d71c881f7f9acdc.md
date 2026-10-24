# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d39aed10f8b813c8bfe8fd2793fbb325af6123d2ab7ccfa6f57a256a03a9788f",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--f78ba8b34d71c881f7f9acdc",
  "source": {
    "blob": "8cdd2314fd3ef61f7d9c0556aa15c2418bc31882",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1081,
    "line": 1072,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant9c7ccc515c2e7bd504adddc4ac70002b2357e5acd15828bf9bea8a0529e0651f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f78ba8b34d71c881f7f9acdc69a5db0ffcc9ea47388e0bb716ba0d49dbb9238b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant9c7ccc515c2e7bd504adddc4ac70002b2357e5acd15828bf9bea8a0529e0651f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d39aed10f8b813c8bfe8fd2793fbb325af6123d2ab7ccfa6f57a256a03a9788f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1072–1081.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (j G : ℕ) (hj : 1 ≤ j) (hjG : j ≤ G) :
    (j : ℝ) * (∑ d ∈ Ioc ⌊Real.sqrt (j : ℝ)⌋₊ ⌊Real.sqrt (G : ℝ)⌋₊,
      1 / (d : ℝ) ^ 2) ≤ 2 * Real.sqrt (j : ℝ) :=
  ReciprocalSquareTail.floor_sqrt_cutoff_tail_le j G hj hjG
end ReciprocalSquareTailStatements

-- Square-divisor inversion retains the literal Möbius square and coprimality slots.
section SquarefreeCountStatements
open Finset CoprimeCount SquarefreeCount

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant9c7ccc515c2e7bd504adddc4ac70002b2357e5acd15828bf9bea8a0529e0651f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant9c7ccc515c2e7bd504adddc4ac70002b2357e5acd15828bf9bea8a0529e0651f.lean#L1072).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cdd2314fd3ef61f7d9c0556aa15c2418bc31882` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
