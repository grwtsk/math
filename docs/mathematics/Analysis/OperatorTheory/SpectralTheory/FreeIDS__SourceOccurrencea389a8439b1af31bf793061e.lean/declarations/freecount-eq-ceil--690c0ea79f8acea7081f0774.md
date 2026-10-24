# freeCount_eq_ceil

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ced9772c-d533-f262-96a7-bcb8ecf33fef",
  "kind": "theorem",
  "lexical_name": "freeCount_eq_ceil",
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
  "slug": "freecount-eq-ceil--690c0ea79f8acea7081f0774",
  "source": {
    "blob": "c343a7fcc959f20cd8c08ab7e51fbbe269360adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 83,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:690c0ea79f8acea7081f0774e923028966295a4855ea25725add220031c5b5ac",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ced9772c-d533-f262-96a7-bcb8ecf33fef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem freeCount_eq_ceil (N : ℕ) (E : ℝ) :
    freeCount N E = N - (Nat.ceil (cutoff N E) - 1) := by
  rw [freeCount_eq_cosine_count]
  have he : (Finset.univ.filter (fun k : Fin N => eigenvalue N k ≤ E)) =
      Finset.univ.filter (fun k : Fin N => Nat.ceil (cutoff N E) ≤ k.val+1) := by
    ext k
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, eigenvalue_le_iff_cutoff]
    simpa only [Nat.cast_add, Nat.cast_one] using
      (Nat.ceil_le (a := cutoff N E) (n := k.val+1)).symm
  rw [he]
  have hq : Nat.ceil (cutoff N E)-1 ≤ N := by have := cutoff_ceil_le N E; omega
  have hn : (Finset.univ.filter (fun k : Fin N => ¬Nat.ceil (cutoff N E) ≤ k.val+1)) =
      Finset.univ.filter (fun k : Fin N => k.val < Nat.ceil (cutoff N E)-1) := by
    ext k
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    omega
  have h := Finset.card_filter_add_card_filter_not
    (s := Finset.univ) (fun k : Fin N => Nat.ceil (cutoff N E) ≤ k.val+1)
  rw [hn, card_small_indices N _ hq, Finset.card_univ, Fintype.card_fin] at h
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencea389a8439b1af31bf793061e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeIDS.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c343a7fcc959f20cd8c08ab7e51fbbe269360adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
