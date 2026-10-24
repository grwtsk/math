# mem_singularHeadAt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8e03680-7fad-c00f-de0f-9f7b256b97a4",
  "kind": "theorem",
  "lexical_name": "mem_singularHeadAt_iff",
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
  "slug": "mem-singularheadat-iff--e129e4c6d3068eacc52bb350",
  "source": {
    "blob": "5f693410a2b2a1d52a3e86418fad252daa042487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 50,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e129e4c6d3068eacc52bb350b0f5d1025c9d80721a58985477fec5f50571b95f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8e03680-7fad-c00f-de0f-9f7b256b97a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_singularHeadAt_iff (N : ℕ) (T : ℝ) (hT : 0 < T)
    (havoid : ∀ z : ZeroPoint, height z ≠ T) (s : ℂ) :
    s ∈ singularHeadAt N T ↔
      (leftEdge N < s.re ∧ s.re < 2 ∧ |s.im| < T) ∧
        (s = 1 ∨ riemannZeta s = 0) := by
  classical
  constructor
  · intro hs
    rcases Finset.mem_insert.mp hs with rfl | hs
    · exact ⟨⟨(leftEdge_neg N).trans (by norm_num), by norm_num,
        by simpa using hT⟩, Or.inl rfl⟩
    rcases Finset.mem_union.mp hs with hs | hs
    · obtain ⟨z, hz, rfl⟩ := Finset.mem_image.mp hs
      exact ⟨⟨(leftEdge_neg N).trans (point_mem_strip z).1,
        (point_mem_strip z).2.trans (by norm_num),
        lt_of_le_of_ne ((mem_heightHead T z).mp hz) (havoid z)⟩, Or.inr z.2.1⟩
    · obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp hs
      exact ⟨⟨(trivial_left_iff N k).mpr (Finset.mem_range.mp hk),
        (trivialPoint_re_neg k).trans (by norm_num),
        by simpa [trivialPoint] using hT⟩, Or.inr (zeta_trivialPoint k)⟩
  · rintro ⟨hs, rfl | hz⟩
    · exact Finset.mem_insert_self _ _
    apply Finset.mem_insert_of_mem
    rcases (zeta_zero_iff s).mp hz with hnt | ⟨k, rfl⟩
    · apply Finset.mem_union_left
      exact Finset.mem_image.mpr ⟨⟨s, hnt⟩, (mem_heightHead T ⟨s, hnt⟩).mpr hs.2.2.le, rfl⟩
    · apply Finset.mem_union_right
      exact Finset.mem_image.mpr ⟨k, Finset.mem_range.mpr ((trivial_left_iff N k).mp hs.1), rfl⟩

/-- Even on the filled CLOSED rectangle, every actual zero or pole belongs to this inventory.
No avoidance assumption is needed for this direction because heightHead is right-closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f693410a2b2a1d52a3e86418fad252daa042487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
