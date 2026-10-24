# isFiniteLength_iff_exists_compositionSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3e17ed8-dcea-2ecc-d3eb-707972d48622",
  "kind": "theorem",
  "lexical_name": "isFiniteLength_iff_exists_compositionSeries",
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
  "slug": "isfinitelength-iff-exists-compositionseries--4f5ecdb3a3a4d23c01ea397f",
  "source": {
    "blob": "0b074388e4ebd8dc73d013260c072203e0878386",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 84,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f5ecdb3a3a4d23c01ea397f4b4acb5fc9ce9b95ae99e9cd99b073b1ecd6766c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3e17ed8-dcea-2ecc-d3eb-707972d48622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFiniteLength_iff_exists_compositionSeries :
    IsFiniteLength R M ↔ ∃ s : CompositionSeries (Submodule R M), s.head = ⊥ ∧ s.last = ⊤ :=
  ⟨fun h ↦ have ⟨_, _⟩ := isFiniteLength_iff_isNoetherian_isArtinian.mp h
    exists_compositionSeries_of_isNoetherian_isArtinian R M,
    isFiniteLength_of_exists_compositionSeries⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b074388e4ebd8dc73d013260c072203e0878386` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
