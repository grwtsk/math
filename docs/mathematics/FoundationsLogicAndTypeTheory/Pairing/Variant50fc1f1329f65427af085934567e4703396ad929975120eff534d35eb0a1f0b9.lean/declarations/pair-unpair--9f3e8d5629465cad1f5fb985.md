# pair_unpair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4c2a987-1108-5531-fd16-c811021ba870",
  "kind": "theorem",
  "lexical_name": "pair_unpair",
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
  "slug": "pair-unpair--9f3e8d5629465cad1f5fb985",
  "source": {
    "blob": "35bdf1153a83875cae296d4dbb872c184aaa92cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f3e8d5629465cad1f5fb9856456abd03da74a0eaa9a2e975342f86daa13ab4a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4c2a987-1108-5531-fd16-c811021ba870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pair_unpair (n : ℕ) : pair (unpair n).1 (unpair n).2 = n := by
  dsimp only [unpair]; let s := sqrt n
  have sm : s * s + (n - s * s) = n := Nat.add_sub_cancel' (sqrt_le _)
  split_ifs with h
  · simp [s, pair, h, sm]
  · have hl : n - s * s - s ≤ s := Nat.sub_le_iff_le_add.2
      (Nat.sub_le_iff_le_add'.2 <| by rw [← Nat.add_assoc]; apply sqrt_le_add)
    simp [s, pair, hl.not_gt, Nat.add_assoc, Nat.add_sub_cancel' (le_of_not_gt h), sm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35bdf1153a83875cae296d4dbb872c184aaa92cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
