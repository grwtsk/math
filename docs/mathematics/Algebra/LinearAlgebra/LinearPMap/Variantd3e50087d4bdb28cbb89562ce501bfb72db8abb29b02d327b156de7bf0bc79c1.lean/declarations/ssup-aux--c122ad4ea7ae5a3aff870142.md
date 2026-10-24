# sSup_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb182f960c90a7cf5298af980866d49165201cc9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 609,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3e50087d4bdb28cbb89562ce501bfb72db8abb29b02d327b156de7bf0bc79c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22a50d6e-9d98-2f0b-9d45-9732b1f3a3a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8b1877b-e074-52ba-be28-809c2442ba62",
  "kind": "theorem",
  "lexical_name": "sSup_aux",
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
  "slug": "ssup-aux--c122ad4ea7ae5a3aff870142",
  "source": {
    "blob": "bb182f960c90a7cf5298af980866d49165201cc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 643,
    "line": 609,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantd3e50087d4bdb28cbb89562ce501bfb72db8abb29b02d327b156de7bf0bc79c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c122ad4ea7ae5a3aff8701422343434f6d41c89daf1f8befd9de36caf877d1b2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Variantd3e50087d4bdb28cbb89562ce501bfb72db8abb29b02d327b156de7bf0bc79c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8b1877b-e074-52ba-be28-809c2442ba62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–643.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sSup_aux (c : Set (E →ₗ.[R] F)) (hc : DirectedOn (· ≤ ·) c) :
    ∃ f : ↥(sSup (domain '' c)) →ₗ[R] F, (⟨_, f⟩ : E →ₗ.[R] F) ∈ upperBounds c := by
  cases' c.eq_empty_or_nonempty with ceq cne
  · subst c
    simp
  have hdir : DirectedOn (· ≤ ·) (domain '' c) :=
    directedOn_image.2 (hc.mono @(domain_mono.monotone))
  have P : ∀ x : ↥(sSup (domain '' c)), { p : c // (x : E) ∈ p.val.domain } := by
    rintro x
    apply Classical.indefiniteDescription
    have := (mem_sSup_of_directed (cne.image _) hdir).1 x.2
    -- Porting note: + `← bex_def`
    rwa [bex_image_iff, ← bex_def, SetCoe.exists'] at this
  set f : ↥(sSup (domain '' c)) → F := fun x => (P x).val.val ⟨x, (P x).property⟩
  have f_eq : ∀ (p : c) (x : ↥(sSup (domain '' c))) (y : p.1.1) (_hxy : (x : E) = y),
      f x = p.1 y := by
    intro p x y hxy
    rcases hc (P x).1.1 (P x).1.2 p.1 p.2 with ⟨q, _hqc, hxq, hpq⟩
    -- Porting note: `refine' ..; exacts [ofLe hpq.1 y, hxy, rfl]`
    --               → `refine' .. <;> [skip; exact ofLe hpq.1 y; rfl]; exact hxy`
    refine' (hxq.2 _).trans (hpq.2 _).symm <;> [skip; exact ofLe hpq.1 y; rfl]; exact hxy
  refine' ⟨{ toFun := f.. }, _⟩
  · intro x y
    rcases hc (P x).1.1 (P x).1.2 (P y).1.1 (P y).1.2 with ⟨p, hpc, hpx, hpy⟩
    set x' := ofLe hpx.1 ⟨x, (P x).2⟩
    set y' := ofLe hpy.1 ⟨y, (P y).2⟩
    rw [f_eq ⟨p, hpc⟩ x x' rfl, f_eq ⟨p, hpc⟩ y y' rfl, f_eq ⟨p, hpc⟩ (x + y) (x' + y') rfl,
      map_add]
  · intro c x
    -- Porting note: `simp [..]` to `simp only [..]`, or timeouts.
    simp only [f_eq (P x).1 (c • x) (c • ⟨x, (P x).2⟩) rfl, ← map_smul, RingHom.id_apply]
  · intro p hpc
    refine' ⟨le_sSup <| mem_image_of_mem domain hpc, fun x y hxy => Eq.symm _⟩
    exact f_eq ⟨p, hpc⟩ _ _ hxy.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Variantd3e50087d4bdb28cbb89562ce501bfb72db8abb29b02d327b156de7bf0bc79c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantd3e50087d4bdb28cbb89562ce501bfb72db8abb29b02d327b156de7bf0bc79c1.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb182f960c90a7cf5298af980866d49165201cc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
