# nth_mem_anti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c00098a8-5bed-c851-b945-583ec381246f",
  "kind": "lemma",
  "lexical_name": "nth_mem_anti",
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
  "slug": "nth-mem-anti--fe656ff633633d44bffa291a",
  "source": {
    "blob": "5eb5218dcb9e8f94c4de3e680c36304ed9aa81b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe656ff633633d44bffa291a9e6ec697a7f1fa3a30cb80221e131556a1cee96e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c00098a8-5bed-c851-b945-583ec381246f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nth_mem_anti {a b : ℕ} (hab : a ≤ b) (h : p (nth p b)) : p (nth p a) := by
  by_cases h' : ∀ hf : (Set.ofPred p).Finite, a < #hf.toFinset
  · exact nth_mem a h'
  · simp only [not_forall, not_lt] at h'
    have h'b : ∃ hf : (Set.ofPred p).Finite, #hf.toFinset ≤ b := by
      rcases h' with ⟨hf, ha⟩
      exact ⟨hf, ha.trans hab⟩
    have ha0 : nth p a = 0 := by simp [nth_eq_zero, h']
    have hb0 : nth p b = 0 := by simp [nth_eq_zero, h'b]
    rw [ha0]
    rwa [hb0] at h

/-- `Nat.nth p` is the least strictly monotone function whose image is contained in
`Set.ofPred p` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eb5218dcb9e8f94c4de3e680c36304ed9aa81b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
