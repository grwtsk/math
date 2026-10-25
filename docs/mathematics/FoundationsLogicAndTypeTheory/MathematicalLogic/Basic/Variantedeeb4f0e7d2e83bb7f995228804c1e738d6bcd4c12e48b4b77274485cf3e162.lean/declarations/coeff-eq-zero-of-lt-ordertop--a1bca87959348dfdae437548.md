# coeff_eq_zero_of_lt_orderTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29981035-c005-5fe1-afc6-08c48f34ebbf",
  "kind": "theorem",
  "lexical_name": "coeff_eq_zero_of_lt_orderTop",
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
  "slug": "coeff-eq-zero-of-lt-ordertop--a1bca87959348dfdae437548",
  "source": {
    "blob": "ef9affefdad12f3840d7611b73730f388339ef9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 309,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantedeeb4f0e7d2e83bb7f995228804c1e738d6bcd4c12e48b4b77274485cf3e162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1bca87959348dfdae43754846fb3d2294d18464ac8e99c8a4407eda3da7db26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantedeeb4f0e7d2e83bb7f995228804c1e738d6bcd4c12e48b4b77274485cf3e162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29981035-c005-5fe1-afc6-08c48f34ebbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_eq_zero_of_lt_orderTop {x : HahnSeries Γ R} {i : Γ} (hi : i < x.orderTop) :
    x.coeff i = 0 := by
  rcases eq_or_ne x 0 with (rfl | hx)
  · exact coeff_zero
  contrapose! hi
  rw [← mem_support] at hi
  rw [orderTop_of_ne hx, WithTop.coe_lt_coe]
  exact Set.IsWF.not_lt_min _ _ hi

open Classical in
/-- A leading coefficient of a Hahn series is the coefficient of a lowest-order nonzero term, or
zero if the series vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantedeeb4f0e7d2e83bb7f995228804c1e738d6bcd4c12e48b4b77274485cf3e162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantedeeb4f0e7d2e83bb7f995228804c1e738d6bcd4c12e48b4b77274485cf3e162.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9affefdad12f3840d7611b73730f388339ef9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
