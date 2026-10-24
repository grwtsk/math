# freeDirichlet_mulVec_of_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66ff92c9-6d51-2e30-0912-9636e940a475",
  "kind": "theorem",
  "lexical_name": "freeDirichlet_mulVec_of_boundary",
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
  "slug": "freedirichlet-mulvec-of-boundary--058ed931657cd807479c20e2",
  "source": {
    "blob": "bc3e996eb210b7f07723e8bbf74109850c19d158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 47,
    "path": "GRWTSK/Spectral/FreeDirichletSpectrum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:058ed931657cd807479c20e21b559b2e96f6b0e4486bb9b95373e4d1d3159ebd",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66ff92c9-6d51-2e30-0912-9636e940a475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem freeDirichlet_mulVec_of_boundary (N : ℕ) (g : ℕ → ℝ)
    (hleft : g 0 = 0) (hright : g (N+1) = 0) (i : Fin N) :
    (freeDirichlet N *ᵥ (fun j => g (j.val+1))) i = g (i.val+2) + g i.val := by
  have hrow (j : Fin N) : freeDirichlet N i j * g (j.val+1) =
      (if i.val+1 = j.val then g (j.val+1) else 0) +
        (if j.val+1 = i.val then g (j.val+1) else 0) := by
    by_cases h1 : i.val+1 = j.val <;> by_cases h2 : j.val+1 = i.val
    · omega
    · simp [freeDirichlet, h1, h2]
    · simp [freeDirichlet, h1, h2]
    · simp [freeDirichlet, h1, h2]
  simp only [mulVec, dotProduct, hrow, Finset.sum_add_distrib]
  have hnext : (∑ j : Fin N, if i.val+1 = j.val then g (j.val+1) else 0) =
      g (i.val+2) := by
    by_cases hi : i.val+1 < N
    · let j : Fin N := ⟨i.val+1,hi⟩
      rw [Finset.sum_eq_single j]
      · simp [j, Nat.add_assoc]
      · intro k _ hkj
        have hn : i.val+1 ≠ k.val := by
          intro he
          apply hkj
          exact Fin.ext he.symm
        simp [hn]
      · simp
    · have he : i.val+2 = N+1 := by omega
      rw [he, hright]
      apply Finset.sum_eq_zero
      intro j _
      have hj : i.val+1 ≠ j.val := by omega
      simp [hj]
  have hprev : (∑ j : Fin N, if j.val+1 = i.val then g (j.val+1) else 0) = g i.val := by
    by_cases hi : 0 < i.val
    · let j : Fin N := ⟨i.val-1,by omega⟩
      have hj : j.val+1 = i.val := by dsimp [j]; omega
      rw [Finset.sum_eq_single j]
      · simp [hj]
      · intro k _ hkj
        have hn : k.val+1 ≠ i.val := by
          intro he
          apply hkj
          apply Fin.ext
          dsimp [j]
          omega
        simp [hn]
      · simp
    · have he : i.val = 0 := by omega
      rw [he, hleft]
      simp
  rw [hnext, hprev]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/FreeDirichletSpectrum.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc3e996eb210b7f07723e8bbf74109850c19d158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
