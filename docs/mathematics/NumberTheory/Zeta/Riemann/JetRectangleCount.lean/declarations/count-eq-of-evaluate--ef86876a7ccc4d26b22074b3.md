# count_eq_of_evaluate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43198ad4-097a-bf42-451d-c934a7cb8e82",
  "kind": "theorem",
  "lexical_name": "count_eq_of_evaluate",
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
  "slug": "count-eq-of-evaluate--ef86876a7ccc4d26b22074b3",
  "source": {
    "blob": "abdffa9d3ec64e1072c1d01603352aa0f0ac7377",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 105,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JetRectangleCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef86876a7ccc4d26b22074b3edeb1f1e32215123c363e9433d849e4efacb36dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43198ad4-097a-bf42-451d-c934a7cb8e82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_eq_of_evaluate {T : ℚ} {n : ℕ} {a : List ℚ}
    {p : List Plan} {y : List Coordinates} {k : ℤ}
    (hk : evaluate T n a p y = some k) :
    (MirrorCountingRectangle.count (T : ℝ) : ℤ) = k := by
  obtain ⟨hg,hm,hp⟩ := (evaluateBox_eq_some_iff _ _ _ _ _ _ _).mp hk
  have hT : (0 : ℝ) < (T : ℝ)+1/4 := by
    have hy := hg.2
    dsimp [RationalRectangleCount.lower, RationalRectangleCount.upper] at hy
    exact_mod_cast hy
  have ht := ((JetPoleContour.evaluate_eq_some_iff _ _ _ _ _).mp hp).1
  have hb := boundary_of_tube RationalRectangleCount.lower (RationalRectangleCount.upper T)
    hg.1 hg.2 hm ht
  have hD := RationalRectangleCount.target_rectangle T hg.2 hT
  have hboundary : CanonicalRectangleIndex.BoundaryNonzero (T : ℝ) hT := by
    simpa only [hD] using hb
  have hs := sourceIndex_aligned RationalRectangleCount.lower (RationalRectangleCount.upper T)
    hg.1 hg.2 hm ht
  have hi : JetPoleContour.sourceIndex ht = (MirrorCountingRectangle.count (T : ℝ) : ℤ) := by
    calc
      _ = index (CanonicalRectangleIndex.sourceCurve (T : ℝ) hT)
          (CanonicalRectangleIndex.sourceCurve_closed (T : ℝ) hT)
          (CanonicalRectangleIndex.sourceCurve_nonzero (T : ℝ) hT hboundary) := by
        simpa only [hD, CanonicalRectangleIndex.sourceCurve] using hs
      _ = _ := CanonicalRectangleIndex.index_eq_count (T : ℝ) hT hboundary
  exact hi.symm.trans (JetPoleContour.evaluate_sound ht hp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JetRectangleCount.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abdffa9d3ec64e1072c1d01603352aa0f0ac7377` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
