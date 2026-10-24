# test_markerURL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bff3fc93316791d07c1f4c5eec2251d9fa1582ee3aa6c4ef5d10d75414b93575",
  "kind": "def",
  "lexical_name": "test_markerURL",
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
  "slug": "test-markerurl--cb701b942ebeec0ad71820e3",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 659,
    "line": 631,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb701b942ebeec0ad71820e3331d7740e92290fca30ad910513cb65b9c285ef8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bff3fc93316791d07c1f4c5eec2251d9fa1582ee3aa6c4ef5d10d75414b93575`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–659.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_markerURL : IO Unit := do
  IO.println "StagedUploadDest.markerURL:"
  let dest (backend : UploadBackend) (container? : Option Container)
      (putBase? : Option String) : String :=
    ((stagedUploadDestFrom backend none putBase? container? "alice/mathlib4"
      none).toOption.map (·.markerURL "abc123")).getD "(unresolved)"
  assertEq "forks marker URL under the Azure base"
    "https://lakecache.blob.core.windows.net/mathlib4-forks/m/alice/mathlib4/abc123"
    (dest .azure (some .forks) none)
  -- The marker lives under `/m/`, its own namespace, and is keyed by repo.
  assertEq "marker is under /m/, keyed by repo"
    "m/leanprover-community/mathlib4/deadbeef"
    (markerPath MATHLIBREPO "deadbeef")
  -- A put base rebases the marker with the artifacts it marks: the same
  -- `{base}/{container}` resolution feeds both (see `stagedUploadDestFrom`).
  assertEq "marker URL follows a rebased upload destination"
    "https://bucket.example.org/mirror/mathlib4-forks/m/alice/mathlib4/abc123"
    (dest .s3 (some .forks) (some "https://bucket.example.org/mirror"))
  -- The repo segment is lowercased, so an upload and a probe for the same fork
  -- meet at one path regardless of how the owner name was capitalized.
  assertEq "marker repo is lowercased in the path"
    "m/alice/mathlib4/abc123"
    (markerPath "Alice/Mathlib4" "abc123")

/-- Marker probes read through the container's read base; marker writes follow
the resolved upload destination (`StagedUploadDest.markerURL`). Without a
base-URL override, both positions of the legacy switch are pinned: probes
address the container's service endpoint by default, and under legacy they
match the Azure write URL. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
