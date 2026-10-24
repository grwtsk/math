# nth_add_one_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e5f7eb2-c115-a917-b629-e584fcec8f40",
  "kind": "theorem",
  "lexical_name": "nth_add_one_le_iff",
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
  "slug": "nth-add-one-le-iff--c200aeb24da07856cf8f678a",
  "source": {
    "blob": "5eb5218dcb9e8f94c4de3e680c36304ed9aa81b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 517,
    "path": "GRWTSK/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c200aeb24da07856cf8f678a39891c4805e47f79ac30e595e32a49e5e5154469",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e5f7eb2-c115-a917-b629-e584fcec8f40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nth_add_one_le_iff (hp : (Set.ofPred p).Infinite) {n q : ℕ} (hq : p q) :
    nth p (n + 1) ≤ q ↔ nth p n < q := by
  classical
  rw [← nth_count hq, nth_le_nth hp, nth_lt_nth hp, add_one_le_iff]

end Count

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eb5218dcb9e8f94c4de3e680c36304ed9aa81b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
