# squarefree_pow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "134c9312d612a92d7ff35ff3d124e55204bd7904",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4d421a3b9874809348fe23bc02eda4e380b9204f72ec9ea6bd16001f54cab91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d39e9bd8-8edb-64df-e51a-bc4605a66483",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d2d40c3-bdde-6997-f40c-3834eb411696",
  "kind": "theorem",
  "lexical_name": "squarefree_pow_iff",
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
  "slug": "squarefree-pow-iff--8c700e8644caec69ee49fe3d",
  "source": {
    "blob": "134c9312d612a92d7ff35ff3d124e55204bd7904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variantc4d421a3b9874809348fe23bc02eda4e380b9204f72ec9ea6bd16001f54cab91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c700e8644caec69ee49fe3d04af6b9b4ab95bba4eecb62310aa55b67b5e0acd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Variantc4d421a3b9874809348fe23bc02eda4e380b9204f72ec9ea6bd16001f54cab91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d2d40c3-bdde-6997-f40c-3834eb411696`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefree_pow_iff {n k : ℕ} (hn : n ≠ 1) (hk : k ≠ 0) :
    Squarefree (n ^ k) ↔ Squarefree n ∧ k = 1 := by
  refine ⟨fun h => ?_, by rintro ⟨hn, rfl⟩; simpa⟩
  rcases eq_or_ne n 0 with (rfl | -)
  · simp [zero_pow hk] at h
  refine ⟨h.squarefree_of_dvd (dvd_pow_self _ hk), by_contradiction fun h₁ => ?_⟩
  have : 2 ≤ k := k.two_le_iff.mpr ⟨hk, h₁⟩
  apply hn (Nat.isUnit_iff.1 (h _ _))
  rw [← sq]
  exact pow_dvd_pow _ this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Variantc4d421a3b9874809348fe23bc02eda4e380b9204f72ec9ea6bd16001f54cab91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Variantc4d421a3b9874809348fe23bc02eda4e380b9204f72ec9ea6bd16001f54cab91.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `134c9312d612a92d7ff35ff3d124e55204bd7904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
