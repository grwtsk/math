# FriendlyOperationClass.eq_of_bisim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69e9b0ead301879ca23c34e52f2563846de24be0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 550,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2e120fe-2c59-086b-e90b-52fcb598815c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:352c4ad7-f0b8-befe-6676-1d23bffa2243",
  "kind": "theorem",
  "lexical_name": "FriendlyOperationClass.eq_of_bisim",
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
  "slug": "friendlyoperationclass-eq-of-bisim--3b9d178b562c063186a948b2",
  "source": {
    "blob": "69e9b0ead301879ca23c34e52f2563846de24be0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 550,
    "path": "GRWTSK/Topology/MetricTopology/Corecursion/Variant35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b9d178b562c063186a948b291d260f0a0e684d58179f670544a70764c59c6b2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Corecursion/Variant35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:352c4ad7-f0b8-befe-6676-1d23bffa2243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FriendlyOperationClass.eq_of_bisim {s t : Seq α} {op : γ → Seq α → Seq α}
    [FriendlyOperationClass op]
    (motive : Seq α → Seq α → Prop)
    (base : motive s t)
    (step : ∀ u v, motive u v → (u = v) ∨
      ∃ hd u' v' c, u = cons hd (op c u') ∧ v = cons hd (op c v') ∧
        motive u' v') :
    s = t := by
  suffices dist s t = 0 by simpa using this
  suffices ∀ n, dist s t ≤ (2⁻¹ : ℝ) ^ n by
    apply eq_of_le_of_ge
    · apply ge_of_tendsto' (x := Filter.atTop) _ this
      rw [tendsto_pow_atTop_nhds_zero_iff]
      norm_num
    · simp
  intro n
  induction n generalizing s t with
  | zero => simp
  | succ n ih =>
    obtain step | ⟨hd, u, v, c, rfl, rfl, h_next⟩ := step s t base
    · simp [step]
    simp only [dist_cons_cons]
    specialize ih h_next
    calc
      _ ≤ 2⁻¹ * dist u v := by
        gcongr
        exact (FriendlyOperationClass.friend _).dist_le
      _ ≤ _ := by
        grw [ih, pow_succ']

end Tactic.ComputeAsymptotics.Seq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Corecursion/Variant35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Corecursion/Variant35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e9b0ead301879ca23c34e52f2563846de24be0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
