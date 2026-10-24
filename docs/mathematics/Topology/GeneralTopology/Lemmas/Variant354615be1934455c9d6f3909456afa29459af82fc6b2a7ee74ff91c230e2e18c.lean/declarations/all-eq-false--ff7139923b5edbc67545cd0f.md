# all_eq_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47ae55f3-2b8b-ca57-1db0-8dc847b5cc29",
  "kind": "theorem",
  "lexical_name": "all_eq_false",
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
  "slug": "all-eq-false--ff7139923b5edbc67545cd0f",
  "source": {
    "blob": "87a93adccf85fda7fa5b1ba0d7721778c5d4e3a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 492,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant354615be1934455c9d6f3909456afa29459af82fc6b2a7ee74ff91c230e2e18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff7139923b5edbc67545cd0f4c6d5425f938c9dfbabd4cb202e77e4d7c074c89",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant354615be1934455c9d6f3909456afa29459af82fc6b2a7ee74ff91c230e2e18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47ae55f3-2b8b-ca57-1db0-8dc847b5cc29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_eq_false (p : α → Bool) (x : Option α) :
    x.all p = false ↔ ∃ y, x = some y ∧ p y = false := by
  cases x <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant354615be1934455c9d6f3909456afa29459af82fc6b2a7ee74ff91c230e2e18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant354615be1934455c9d6f3909456afa29459af82fc6b2a7ee74ff91c230e2e18c.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87a93adccf85fda7fa5b1ba0d7721778c5d4e3a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
