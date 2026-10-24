# one_le_coverMincard_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bb84f61-e536-6053-20b5-108a02da32b3",
  "kind": "lemma",
  "lexical_name": "one_le_coverMincard_iff",
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
  "slug": "one-le-covermincard-iff--fe0a1c03a773dc469fc18609",
  "source": {
    "blob": "f24095fc7ce6b73eccdfe13b56383ef1a997de95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 259,
    "path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantf5c8e6e4f0a465001d46c48465a72db4e92f93f5bc966cb848f73983a2001b46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe0a1c03a773dc469fc186096f58456b718736b05a3bebb288fa7dcb2253831a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CoverEntropy/Variantf5c8e6e4f0a465001d46c48465a72db4e92f93f5bc966cb848f73983a2001b46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bb84f61-e536-6053-20b5-108a02da32b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_le_coverMincard_iff (T : X → X) (F : Set X) (U : SetRel X X) (n : ℕ) :
    1 ≤ coverMincard T F U n ↔ F.Nonempty := by
  rw [Order.one_le_iff_ne_zero, nonempty_iff_ne_empty, not_iff_not]
  exact coverMincard_eq_zero_iff T F U n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CoverEntropy/Variantf5c8e6e4f0a465001d46c48465a72db4e92f93f5bc966cb848f73983a2001b46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantf5c8e6e4f0a465001d46c48465a72db4e92f93f5bc966cb848f73983a2001b46.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f24095fc7ce6b73eccdfe13b56383ef1a997de95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
