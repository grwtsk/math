# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:036c624c13debd406f95948698067a94c39a08e80ac09992468259df94611b05",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c044b35bc197a96d14cfd738",
  "source": {
    "blob": "6727a05ec5f0e845943a22188e0e349ed9a0006b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 309,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c044b35bc197a96d14cfd738d1ab275ba89c9a0e75f453004d919dee94f21aac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:036c624c13debd406f95948698067a94c39a08e80ac09992468259df94611b05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CanLift ℂ 𝕔𝔻 (↑) (‖·‖ ≤ 1) where
  prf z hz := ⟨mk z hz, rfl⟩

/-- A cases eliminator that makes `cases z` use `UnitClosedDisc.mk` instead of `Subtype.mk`. -/
@[elab_as_elim, cases_eliminator]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6727a05ec5f0e845943a22188e0e349ed9a0006b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
