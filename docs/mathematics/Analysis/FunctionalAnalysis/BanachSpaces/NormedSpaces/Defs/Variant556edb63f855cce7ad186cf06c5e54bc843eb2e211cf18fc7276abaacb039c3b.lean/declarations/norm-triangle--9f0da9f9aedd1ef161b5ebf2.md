# norm_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fa7443abf5828490a465a8cae4284194503f49d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7070be3c-96b4-d6de-1e31-d4fd18945b41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b7c9a2b-5c84-60c2-01de-7b8fc9bb4802",
  "kind": "lemma",
  "lexical_name": "norm_triangle",
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
  "slug": "norm-triangle--9f0da9f9aedd1ef161b5ebf2",
  "source": {
    "blob": "2fa7443abf5828490a465a8cae4284194503f49d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 248,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f0da9f9aedd1ef161b5ebf2a87cab7607529354ed665d229d93cb24f72753a2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b7c9a2b-5c84-60c2-01de-7b8fc9bb4802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma norm_triangle (x y : E) : ‖x + y‖ ≤ ‖x‖ + ‖y‖ := by
  have h : ‖x + y‖ ^ 2 ≤ (‖x‖ + ‖y‖) ^ 2 := by
    calc _ ≤ ‖⟪x, x⟫ + ⟪y, x⟫‖ + ‖⟪x, y⟫‖ + ‖⟪y, y⟫‖ := by
          simp only [norm_eq_sqrt_norm_inner_self (A := A), inner_add_right, inner_add_left,
            ← add_assoc, norm_nonneg, Real.sq_sqrt]
          exact norm_add₃_le
      _ ≤ ‖⟪x, x⟫‖ + ‖⟪y, x⟫‖ + ‖⟪x, y⟫‖ + ‖⟪y, y⟫‖ := by gcongr; exact norm_add_le _ _
      _ ≤ ‖⟪x, x⟫‖ + ‖y‖ * ‖x‖ + ‖x‖ * ‖y‖ + ‖⟪y, y⟫‖ := by gcongr <;> exact norm_inner_le E
      _ = ‖x‖ ^ 2 + ‖y‖ * ‖x‖ + ‖x‖ * ‖y‖ + ‖y‖ ^ 2 := by
          simp [norm_eq_sqrt_norm_inner_self (A := A)]
      _ = (‖x‖ + ‖y‖) ^ 2 := by simp only [add_pow_two, add_left_inj]; ring
  refine (pow_le_pow_iff_left₀ (CStarModule.norm_nonneg A) ?_ (by simp)).mp h
  exact add_nonneg (CStarModule.norm_nonneg A) (CStarModule.norm_nonneg A)

include A in
variable (A) in
/-- This allows us to get `NormedAddCommGroup` and `NormedSpace` instances on `E` via
`NormedAddCommGroup.ofCore` and `NormedSpace.ofCore`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fa7443abf5828490a465a8cae4284194503f49d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
