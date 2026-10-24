# Monotone.map_limsSup_of_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3346220d-e73a-c1c2-bb69-53fae639f188",
  "kind": "theorem",
  "lexical_name": "Monotone.map_limsSup_of_continuousAt",
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
  "slug": "monotone-map-limssup-of-continuousat--546cf75db1577e0b3ad43be8",
  "source": {
    "blob": "4fc8c6425179579e5b0134d0e211cbaeb3fe4978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 379,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:546cf75db1577e0b3ad43be81edfda2c4767e0ddaaba401050522e40b2bd965f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3346220d-e73a-c1c2-bb69-53fae639f188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monotone.map_limsSup_of_continuousAt {F : Filter R} [NeBot F] {f : R → S}
    (f_incr : Monotone f) (f_cont : ContinuousAt f F.limsSup)
    (bdd_above : F.IsBounded (· ≤ ·) := by isBoundedDefault)
    (cobdd : F.IsCobounded (· ≤ ·) := by isBoundedDefault) : f F.limsSup = F.limsup f :=
  Antitone.map_limsSup_of_continuousAt (S := Sᵒᵈ) f_incr f_cont bdd_above cobdd

/-- A continuous monotone function between (conditionally) complete linear ordered spaces sends a
`Filter.limsup` to the `Filter.limsup` of the images (if the filter is bounded from above and
frequently bounded from below). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fc8c6425179579e5b0134d0e211cbaeb3fe4978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
