# _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.Set.Finite.compl_mem_cocardinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7796da76-8b60-d626-5067-d4bd43ed346d",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.Set.Finite.compl_mem_cocardinal",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-settheory-cocardinal-variant21--a6b386e198e2bfa58f35eb15",
  "source": {
    "blob": "b1b2e0fcb59c5f9d744ef2cde2b138faf6d815fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6b386e198e2bfa58f35eb155d656ace4c3fe664ae9a35578bea0c7fa4e9db42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7796da76-8b60-d626-5067-d4bd43ed346d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cocardinal.Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.Set.Finite.compl_mem_cocardinal {s : Set α} (hs : s.Finite) :
    sᶜ ∈ cocardinal α hreg :=
  compl_mem_cocardinal_of_card_lt <| lt_of_lt_of_le (Finite.lt_aleph0 hs) (hreg.aleph0_le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variantef163282581e95e322fff228b01aa6e0513322c81ff0ed508404256e362d3116.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1b2e0fcb59c5f9d744ef2cde2b138faf6d815fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
