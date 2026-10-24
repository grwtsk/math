# lift_awayMapₐ_awayMapₐ_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6b36aec-a8c8-e1fc-e9ef-07b7feef119e",
  "kind": "lemma",
  "lexical_name": "lift_awayMapₐ_awayMapₐ_surjective",
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
  "slug": "lift-awaymap-awaymap-surjective--b876787e73c6c5369763d1f1",
  "source": {
    "blob": "22a24576b956c6d844dfe8958730d2701dadeff6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 39,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant9dba4227c6339b3fd81bb6ff40f8b3703a365494fa1041136494e1c94f99040d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b876787e73c6c5369763d1f10bad1a9d86fbee69f5494091fab84c3ee1b31118",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Proper/Variant9dba4227c6339b3fd81bb6ff40f8b3703a365494fa1041136494e1c94f99040d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b36aec-a8c8-e1fc-e9ef-07b7feef119e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lift_awayMapₐ_awayMapₐ_surjective {d e : ℕ} {f : A} (hf : f ∈ 𝒜 d)
    {g : A} (hg : g ∈ 𝒜 e) {x : A} (hx : x = f * g) (hd : 0 < d) :
    Function.Surjective
      (Algebra.TensorProduct.lift (awayMapₐ 𝒜 hg hx) (awayMapₐ 𝒜 hf (hx.trans (mul_comm _ _)))
        (fun _ _ ↦ .all _ _)) := by
  intro z
  obtain ⟨⟨n, ⟨a, ha⟩, ⟨b, hb'⟩, ⟨j, (rfl : _ = b)⟩⟩, rfl⟩ := mk_surjective z
  by_cases hfg : (f * g) ^ j = 0
  · use 0
    have := HomogeneousLocalization.subsingleton 𝒜 (x := Submonoid.powers x) ⟨j, hx ▸ hfg⟩
    exact this.elim _ _
  have : n = j * (d + e) := by
    apply DirectSum.degree_eq_of_mem_mem 𝒜 hb'
    convert SetLike.pow_mem_graded _ _ using 2
    · infer_instance
    · exact hx ▸ SetLike.mul_mem_graded hf hg
    · exact hx ▸ hfg
  let x0 : NumDenSameDeg 𝒜 (.powers f) :=
  { deg := j * (d * (e + 1))
    num := ⟨a * g ^ (j * (d - 1)), by
      convert SetLike.mul_mem_graded ha (SetLike.pow_mem_graded _ hg) using 2
      rw [this]
      cases d
      · contradiction
      · simp; ring⟩
    den := ⟨f ^ (j * (e + 1)), by convert SetLike.pow_mem_graded _ hf using 2; ring⟩
    den_mem := ⟨_,rfl⟩ }
  let y0 : NumDenSameDeg 𝒜 (.powers g) :=
  { deg := j * (d * e)
    num := ⟨f ^ (j * e), by convert SetLike.pow_mem_graded _ hf using 2; ring⟩
    den := ⟨g ^ (j * d), by convert SetLike.pow_mem_graded _ hg using 2; ring⟩
    den_mem := ⟨_,rfl⟩ }
  use mk x0 ⊗ₜ mk y0
  ext
  simp only [Algebra.TensorProduct.lift_tmul, awayMapₐ_apply, val_mul,
    val_awayMap_mk, Localization.mk_mul, val_mk, x0, y0]
  rw [Localization.mk_eq_mk_iff, Localization.r_iff_exists]
  use 1
  simp only [OneMemClass.coe_one, one_mul, Submonoid.mk_mul_mk]
  cases d
  · contradiction
  · simp only [hx, add_tsub_cancel_right]
    ring

open TensorProduct in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Proper/Variant9dba4227c6339b3fd81bb6ff40f8b3703a365494fa1041136494e1c94f99040d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant9dba4227c6339b3fd81bb6ff40f8b3703a365494fa1041136494e1c94f99040d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22a24576b956c6d844dfe8958730d2701dadeff6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
