# ExtremallyDisconnected.homeoCompactToT2_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ef74f11877004731dc8c1a4097909f24c497add",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02b937e6-3d96-6160-5097-d27f06af2ea0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3771b1b6-d0f6-ce20-5443-ef0da3af8e28",
  "kind": "lemma",
  "lexical_name": "ExtremallyDisconnected.homeoCompactToT2_injective",
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
  "slug": "extremallydisconnected-homeocompacttot2-injective--13de0dd9110f51f15be9e0c5",
  "source": {
    "blob": "2ef74f11877004731dc8c1a4097909f24c497add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13de0dd9110f51f15be9e0c5e73b00dc6ba73c777055f512ed211013fdecdbdb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3771b1b6-d0f6-ce20-5443-ef0da3af8e28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma ExtremallyDisconnected.homeoCompactToT2_injective [ExtremallyDisconnected A]
    [T2Space A] [T2Space E] [CompactSpace E] {ρ : E → A} (ρ_cont : Continuous ρ)
    (ρ_surj : ρ.Surjective) (zorn_subset : ∀ E₀ : Set E, E₀ ≠ univ → IsClosed E₀ → ρ '' E₀ ≠ univ) :
    ρ.Injective := by
  -- let $x_1, x_2 \in E$ be distinct points such that $\rho(x_1) = \rho(x_2)$
  intro x₁ x₂ hρx
  by_contra hx
  -- let $G_1$ and $G_2$ be disjoint open neighbourhoods of $x_1$ and $x_2$ respectively
  rcases t2_separation hx with ⟨G₁, G₂, G₁_open, G₂_open, hx₁, hx₂, disj⟩
  -- prove $A \setminus \rho(E - G_1)$ and $A \setminus \rho(E - G_2)$ are disjoint
  have G₁_comp : IsCompact G₁ᶜ := IsClosed.isCompact G₁_open.isClosed_compl
  have G₂_comp : IsCompact G₂ᶜ := IsClosed.isCompact G₂_open.isClosed_compl
  have G₁_open' : IsOpen (ρ '' G₁ᶜ)ᶜ := (G₁_comp.image ρ_cont).isClosed.isOpen_compl
  have G₂_open' : IsOpen (ρ '' G₂ᶜ)ᶜ := (G₂_comp.image ρ_cont).isClosed.isOpen_compl
  have disj' : Disjoint (ρ '' G₁ᶜ)ᶜ (ρ '' G₂ᶜ)ᶜ := by
    rw [disjoint_iff_inter_eq_empty, ← compl_union, ← image_union, ← compl_inter,
      disjoint_iff_inter_eq_empty.mp disj, compl_empty, compl_empty_iff,
      image_univ_of_surjective ρ_surj]
  -- apply Lemma 2.2 to prove their closures are disjoint
  have disj'' : Disjoint (closure (ρ '' G₁ᶜ)ᶜ) (closure (ρ '' G₂ᶜ)ᶜ) :=
    disjoint_closure_of_disjoint_IsOpen disj' G₁_open' G₂_open'
  -- apply Lemma 2.1 to prove $\rho(x_1) = \rho(x_2)$ lies in their intersection
  have hx₁' := image_subset_closure_compl_image_compl_of_isOpen ρ_cont ρ_surj zorn_subset G₁_open <|
    mem_image_of_mem ρ hx₁
  have hx₂' := image_subset_closure_compl_image_compl_of_isOpen ρ_cont ρ_surj zorn_subset G₂_open <|
    mem_image_of_mem ρ hx₂
  exact disj''.ne_of_mem hx₁' hx₂' hρx

/-- Lemma 2.3 in [Gleason, *Projective topological spaces*][gleason1958]:
a continuous surjection from a compact Hausdorff space to an extremally disconnected Hausdorff space
satisfying the "Zorn subset condition" is a homeomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef74f11877004731dc8c1a4097909f24c497add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
