# limitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:680171c9a380561601252348ebd8c25ab971723e2ed72e2638a2b2e1b37a6e9c",
  "kind": "def",
  "lexical_name": "limitCone",
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
  "slug": "limitcone--6f8675455c2faf5bb69ee63b",
  "source": {
    "blob": "dc553c50d85e9d655943dcbb61b96ef3f8f1e1bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 169,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant40f6093c3ae445024e49ea66867db738c5f8bbb6ab2624a684b60a5c3740980f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f8675455c2faf5bb69ee63b3fc078fc9f9d8c1e1e2284ae0d4628ea5297de0d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant40f6093c3ae445024e49ea66867db738c5f8bbb6ab2624a684b60a5c3740980f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:680171c9a380561601252348ebd8c25ab971723e2ed72e2638a2b2e1b37a6e9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitCone {J : Type v} [SmallCategory J] (F : J ⥤ Profinite.{max u v}) : Limits.Cone F where
  pt :=
    { toTop := (CompHaus.limitCone.{v, u} (F ⋙ profiniteToCompHaus)).pt.toTop
      prop := by
        change TotallyDisconnectedSpace ({ u : ∀ j : J, F.obj j | _ } : Type _)
        exact Subtype.totallyDisconnectedSpace }
  π :=
  { app := (CompHaus.limitCone.{v, u} (F ⋙ profiniteToCompHaus)).π.app
    -- Porting note: was `by tidy`:
    naturality := by
      intro j k f
      ext ⟨g, p⟩
      exact (p f).symm }

/-- The limit cone `Profinite.limitCone F` is indeed a limit cone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant40f6093c3ae445024e49ea66867db738c5f8bbb6ab2624a684b60a5c3740980f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant40f6093c3ae445024e49ea66867db738c5f8bbb6ab2624a684b60a5c3740980f.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc553c50d85e9d655943dcbb61b96ef3f8f1e1bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
