# separation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b532695-7d72-df41-c5a1-498876d799df",
  "kind": "lemma",
  "lexical_name": "separation",
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
  "slug": "separation--a9ab592f11a72b00ab16d049",
  "source": {
    "blob": "e2bda182d92ad616fe5d318db1ee0819ec801897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1148,
    "line": 1132,
    "path": "GRWTSK/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9ab592f11a72b00ab16d049c70d2e5617568e69b19a8e241cdf712b60850f4a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b532695-7d72-df41-c5a1-498876d799df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1132–1148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma separation {x : X} {C : Set X} (hxC : C ∈ 𝓝 x) :
    ∃ (n : ℕ), C ∈ (𝓝 (distDenseSeq X n x)).comap (distDenseSeq X n) := by
  let ε : ℝ := min (infDist x (closure Cᶜ)) 1
  obtain hC | hC := (closure Cᶜ).eq_empty_or_nonempty
  · simp_all
  have : Nonempty X := ⟨x⟩
  obtain ⟨n, hn⟩ := denseRange_iff.mp (denseRange_denseSeq X) x (ε / 2)
    (by simp_all [ε, ← IsClosed.notMem_iff_infDist_pos, mem_interior_iff_mem_nhds])
  refine ⟨n, ball 0 (ε / 2), isOpen_ball.mem_nhds ?_, ?_⟩
  · simp [Subtype.dist_eq, abs_eq_self.mpr, coe_projIcc, hn]
  · intro y hy
    replace hy : dist y (denseSeq X n) < ε / 2 := by
      simpa [Subtype.dist_eq, abs_eq_self.mpr, coe_projIcc, not_lt_of_ge, ε, div_le_iff₀] using hy
    have : dist x y < infDist x (closure Cᶜ) :=
      ((dist_triangle_right x y (denseSeq X n)).trans_lt (add_lt_add hn hy)).trans_le (by simp [ε])
    simpa using notMem_of_notMem_closure (mt infDist_le_dist_of_mem this.not_ge)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean#L1132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2bda182d92ad616fe5d318db1ee0819ec801897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
