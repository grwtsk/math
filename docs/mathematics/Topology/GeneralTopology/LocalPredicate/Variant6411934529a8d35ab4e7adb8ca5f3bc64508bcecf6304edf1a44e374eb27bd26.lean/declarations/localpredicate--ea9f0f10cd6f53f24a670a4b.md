# LocalPredicate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:524e972aef5f2cc518d3e533f3058e7225105c69a7f84d182274c355ca4c32df",
  "kind": "structure",
  "lexical_name": "LocalPredicate",
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
  "slug": "localpredicate--ea9f0f10cd6f53f24a670a4b",
  "source": {
    "blob": "5a575600fd5be61fb4f15b0a2499cb0e7f578bbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant6411934529a8d35ab4e7adb8ca5f3bc64508bcecf6304edf1a44e374eb27bd26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea9f0f10cd6f53f24a670a4b0b425659432b78b6c6ffeac7f404747c829b15a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalPredicate/Variant6411934529a8d35ab4e7adb8ca5f3bc64508bcecf6304edf1a44e374eb27bd26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:524e972aef5f2cc518d3e533f3058e7225105c69a7f84d182274c355ca4c32df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalPredicate extends PrelocalPredicate T where
  /-- A local predicate must be local --- provided that it is locally satisfied, it is also globally
  satisfied -/
  locality :
    ∀ {U : Opens X} (f : ∀ x : U, T x)
      (_ : ∀ x : U, ∃ (V : Opens X) (_ : x.1 ∈ V) (i : V ⟶ U),
        pred fun x : V ↦ f (i x : U)), pred f

set_option backward.defeqAttrib.useBackward true in
/-- Continuity is a "local" predicate on functions to a fixed topological space `T`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalPredicate/Variant6411934529a8d35ab4e7adb8ca5f3bc64508bcecf6304edf1a44e374eb27bd26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant6411934529a8d35ab4e7adb8ca5f3bc64508bcecf6304edf1a44e374eb27bd26.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a575600fd5be61fb4f15b0a2499cb0e7f578bbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
