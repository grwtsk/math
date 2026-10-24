# colimitCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b121d115d3990978e22c50a0e7cb1c1b70d4b54492a925dd1522e959aa90708",
  "kind": "def",
  "lexical_name": "colimitCocone",
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
  "slug": "colimitcocone--4a6d9c01198734eed50ba03b",
  "source": {
    "blob": "40919977fb3ef5ed9a897970897d384d167e9471",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 185,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant166c097a0652e9f197b5876317f30b081d77ccd57dc82ab55c1fee2497fedb4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a6d9c01198734eed50ba03b7ec02ed0dd06eb4e3b211b68baebd0d15bbfcf68",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant166c097a0652e9f197b5876317f30b081d77ccd57dc82ab55c1fee2497fedb4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b121d115d3990978e22c50a0e7cb1c1b70d4b54492a925dd1522e959aa90708`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitCocone (F : J ⥤ α) : ColimitCocone F where
  cocone :=
    { pt := iSup F.obj
      ι := { app := fun _ => homOfLE (CompleteLattice.le_sSup _ _ (Set.mem_range_self _)) } }
  isColimit :=
    { desc := fun s =>
        homOfLE (CompleteLattice.sSup_le _ _ (by rintro _ ⟨j, rfl⟩; exact (s.ι.app j).le)) }

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant166c097a0652e9f197b5876317f30b081d77ccd57dc82ab55c1fee2497fedb4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant166c097a0652e9f197b5876317f30b081d77ccd57dc82ab55c1fee2497fedb4b.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40919977fb3ef5ed9a897970897d384d167e9471` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
