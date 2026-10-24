# singular_mem_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faa19e83-c864-eaea-fa96-6e8e01f6dd4f",
  "kind": "theorem",
  "lexical_name": "singular_mem_of_closed",
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
  "slug": "singular-mem-of-closed--66138f16b7226b14d0396579",
  "source": {
    "blob": "5f693410a2b2a1d52a3e86418fad252daa042487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 81,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66138f16b7226b14d039657980291276f0a86ae5adeb7e7edeb44f2bd1cd7f62",
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

Occurrence: `result:faa19e83-c864-eaea-fa96-6e8e01f6dd4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singular_mem_of_closed (N : ℕ) (T : ℝ) (s : ℂ)
    (hs : s ∈ closedRectangle (leftEdge N) 2 T)
    (hz : s = 1 ∨ riemannZeta s = 0) : s ∈ singularHeadAt N T := by
  classical
  rcases hz with rfl | hz
  · exact Finset.mem_insert_self _ _
  apply Finset.mem_insert_of_mem
  rcases (zeta_zero_iff s).mp hz with hnt | ⟨k, rfl⟩
  · apply Finset.mem_union_left
    exact Finset.mem_image.mpr ⟨⟨s, hnt⟩, (mem_heightHead T ⟨s, hnt⟩).mpr hs.2.2, rfl⟩
  · have hne : (trivialPoint k).re ≠ leftEdge N := by
      intro he
      exact zeta_ne_zero_on_left N (trivialPoint k) he (zeta_trivialPoint k)
    have hk := (trivial_left_iff N k).mp (lt_of_le_of_ne hs.1 hne.symm)
    apply Finset.mem_union_right
    exact Finset.mem_image.mpr ⟨k, Finset.mem_range.mpr hk, rfl⟩

/-- Sum over disjoint POINT families. Equal heights never merge complex points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f693410a2b2a1d52a3e86418fad252daa042487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
