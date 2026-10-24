# Gleason

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9bdadd365123e22636f60e93b98594ee94929352",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/374e07a710491a451d5ff70e95b17de753de97947989b31016b2129c0336bc4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d56926b1-6de4-b234-6cb2-c405a120b4c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf358358-7b08-933b-b29e-1fcc64a3cacb",
  "kind": "lemma",
  "lexical_name": "Gleason",
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
  "slug": "gleason--9575e482646db79ab46adb0c",
  "source": {
    "blob": "9bdadd365123e22636f60e93b98594ee94929352",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 242,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant374e07a710491a451d5ff70e95b17de753de97947989b31016b2129c0336bc4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9575e482646db79ab46adb0c6be344f96d93c1602b2ee514ff8ade4475192bed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant374e07a710491a451d5ff70e95b17de753de97947989b31016b2129c0336bc4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf358358-7b08-933b-b29e-1fcc64a3cacb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Gleason (X : CompHaus.{u}) :
    Projective X ↔ ExtremallyDisconnected X := by
  constructor
  · intro h
    change ExtremallyDisconnected X.toStonean
    infer_instance
  · intro h
    let X' : Stonean := ⟨X.toTop, inferInstance⟩
    change Projective X'.compHaus
    apply Stonean.instProjectiveCompHausCompHaus

end CompHaus

namespace Profinite

/-- If `X` is profinite, `presentation X` is a Stonean space equipped with an epimorphism down to
`X` (see `Profinite.presentation.π` and `Profinite.presentation.epi_π`). -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant374e07a710491a451d5ff70e95b17de753de97947989b31016b2129c0336bc4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant374e07a710491a451d5ff70e95b17de753de97947989b31016b2129c0336bc4f.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bdadd365123e22636f60e93b98594ee94929352` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
