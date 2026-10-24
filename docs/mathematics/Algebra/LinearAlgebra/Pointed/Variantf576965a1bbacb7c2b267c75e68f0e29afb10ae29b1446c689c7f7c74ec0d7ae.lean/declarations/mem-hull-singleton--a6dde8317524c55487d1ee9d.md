# mem_hull_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8dd16a6-2e5d-ee65-58b2-43b0eb5e3667",
  "kind": "lemma",
  "lexical_name": "mem_hull_singleton",
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
  "slug": "mem-hull-singleton--a6dde8317524c55487d1ee9d",
  "source": {
    "blob": "f87a14a559c762ea68fc75b1c72223d69030ca30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 233,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6dde8317524c55487d1ee9ddc6c37b9a2db1d91f7f0a4c30622c3004fffd650",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8dd16a6-2e5d-ee65-58b2-43b0eb5e3667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_hull_singleton {x y : E} :
    y ∈ R ∙₊ x ↔ ∃ r : R, 0 ≤ r ∧ r • x = y := by
  rw [mem_span_singleton]
  exact ⟨fun ⟨r, hr⟩ ↦ ⟨r.1, r.2, hr⟩, fun ⟨r, hr0, hr⟩ ↦ ⟨⟨r, hr0⟩, hr⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f87a14a559c762ea68fc75b1c72223d69030ca30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
