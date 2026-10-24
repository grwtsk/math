# map_smul_of_tower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d3745b7bbdd394222d1b9191d553d646007858d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e3c2575a7aa2edbc18c00a0e2e03bd2f7875d018a46c1e5f5984782fda21176.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62ccc467-144d-b2e7-ae83-290b597b5dc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c208fab0-7dd7-7f6c-e285-93b6422b06dc",
  "kind": "theorem",
  "lexical_name": "map_smul_of_tower",
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
  "slug": "map-smul-of-tower--be445b3d803ad2786fe015b5",
  "source": {
    "blob": "9d3745b7bbdd394222d1b9191d553d646007858d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 225,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant2e3c2575a7aa2edbc18c00a0e2e03bd2f7875d018a46c1e5f5984782fda21176.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be445b3d803ad2786fe015b5eeccbe17f9a01595072ed164adb2e18e90567999",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variant2e3c2575a7aa2edbc18c00a0e2e03bd2f7875d018a46c1e5f5984782fda21176.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c208fab0-7dd7-7f6c-e285-93b6422b06dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_smul_of_tower {R S : Type*} [CommSemiring S] [SMul R A] [Algebra S A] [SMul R B]
    [Algebra S B] [MulActionHomClass (A →A[S] B) R A B] (f : A →A[S] B) (c : R) (x : A) :
    f (c • x) = c • f x :=
  map_smul f c x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant2e3c2575a7aa2edbc18c00a0e2e03bd2f7875d018a46c1e5f5984782fda21176.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant2e3c2575a7aa2edbc18c00a0e2e03bd2f7875d018a46c1e5f5984782fda21176.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d3745b7bbdd394222d1b9191d553d646007858d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
