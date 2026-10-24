# presented_log_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfdbe10a-3611-f587-5f2f-f2e87c40f2ec",
  "kind": "theorem",
  "lexical_name": "presented_log_error",
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
  "slug": "presented-log-error--b15fdf0930c9d71ee6d6d311",
  "source": {
    "blob": "d0b7d3fc14ca8eb5d5deed04e707550cee1512e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 135,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalAtanhLog.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b15fdf0930c9d71ee6d6d31162abaa463c12472375a2f22b499dfbb00da7ef48",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalAtanhLog.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfdbe10a-3611-f587-5f2f-f2e87c40f2ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem presented_log_error {t : ℚ} {k : ℕ} (h : validScale t k = true)
    (n₂ nr bits : ℕ) (v : Coordinates) :
    ‖(Real.log (t : ℝ) : ℂ) - toComplex v‖ ≤
      ((enclosure t k n₂ nr bits).rad +
        RationalNewtonDisk.magnitude (sub v (enclosure t k n₂ nr bits).mid) : ℝ) := by
  calc
    _ ≤ ‖(Real.log (t : ℝ) : ℂ) - toComplex (enclosure t k n₂ nr bits).mid‖ +
        ‖toComplex (enclosure t k n₂ nr bits).mid - toComplex v‖ := by
      simpa only [dist_eq_norm] using dist_triangle (Real.log (t : ℝ) : ℂ)
        (toComplex (enclosure t k n₂ nr bits).mid) (toComplex v)
    _ ≤ _ := by
      push_cast
      apply add_le_add (enclosure_sound h n₂ nr bits)
      simpa only [toComplex_sub, norm_sub_rev] using
        RationalNewtonDisk.norm_le_magnitude (sub v (enclosure t k n₂ nr bits).mid)

end GRWTSK.Analysis.ErrorBounds.RationalAtanhLog
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalAtanhLog.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalAtanhLog.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0b7d3fc14ca8eb5d5deed04e707550cee1512e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
