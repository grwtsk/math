# fin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d697de671d12c3bf949fd9316bff314cb24bd8ad67b96ca563498f299d2609a2",
  "kind": "def",
  "lexical_name": "fin",
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
  "slug": "fin--0f4cadf05e8e5c5c3f230b4e",
  "source": {
    "blob": "07f66fa91d46038e71182e6650e7a218810dce93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 341,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant48e3237eea342fd49631ba32ddf42281bb406ce48475b83a43d9d4661eadc27a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f4cadf05e8e5c5c3f230b4e2ad673bbcd2d2e7ebb822cb46b9cb6034b75ebdd",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant48e3237eea342fd49631ba32ddf42281bb406ce48475b83a43d9d4661eadc27a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d697de671d12c3bf949fd9316bff314cb24bd8ad67b96ca563498f299d2609a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def fin (n : Nat) : MLList m (Fin n) := go 0 where
  /-- Implementation of `MLList.fin`. -/
  go (i : Nat) : MLList m (Fin n) :=
    if h : i < n then cons ⟨i, h⟩ (thunk fun _ => go (i+1)) else nil

/-- Convert an array to a monadic lazy list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant48e3237eea342fd49631ba32ddf42281bb406ce48475b83a43d9d4661eadc27a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant48e3237eea342fd49631ba32ddf42281bb406ce48475b83a43d9d4661eadc27a.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07f66fa91d46038e71182e6650e7a218810dce93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
