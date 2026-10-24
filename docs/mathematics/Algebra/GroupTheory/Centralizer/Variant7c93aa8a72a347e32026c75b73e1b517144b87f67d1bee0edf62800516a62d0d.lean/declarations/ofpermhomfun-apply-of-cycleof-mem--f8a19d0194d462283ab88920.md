# ofPermHomFun_apply_of_cycleOf_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b31d5347353f78d4a7c8c5000b56cc15c29a8bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5d34520-a851-419d-d355-abcd998a1f15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98c08488-6b63-e699-268a-39bacdda33dc",
  "kind": "theorem",
  "lexical_name": "ofPermHomFun_apply_of_cycleOf_mem",
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
  "slug": "ofpermhomfun-apply-of-cycleof-mem--f8a19d0194d462283ab88920",
  "source": {
    "blob": "0b31d5347353f78d4a7c8c5000b56cc15c29a8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 264,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8a19d0194d462283ab88920c592a0e4e0ff1321e49ae65eda707aba0d6c6093",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98c08488-6b63-e699-268a-39bacdda33dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofPermHomFun_apply_of_cycleOf_mem {x : α} {c : g.cycleFactorsFinset}
    (hx : x ∈ c.val.support) {m : ℤ} (hm : (g ^ m) (a c) = x) :
    ofPermHomFun a τ x = (g ^ m) (a ((τ : Perm g.cycleFactorsFinset) c)) := by
  have hx' : c = g.cycleOf x := cycle_is_cycleOf hx (Subtype.prop c)
  have hx'' : g.cycleOf x ∈ g.cycleFactorsFinset := hx' ▸ c.prop
  set n := Nat.find (a.sameCycle hx'').exists_nat_pow_eq
  have hn : (g ^ (n : ℤ)) (a c) = x := by
    rw [← Nat.find_spec (a.sameCycle hx'').exists_nat_pow_eq, zpow_natCast]
    congr
    rw [← Subtype.coe_inj, hx']
  suffices ofPermHomFun a τ x = (g ^ (n : ℤ)) (a ((τ : Perm g.cycleFactorsFinset) c)) by
    rw [this, IsCycleOn.zpow_apply_eq_zpow_apply
      (isCycleOn_support_of_mem_cycleFactorsFinset ((τ : Perm g.cycleFactorsFinset) c).prop)
      (mem_support_self a ((τ : Perm g.cycleFactorsFinset) c))]
    simp only [τ.prop c]
    rw [← IsCycleOn.zpow_apply_eq_zpow_apply
      (isCycleOn_support_of_mem_cycleFactorsFinset c.prop) (mem_support_self a c)]
    rw [hn, hm]
  simp only [ofPermHomFun, dif_pos hx'']
  congr
  exact hx'.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b31d5347353f78d4a7c8c5000b56cc15c29a8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
