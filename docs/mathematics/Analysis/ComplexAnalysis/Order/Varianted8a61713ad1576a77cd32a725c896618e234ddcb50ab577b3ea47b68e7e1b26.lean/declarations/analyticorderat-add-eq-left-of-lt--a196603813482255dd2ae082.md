# analyticOrderAt_add_eq_left_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c76875e-042b-4ac5-7028-acd79062cb77",
  "kind": "lemma",
  "lexical_name": "analyticOrderAt_add_eq_left_of_lt",
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
  "slug": "analyticorderat-add-eq-left-of-lt--a196603813482255dd2ae082",
  "source": {
    "blob": "34b6babc6a02d0034cebd8dc8385390a56067f7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 231,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Varianted8a61713ad1576a77cd32a725c896618e234ddcb50ab577b3ea47b68e7e1b26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a196603813482255dd2ae08241f56d53611b8c42133ea4afc7d91052ba04a8d8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Varianted8a61713ad1576a77cd32a725c896618e234ddcb50ab577b3ea47b68e7e1b26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c76875e-042b-4ac5-7028-acd79062cb77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma analyticOrderAt_add_eq_left_of_lt (hfg : analyticOrderAt f z₀ < analyticOrderAt g z₀) :
    analyticOrderAt (f + g) z₀ = analyticOrderAt f z₀ :=
  le_antisymm (by simpa [hfg.not_le] using le_analyticOrderAt_sub (f := f + g) (g := g) (z₀ := z₀))
    (by simpa [hfg.le] using le_analyticOrderAt_add (f := f) (g := g) (z₀ := z₀))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Varianted8a61713ad1576a77cd32a725c896618e234ddcb50ab577b3ea47b68e7e1b26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Varianted8a61713ad1576a77cd32a725c896618e234ddcb50ab577b3ea47b68e7e1b26.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34b6babc6a02d0034cebd8dc8385390a56067f7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
