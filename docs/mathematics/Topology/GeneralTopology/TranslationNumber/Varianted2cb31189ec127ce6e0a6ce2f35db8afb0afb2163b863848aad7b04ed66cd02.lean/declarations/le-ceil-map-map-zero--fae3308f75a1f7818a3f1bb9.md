# le_ceil_map_map_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6387c1bb-158c-6f32-9b44-355cf84945ac",
  "kind": "theorem",
  "lexical_name": "le_ceil_map_map_zero",
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
  "slug": "le-ceil-map-map-zero--fae3308f75a1f7818a3f1bb9",
  "source": {
    "blob": "2189cde89d38a940c68fec7aac9732defd94ff80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 446,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Varianted2cb31189ec127ce6e0a6ce2f35db8afb0afb2163b863848aad7b04ed66cd02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fae3308f75a1f7818a3f1bb937691321248c4dc5e3498c9638be3e6d76274c75",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Varianted2cb31189ec127ce6e0a6ce2f35db8afb0afb2163b863848aad7b04ed66cd02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6387c1bb-158c-6f32-9b44-355cf84945ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_ceil_map_map_zero : ⌈f 0⌉ + ⌊g 0⌋ ≤ ⌈(f * g) 0⌉ :=
  calc
    ⌈f 0⌉ + ⌊g 0⌋ = ⌈f 0 + ⌊g 0⌋⌉ := (ceil_add_intCast _ _).symm
    _ ≤ ⌈f (g 0)⌉ := ceil_mono <| f.le_map_map_zero g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Varianted2cb31189ec127ce6e0a6ce2f35db8afb0afb2163b863848aad7b04ed66cd02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Varianted2cb31189ec127ce6e0a6ce2f35db8afb0afb2163b863848aad7b04ed66cd02.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2189cde89d38a940c68fec7aac9732defd94ff80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
