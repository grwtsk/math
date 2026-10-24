# normalizedTraceAux_eq_of_fininteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5a68e220e09f1653768c4f812635e0798d79d93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e049179d-476e-7c35-8b0e-f77126a7137b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01274fce-914c-e4b4-4090-1cf439f15b2e",
  "kind": "theorem",
  "lexical_name": "normalizedTraceAux_eq_of_fininteDimensional",
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
  "slug": "normalizedtraceaux-eq-of-finintedimensional--e9dfe97f92b7666d00680fd8",
  "source": {
    "blob": "d5a68e220e09f1653768c4f812635e0798d79d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 63,
    "path": "GRWTSK/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9dfe97f92b7666d00680fd8c2da06e095b44456c1bb6e2e5f5d858ecc1bf492",
  "verification": {
    "reference": "docs/verification/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01274fce-914c-e4b4-4090-1cf439f15b2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem normalizedTraceAux_eq_of_fininteDimensional [FiniteDimensional F K] (a : K) :
    normalizedTraceAux F K a = (Module.finrank F K : F)⁻¹ • trace F K a := by
  have h := (Nat.cast_ne_zero (R := F)).mpr <|
    Nat.pos_iff_ne_zero.mp <| Module.finrank_pos (R := F⟮a⟯) (M := K)
  rw [smul_eq_mul, mul_comm, ← div_eq_mul_inv, trace_eq_trace_adjoin F a,
    ← Module.finrank_mul_finrank F F⟮a⟯ K, nsmul_eq_mul, Nat.cast_mul, mul_comm,
    mul_div_mul_right _ _ h, div_eq_mul_inv, mul_comm, ← smul_eq_mul, normalizedTraceAux_def]

variable [Algebra.IsIntegral F K]

/-- The normalized trace map from an algebraic extension `K` to the base field `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a68e220e09f1653768c4f812635e0798d79d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
