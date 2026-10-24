# hitting_lt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1529e70c-f3ce-22e0-d4be-77a802f2c988",
  "kind": "theorem",
  "lexical_name": "hitting_lt_iff",
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
  "slug": "hitting-lt-iff--6e78a98f7fc2fb83f66854e7",
  "source": {
    "blob": "943753bb2cf0dcf4454a3c0472a6579eced4c264",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 185,
    "path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e78a98f7fc2fb83f66854e73bc67d99f88b362625354d8789b4522c90f7f2a8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1529e70c-f3ce-22e0-d4be-77a802f2c988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hitting_lt_iff [WellFoundedLT ι] {m : ι} (i : ι) (hi : i ≤ m) :
    hitting u s n m ω < i ↔ ∃ j ∈ Set.Ico n i, u j ω ∈ s := by
  constructor <;> intro h'
  · have h : ∃ j ∈ Set.Icc n m, u j ω ∈ s := by
      by_contra h
      simp_rw [hitting, if_neg h, ← not_le] at h'
      exact h' hi
    exact ⟨hitting u s n m ω, ⟨le_hitting_of_exists h, h'⟩, hitting_mem_set h⟩
  · obtain ⟨k, hk₁, hk₂⟩ := h'
    refine lt_of_le_of_lt ?_ hk₁.2
    exact hitting_le_of_mem hk₁.1 (hk₁.2.le.trans hi) hk₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `943753bb2cf0dcf4454a3c0472a6579eced4c264` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
