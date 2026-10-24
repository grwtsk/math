# helly_theorem_compact'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f9df4a1-dc25-5204-f686-4c0b51f18fcd",
  "kind": "theorem",
  "lexical_name": "helly_theorem_compact'",
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
  "slug": "helly-theorem-compact--6c1ebb0554130d716268d82b",
  "source": {
    "blob": "39f8584d22b685de4c38c088dc1fd6d7892b0bbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c1ebb0554130d716268d82b255ca6c7155b03d39ebba905b1525957a88cc068",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f9df4a1-dc25-5204-f686-4c0b51f18fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem helly_theorem_compact' [TopologicalSpace E] [T2Space E] {F : ι → Set E}
    (h_convex : ∀ i, Convex 𝕜 (F i)) (h_compact : ∀ i, IsCompact (F i))
    (h_inter : ∀ I : Finset ι, #I ≤ finrank 𝕜 E + 1 → (⋂ i ∈ I, F i).Nonempty) :
    (⋂ i, F i).Nonempty := by
  classical
  /- If `ι` is empty the statement is trivial. -/
  rcases isEmpty_or_nonempty ι with _ | h_nonempty
  · simp only [iInter_of_empty, Set.univ_nonempty]
  /- By the finite version of theorem, every finite subfamily has an intersection. -/
  have h_fin (I : Finset ι) : (⋂ i ∈ I, F i).Nonempty := by
    apply helly_theorem' (s := I) (𝕜 := 𝕜) (by simp [h_convex])
    exact fun J _ hJ_card ↦ h_inter J hJ_card
  /- The following is a clumsy proof that family of compact sets with the finite intersection
  property has a nonempty intersection. -/
  have i0 : ι := Nonempty.some h_nonempty
  rw [show ⋂ i, F i = (F i0) ∩ ⋂ i, F i by simp [iInter_subset]]
  apply IsCompact.inter_iInter_nonempty
  · exact h_compact i0
  · intro i
    exact (h_compact i).isClosed
  · intro I
    simpa using h_fin ({i0} ∪ I)

/-- **Helly's theorem** for families of compact convex sets in its classical form.

If `F` is a (possibly infinite) family of more than `d + 1` compact convex sets in a vector space of
finite dimension `d`, and any `d + 1` sets of `F` intersect nontrivially,
then all sets of `F` intersect nontrivially. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Radon/Variant840df004dbd217a369c5b293b5716aee158e7984758a463de62c6074726f9f80.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39f8584d22b685de4c38c088dc1fd6d7892b0bbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
