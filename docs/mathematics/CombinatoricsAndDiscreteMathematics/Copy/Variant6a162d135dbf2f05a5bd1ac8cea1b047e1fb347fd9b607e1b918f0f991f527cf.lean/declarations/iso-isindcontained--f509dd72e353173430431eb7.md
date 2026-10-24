# Iso.isIndContained'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:353b3d19-26a6-dc07-1e5c-8466c3eb0868",
  "kind": "lemma",
  "lexical_name": "Iso.isIndContained'",
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
  "slug": "iso-isindcontained--f509dd72e353173430431eb7",
  "source": {
    "blob": "7a9fa3180b6d5008592a34210c71c77755024b46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 357,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variant6a162d135dbf2f05a5bd1ac8cea1b047e1fb347fd9b607e1b918f0f991f527cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f509dd72e353173430431eb793fe92566440f2077e9e5e6bcca542bca7c3ddc4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Copy/Variant6a162d135dbf2f05a5bd1ac8cea1b047e1fb347fd9b607e1b918f0f991f527cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:353b3d19-26a6-dc07-1e5c-8466c3eb0868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma Iso.isIndContained' (e : G ≃g H) : H ⊴ G := e.symm.isIndContained

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Copy/Variant6a162d135dbf2f05a5bd1ac8cea1b047e1fb347fd9b607e1b918f0f991f527cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variant6a162d135dbf2f05a5bd1ac8cea1b047e1fb347fd9b607e1b918f0f991f527cf.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a9fa3180b6d5008592a34210c71c77755024b46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
