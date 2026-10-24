# isNilpotent_of_forall_le_engel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e64b7597d68f1b47b612b73b0b291b73156aaec3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b64f26db-26c1-17bb-ff50-78da7b0bdcd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b3423ce-f516-1ad0-0745-e48be4cb859e",
  "kind": "lemma",
  "lexical_name": "isNilpotent_of_forall_le_engel",
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
  "slug": "isnilpotent-of-forall-le-engel--4a2572efc7881e7c0d92c3f9",
  "source": {
    "blob": "e64b7597d68f1b47b612b73b0b291b73156aaec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 149,
    "path": "GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a2572efc7881e7c0d92c3f90dd3fd5dcea64f29119d76584f0763fa167a1514",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b3423ce-f516-1ad0-0745-e48be4cb859e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNilpotent_of_forall_le_engel [IsNoetherian R L]
    (H : LieSubalgebra R L) (h : ∀ x ∈ H, H ≤ engel R x) :
    LieRing.IsNilpotent H := by
  rw [LieAlgebra.isNilpotent_iff_forall (R := R)]
  intro x
  let K : ℕ →o Submodule R H :=
    ⟨fun n ↦ LinearMap.ker ((ad R H x) ^ n), fun m n hmn ↦ ?mono⟩
  case mono =>
    intro y hy
    rw [LinearMap.mem_ker] at hy ⊢
    exact Module.End.pow_map_zero_of_le hmn hy
  obtain ⟨n, hn⟩ := monotone_stabilizes_iff_noetherian.mpr inferInstance K
  use n
  ext y
  rw [coe_ad_pow]
  specialize h x x.2 y.2
  rw [mem_engel_iff] at h
  obtain ⟨m, hm⟩ := h
  obtain (hmn | hmn) : m ≤ n ∨ n ≤ m := le_total m n
  · exact Module.End.pow_map_zero_of_le hmn hm
  · have : ∀ k : ℕ, ((ad R L) x ^ k) y = 0 ↔ y ∈ K k := by simp [K, Subtype.ext_iff, coe_ad_pow]
    rwa [this, ← hn m hmn, ← this] at hm

end LieSubalgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64b7597d68f1b47b612b73b0b291b73156aaec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
