# within_refines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdacd00c-bfcf-898a-e777-6b1d0e619384",
  "kind": "theorem",
  "lexical_name": "within_refines",
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
  "slug": "within-refines--46742bbd72addc9c3bcab72b",
  "source": {
    "blob": "68938063e5c2e993936d59c3eea3786c9c51c1ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 101,
    "path": "GRWTSK/Analysis/ErrorBounds/CheckedIntegerPower.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46742bbd72addc9c3bcab72b5fd8be343d0a0b642cc45929dfd65a7afe87c053",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/CheckedIntegerPower.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdacd00c-bfcf-898a-e777-6b1d0e619384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem within_refines {s : Coordinates} {t epsilon : ℚ} {d : RationalPowerValue.Resolution}
    {rows : List State} {b : Ball} (h : evaluateWithin s t d rows epsilon = some b) :
    evaluate s t d rows = some b ∧ 0 ≤ epsilon ∧ b.rad ≤ epsilon := by
  unfold evaluateWithin at h
  cases he : evaluate s t d rows with
  | none => simp [he] at h
  | some v =>
      by_cases hp : 0 ≤ epsilon ∧ v.rad ≤ epsilon
      · have hv : v = b := by simpa [he,hp] using h
        subst v
        refine ⟨?_,hp⟩
        simp only [he]
      · simp [he,hp] at h

end GRWTSK.Analysis.ErrorBounds.CheckedIntegerPower
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/CheckedIntegerPower.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/CheckedIntegerPower.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68938063e5c2e993936d59c3eea3786c9c51c1ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
