# isNilpotent_jacobson_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abb69209-b8e3-36c9-58bc-be04c0eac8dd",
  "kind": "theorem",
  "lexical_name": "isNilpotent_jacobson_bot",
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
  "slug": "isnilpotent-jacobson-bot--628d877796d3227fb296705a",
  "source": {
    "blob": "583994878a6d70c683392a68719d40c875a0d461",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 58,
    "path": "GRWTSK/Algebra/Ring/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:628d877796d3227fb296705a8da657b8e780f448e3591200fc27d531032cc637",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abb69209-b8e3-36c9-58bc-be04c0eac8dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNilpotent_jacobson_bot {R} [Ring R] [IsArtinianRing R] :
    IsNilpotent (Ideal.jacobson (⊥ : Ideal R)) :=
  Ideal.jacobson_bot (R := R) ▸ IsSemiprimaryRing.isNilpotent

variable {R : Type*} [CommRing R] [IsArtinianRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583994878a6d70c683392a68719d40c875a0d461` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
