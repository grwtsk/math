# rectangle_refines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d23576b9-25f8-cf4c-a5ed-8b135c95110b",
  "kind": "theorem",
  "lexical_name": "rectangle_refines",
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
  "slug": "rectangle-refines--f232ee56e4065dfd5e6c198f",
  "source": {
    "blob": "bee00dbe38a93bc3be23276d3c390ab21e57d52e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CheckedJetContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f232ee56e4065dfd5e6c198f8743ca75cbfdd08288d1f19ed5411a0f7d35ad34",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d23576b9-25f8-cf4c-a5ed-8b135c95110b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangle_refines {T : ℚ} {n : ℕ} {marks : List ℚ} {p : List Plan}
    {y : List Coordinates} {packets : List CheckedPoleJet.Packet} {k : ℤ}
    (h : evaluateRectangle T n marks p y packets = some k) :
    JetRectangleCount.evaluate T n marks p y = some k := by
  unfold evaluateRectangle at h
  dsimp only at h
  split_ifs at h with hg
  · have hguard : (RationalRectangleCount.lower.1 < (RationalRectangleCount.upper T).1 ∧
        RationalRectangleCount.lower.2 < (RationalRectangleCount.upper T).2) ∧
        RationalRectangleMesh.check n marks = true := by
      simpa only [Bool.and_eq_true,decide_eq_true_eq] using hg
    exact (JetRectangleCount.evaluateBox_eq_some_iff _ _ _ _ _ _ _).mpr
      ⟨hguard.1,hguard.2,evaluate_refines h⟩
  · simp at h

/-- No free source-value, derivative, boundary, winding or count premise is added. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CheckedJetContour.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bee00dbe38a93bc3be23276d3c390ab21e57d52e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
