# filterMapM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce03b15e36bdc7d926f37e9d4f38bf9eb22824b3446ffd742848d4414acc8d6a",
  "kind": "def",
  "lexical_name": "filterMapM",
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
  "slug": "filtermapm--c9b06989ac758b95e61cb036",
  "source": {
    "blob": "65e59c448c0abfed25c5726166384e68fc11d765",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 258,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantca9a154761a47912be3db475ad845c09832124464aec30f099b5e03aec014901.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9b06989ac758b95e61cb03608084b1924a54ac1672262e36e854779df1d4e1d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantca9a154761a47912be3db475ad845c09832124464aec30f099b5e03aec014901.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce03b15e36bdc7d926f37e9d4f38bf9eb22824b3446ffd742848d4414acc8d6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def filterMapM [Monad m] (f : α → m (Option β)) (xs : MLList m α) : MLList m β :=
  xs.casesM (fun _ => pure nil) fun x xs => do
    match ← f x with
    | none => return xs.filterMapM f
    | some a => return cons a (xs.filterMapM f)

/-- Filter and transform a `MLList` using an `Option` valued function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantca9a154761a47912be3db475ad845c09832124464aec30f099b5e03aec014901.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantca9a154761a47912be3db475ad845c09832124464aec30f099b5e03aec014901.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e59c448c0abfed25c5726166384e68fc11d765` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
