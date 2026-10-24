# finite_aperture_unresolvedness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8cf474b-ed93-16b2-bbe3-afc1e45a2416",
  "kind": "theorem",
  "lexical_name": "finite_aperture_unresolvedness",
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
  "slug": "finite-aperture-unresolvedness--d94457731b66646cabf08439",
  "source": {
    "blob": "ce444d473483ae3dfc5c21cfaedc2c65010abcee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 60,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CoordinationTargets/Varianta653491268b294f8e164ef7cbabe9b8e66e529c641e28447cab69f9406420920.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d94457731b66646cabf084399170e881840b0d4417c742674a893f0d7fa61e6f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CoordinationTargets/Varianta653491268b294f8e164ef7cbabe9b8e66e529c641e28447cab69f9406420920.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8cf474b-ed93-16b2-bbe3-afc1e45a2416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_aperture_unresolvedness : FiniteApertureUnresolvedness :=
  fun aperture ↦ ⟨aperture.checkUnresolved_eq_true, locallyUnresolved_iff_all_rejected aperture⟩

/-- Equality of supplied histories preserves ranking; the bound is declared proposal cost only. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CoordinationTargets/Varianta653491268b294f8e164ef7cbabe9b8e66e529c641e28447cab69f9406420920.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CoordinationTargets/Varianta653491268b294f8e164ef7cbabe9b8e66e529c641e28447cab69f9406420920.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce444d473483ae3dfc5c21cfaedc2c65010abcee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
