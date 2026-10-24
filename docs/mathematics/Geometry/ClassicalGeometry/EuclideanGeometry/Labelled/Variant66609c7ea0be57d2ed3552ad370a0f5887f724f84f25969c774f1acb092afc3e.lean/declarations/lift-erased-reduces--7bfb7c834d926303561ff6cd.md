# lift_erased_reduces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6bfedef-7c94-4012-18d8-eb544866ee91",
  "kind": "theorem",
  "lexical_name": "lift_erased_reduces",
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
  "slug": "lift-erased-reduces--7bfb7c834d926303561ff6cd",
  "source": {
    "blob": "70f069ed92588f34260e4c6136a284a8079eaaba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1209,
    "line": 1199,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant66609c7ea0be57d2ed3552ad370a0f5887f724f84f25969c774f1acb092afc3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bfb7c834d926303561ff6cddaf02afa3df23d9c403bb5870f12e3ac60e7d0bc",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant66609c7ea0be57d2ed3552ad370a0f5887f724f84f25969c774f1acb092afc3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6bfedef-7c94-4012-18d8-eb544866ee91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1199–1209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_erased_reduces (h : HasType P Γ M T) {N : PureTypeSystem.Expr S}
    (hr : PureTypeSystem.Reduces M.erase N) :
    ∃ M', Reduces M M' ∧ M'.erase = N ∧ HasType P Γ M' T := by
  induction hr with
  | refl => exact ⟨M, .refl, rfl, h⟩
  | tail hred hstep ih =>
      obtain ⟨M', hMM', he, ht⟩ := ih
      obtain ⟨M'', hM'M'', he'⟩ := ht.lift_erased_step (he ▸ hstep)
      exact ⟨M'', hMM'.tail hM'M'', he', ht.subject_reduction hM'M''⟩

/-- The exact final interface of the labelled-metatheory lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant66609c7ea0be57d2ed3552ad370a0f5887f724f84f25969c774f1acb092afc3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant66609c7ea0be57d2ed3552ad370a0f5887f724f84f25969c774f1acb092afc3e.lean#L1199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70f069ed92588f34260e4c6136a284a8079eaaba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
