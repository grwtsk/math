# trivial_mem_headAt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0e3b818-bb57-afdc-850d-ebb9676e6b5f",
  "kind": "theorem",
  "lexical_name": "trivial_mem_headAt_iff",
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
  "slug": "trivial-mem-headat-iff--42f3ccd48b721a9f978a8773",
  "source": {
    "blob": "5f693410a2b2a1d52a3e86418fad252daa042487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42f3ccd48b721a9f978a877393b2072abff0af4604b9e5885d6b845d0f30fbaf",
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

Occurrence: `result:e0e3b818-bb57-afdc-850d-ebb9676e6b5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivial_mem_headAt_iff (N k : ℕ) (T : ℝ) :
    trivialPoint k ∈ singularHeadAt N T ↔ k < N := by
  classical
  constructor
  · intro hp
    rcases Finset.mem_insert.mp hp with hp | hp
    · exact False.elim (riemannZeta_one_ne_zero (hp ▸ zeta_trivialPoint k))
    rcases Finset.mem_union.mp hp with hp | hp
    · obtain ⟨z, _, hz⟩ := Finset.mem_image.mp hp
      exact False.elim (trivialPoint_not_nontrivial k (hz ▸ z.2))
    · obtain ⟨j, hj, he⟩ := Finset.mem_image.mp hp
      have hjk : j = k := trivialPoint_injective he
      subst j
      exact Finset.mem_range.mp hj
  · intro hk
    exact Finset.mem_insert_of_mem (Finset.mem_union_right _
      (Finset.mem_image.mpr ⟨k, Finset.mem_range.mpr hk, rfl⟩))

/-- Perturbing only the height leaves the entire pole-and-zero inventory unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f693410a2b2a1d52a3e86418fad252daa042487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
