# charZero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e21f7a3-d7a2-b8da-02a6-21256420e35d",
  "kind": "lemma",
  "lexical_name": "charZero_iff",
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
  "slug": "charzero-iff--0edbebb7a54f1975a2f83f0c",
  "source": {
    "blob": "57fee95bb892fe0c56807ff3d18d191313498d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 60,
    "path": "GRWTSK/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0edbebb7a54f1975a2f83f0cfb46e6c3abbd1d99a2c6482ac3c023e9319d8e24",
  "verification": {
    "reference": "docs/verification/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e21f7a3-d7a2-b8da-02a6-21256420e35d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charZero_iff {ϕ : R →+* S} (hϕ : Injective ϕ) : CharZero R ↔ CharZero S :=
  ⟨fun hR =>
    ⟨by intro a b h; rwa [← @Nat.cast_inj R, ← hϕ.eq_iff, map_natCast ϕ, map_natCast ϕ]⟩,
    fun _ => ϕ.charZero⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CharZero/Variant0259513d49c831a33a4c267d300b780266ca9eb8de58130a1a08cc24e1bb3406.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57fee95bb892fe0c56807ff3d18d191313498d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
