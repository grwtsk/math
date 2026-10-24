# IsAlgClosed.algebraicClosure_eq_bot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20f43419-b416-97b2-790d-a1e976e07fd2",
  "kind": "theorem",
  "lexical_name": "IsAlgClosed.algebraicClosure_eq_bot_iff",
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
  "slug": "isalgclosed-algebraicclosure-eq-bot-iff--c66419413f0ff385411cbbce",
  "source": {
    "blob": "bd401aa570b7d998350c5dfb28c129ce78e7ec96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 171,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c66419413f0ff385411cbbce4a1601587ecc09bc92ca28a71b6f349b1e36c9e1",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20f43419-b416-97b2-790d-a1e976e07fd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAlgClosed.algebraicClosure_eq_bot_iff [IsAlgClosed E] :
    algebraicClosure F E = ⊥ ↔ IsAlgClosed F := by
  refine ⟨fun h ↦ IsAlgClosed.of_exists_root _ fun p hmon hirr ↦ ?_,
    fun _ ↦ IntermediateField.eq_bot_of_isAlgClosed_of_isAlgebraic _⟩
  obtain ⟨x, hx⟩ := IsAlgClosed.exists_aeval_eq_zero E p (degree_pos_of_irreducible hirr).ne'
  obtain ⟨x, rfl⟩ := h ▸ mem_algebraicClosure_iff'.2 (minpoly.ne_zero_iff.1 <|
    ne_zero_of_dvd_ne_zero hmon.ne_zero (minpoly.dvd _ x hx))
  exact ⟨x, by simpa [Algebra.ofId_apply] using hx⟩

/-- `F(S) / F` is an algebraic extension if and only if all elements of `S` are
algebraic elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variant87acef5c7a93c8af6888a2918dfba93323f2bda72e9c03c6113ffb615db5b907.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd401aa570b7d998350c5dfb28c129ce78e7ec96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
