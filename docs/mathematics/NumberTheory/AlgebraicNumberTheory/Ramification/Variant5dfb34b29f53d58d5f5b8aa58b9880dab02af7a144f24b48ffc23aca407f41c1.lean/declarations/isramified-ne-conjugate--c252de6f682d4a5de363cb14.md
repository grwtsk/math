# IsRamified.ne_conjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e51dc91-ae68-31f0-831c-ec68b7a17c63",
  "kind": "theorem",
  "lexical_name": "IsRamified.ne_conjugate",
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
  "slug": "isramified-ne-conjugate--c252de6f682d4a5de363cb14",
  "source": {
    "blob": "a03636bb9f3caa19679a53a2ec35c4a75b1d57a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 240,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant5dfb34b29f53d58d5f5b8aa58b9880dab02af7a144f24b48ffc23aca407f41c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c252de6f682d4a5de363cb14da9d0000156053964f6cc80ab64048c8aa080810",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant5dfb34b29f53d58d5f5b8aa58b9880dab02af7a144f24b48ffc23aca407f41c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e51dc91-ae68-31f0-831c-ec68b7a17c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsRamified.ne_conjugate {w₁ w₂ : InfinitePlace K} (h : w₂.IsRamified k) :
    w₁.embedding ≠ ComplexEmbedding.conjugate w₂.embedding := by
  by_cases h_eq : w₁ = w₂
  · rw [isRamified_iff, isComplex_iff] at h
    exact Ne.symm (h_eq ▸ h.1)
  · contrapose! h_eq
    rw [← mk_embedding w₁, h_eq, mk_conjugate_eq, mk_embedding]

variable (k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant5dfb34b29f53d58d5f5b8aa58b9880dab02af7a144f24b48ffc23aca407f41c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant5dfb34b29f53d58d5f5b8aa58b9880dab02af7a144f24b48ffc23aca407f41c1.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a03636bb9f3caa19679a53a2ec35c4a75b1d57a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
