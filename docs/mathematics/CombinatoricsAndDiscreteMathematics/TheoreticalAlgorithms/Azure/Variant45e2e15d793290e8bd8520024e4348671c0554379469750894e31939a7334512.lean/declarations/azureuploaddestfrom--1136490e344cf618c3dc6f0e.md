# azureUploadDestFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4facc3f73b6e328a95af8d2e3caf180e3a679401fc9a4bd2aa01cdea4bddd4b",
  "kind": "def",
  "lexical_name": "azureUploadDestFrom",
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
  "slug": "azureuploaddestfrom--1136490e344cf618c3dc6f0e",
  "source": {
    "blob": "a4dedd827870d2e5c99ae5b37a9fa8c1bc8fb208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Azure/Variant45e2e15d793290e8bd8520024e4348671c0554379469750894e31939a7334512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1136490e344cf618c3dc6f0e9585ebcc48a3823f1ebb7ea4565cfb05cbca364a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Azure/Variant45e2e15d793290e8bd8520024e4348671c0554379469750894e31939a7334512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4facc3f73b6e328a95af8d2e3caf180e3a679401fc9a4bd2aa01cdea4bddd4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def azureUploadDestFrom (putBase? : Option String) (container? : Option Container)
    (repo : String) (scope? : Option String) : Except String StagedUploadDest :=
  match container? with
  | some c => .ok (containerUploadDest (putBase?.getD azureAccountURL) c repo scope?)
  | none => .error
      s!"an upload targets one container: pass --container=NAME (known: \
      {", ".intercalate (Container.all.map Container.name)}), or set \
      MATHLIB_CACHE_PUT_URL for a flat upload"

/-- The api-version header that every bearer-authenticated Azure request
sends. Bearer authentication requires an api-version that supports OAuth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Azure/Variant45e2e15d793290e8bd8520024e4348671c0554379469750894e31939a7334512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Azure/Variant45e2e15d793290e8bd8520024e4348671c0554379469750894e31939a7334512.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4dedd827870d2e5c99ae5b37a9fa8c1bc8fb208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
