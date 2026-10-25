# leafTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3dd4b11df00ac3d1a80a8b9a8dbeecc23b3d592a6cacb289e8bed7b49e85089e",
  "kind": "def",
  "lexical_name": "leafTarget",
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
  "slug": "leaftarget--616308bb8224fbfc271ff10c",
  "source": {
    "blob": "c5a20192601620f9a4f84987f46b7b2d9910db18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:616308bb8224fbfc271ff10c096337666005b8748e99b79315649fd767039357",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3dd4b11df00ac3d1a80a8b9a8dbeecc23b3d592a6cacb289e8bed7b49e85089e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leafTarget {Y : Sort*} (target : V → Y) (contract : G.TargetInvariant target) :
    G.Leaf → Y :=
  Quotient.lift (fun x : {x : V // x ∈ G.nodes} => target x.val)
    (fun _ _ h => G.leaf_transport_preserves_targets target contract h)

/-- In the absence of selected invertible edges, leaf membership is identity,
regardless of how many directional bridges the graph contains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Atlas/Variantf9ced3f8f220300dc4da1f99d94d04c8c948d1b57082de20b87def3218727aa5.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5a20192601620f9a4f84987f46b7b2d9910db18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
