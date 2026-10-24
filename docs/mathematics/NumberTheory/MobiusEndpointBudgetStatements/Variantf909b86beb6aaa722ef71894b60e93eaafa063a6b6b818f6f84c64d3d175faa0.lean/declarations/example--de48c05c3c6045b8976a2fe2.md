# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c97760af6cded8f695a0508104e90e84ec804cc1efe5da3e35fa50048572b589",
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
  "slug": "example--de48c05c3c6045b8976a2fe2",
  "source": {
    "blob": "0245d039b98db17cb6558be503e4b83d8a3d110d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 214,
    "path": "GRWTSK/NumberTheory/MobiusEndpointBudgetStatements/Variantf909b86beb6aaa722ef71894b60e93eaafa063a6b6b818f6f84c64d3d175faa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de48c05c3c6045b8976a2fe2e3b555531f213cd9efea146bd1425770f1008498",
  "verification": {
    "reference": "docs/verification/NumberTheory/MobiusEndpointBudgetStatements/Variantf909b86beb6aaa722ef71894b60e93eaafa063a6b6b818f6f84c64d3d175faa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c97760af6cded8f695a0508104e90e84ec804cc1efe5da3e35fa50048572b589`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (X : ℕ) (ε : ℝ)
    (hX : 1 ≤ X) (hε : 0 ≤ ε) :
    ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ≤
      ε * (1 + Real.log (X : ℝ)) ^ 2 := MobiusEndpointBudgetScratch.correctedNumerator_half_add_norm_le X ε hX hε

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/MobiusEndpointBudgetStatements/Variantf909b86beb6aaa722ef71894b60e93eaafa063a6b6b818f6f84c64d3d175faa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/MobiusEndpointBudgetStatements/Variantf909b86beb6aaa722ef71894b60e93eaafa063a6b6b818f6f84c64d3d175faa0.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0245d039b98db17cb6558be503e4b83d8a3d110d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
