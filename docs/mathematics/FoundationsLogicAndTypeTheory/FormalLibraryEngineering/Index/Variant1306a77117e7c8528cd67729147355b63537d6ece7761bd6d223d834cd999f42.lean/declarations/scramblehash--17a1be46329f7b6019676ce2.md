# scrambleHash

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:425f0349df91b00b57c572f394e5e4da7a7b2b91514b1e57e9a3628d07fb5ed3",
  "kind": "def",
  "lexical_name": "scrambleHash",
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
  "slug": "scramblehash--17a1be46329f7b6019676ce2",
  "source": {
    "blob": "9db685587bb7539e77fdb743165153060f3ae74a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17a1be46329f7b6019676ce28d54b30b7fa06326cde0f8d0bcd6b1612ece6404",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:425f0349df91b00b57c572f394e5e4da7a7b2b91514b1e57e9a3628d07fb5ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def scrambleHash (hash : UInt64) : UInt64 :=
  let fold := hash ^^^ (hash >>> 32)
  fold ^^^ (fold >>> 16)

-- Note that this indexing scheme always produces a valid index, but it only has a chance of
-- returning every index if sz is a power of two.
/--
`sz` is an explicit parameter because having it inferred from `h` can lead to suboptimal IR,
cf. https://github.com/leanprover/lean4/issues/4157
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant1306a77117e7c8528cd67729147355b63537d6ece7761bd6d223d834cd999f42.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9db685587bb7539e77fdb743165153060f3ae74a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
