# addOrderOf_eq_pos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d10558eef48b083c55a8d9a227c6084d37f1e92a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 418,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d12eb5c-fd69-8968-92c4-0f0562bedace",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15c7395f-4eb4-d399-56c5-860ecfa5a06d",
  "kind": "theorem",
  "lexical_name": "addOrderOf_eq_pos_iff",
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
  "slug": "addorderof-eq-pos-iff--641e0edfd437025ecd229433",
  "source": {
    "blob": "d10558eef48b083c55a8d9a227c6084d37f1e92a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 418,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:641e0edfd437025ecd22943340cb5f8d6909a52af700a3fa53476a576c3a175d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15c7395f-4eb4-d399-56c5-860ecfa5a06d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addOrderOf_eq_pos_iff {u : AddCircle p} {n : ℕ} (h : 0 < n) :
    addOrderOf u = n ↔ ∃ m < n, m.gcd n = 1 ∧ ↑(↑m / ↑n * p) = u := by
  refine' ⟨QuotientAddGroup.induction_on' u fun k hk => _, _⟩
  · rintro ⟨m, _, h₁, rfl⟩
    exact addOrderOf_div_of_gcd_eq_one h h₁
  have h0 := addOrderOf_nsmul_eq_zero (k : AddCircle p)
  rw [hk, ← coe_nsmul, coe_eq_zero_iff] at h0
  obtain ⟨a, ha⟩ := h0
  have h0 : (_ : 𝕜) ≠ 0 := Nat.cast_ne_zero.2 h.ne'
  rw [nsmul_eq_mul, mul_comm, ← div_eq_iff h0, ← a.ediv_add_emod' n, add_smul, add_div,
    zsmul_eq_mul, Int.cast_mul, Int.cast_ofNat, mul_assoc, ← mul_div, mul_comm _ p,
    mul_div_cancel p h0] at ha
  have han : _ = a % n := Int.toNat_of_nonneg (Int.emod_nonneg _ <| by exact_mod_cast h.ne')
  have he : (↑(↑((a % n).toNat) / ↑n * p) : AddCircle p) = k
  · convert congr_arg (QuotientAddGroup.mk : 𝕜 → (AddCircle p)) ha using 1
    rw [coe_add, ← Int.cast_ofNat, han, zsmul_eq_mul, mul_div_right_comm, eq_comm, add_left_eq_self,
      ←zsmul_eq_mul, coe_zsmul, coe_period, smul_zero]
  refine' ⟨(a % n).toNat, _, _, he⟩
  · rw [← Int.ofNat_lt, han]
    exact Int.emod_lt_of_pos _ (Int.ofNat_lt.2 h)
  · have := (gcd_mul_addOrderOf_div_eq p (Int.toNat (a % ↑n)) h).trans
      ((congr_arg addOrderOf he).trans hk).symm
    rw [he, Nat.mul_left_eq_self_iff] at this
    · exact this
    · rwa [hk]
#align add_circle.add_order_of_eq_pos_iff AddCircle.addOrderOf_eq_pos_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d10558eef48b083c55a8d9a227c6084d37f1e92a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
