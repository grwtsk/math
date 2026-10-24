# WithSeminorms.isVonNBounded_iff_seminorm_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0e22e58-f741-101b-7645-eb333ba78b39",
  "kind": "theorem",
  "lexical_name": "WithSeminorms.isVonNBounded_iff_seminorm_bounded",
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
  "slug": "withseminorms-isvonnbounded-iff-seminorm-bounded--e516271752e50b0463f354e5",
  "source": {
    "blob": "ba56343cf89d6a690c97c79be18555888ac929ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 555,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e516271752e50b0463f354e5c55dea18f2c86352bd550da434160b6c9d84891e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0e22e58-f741-101b-7645-eb333ba78b39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WithSeminorms.isVonNBounded_iff_seminorm_bounded {s : Set E} (hp : WithSeminorms p) :
    Bornology.IsVonNBounded 𝕜 s ↔ ∀ i : ι, ∃ r > 0, ∀ x ∈ s, p i x < r := by
  rw [hp.isVonNBounded_iff_finset_seminorm_bounded]
  constructor
  · intro hI i
    convert hI {i}
    rw [Finset.sup_singleton]
  intro hi I
  by_cases hI : I.Nonempty
  · choose r hr h using hi
    have h' : 0 < I.sup' hI r := by
      rcases hI.bex with ⟨i, hi⟩
      exact lt_of_lt_of_le (hr i) (Finset.le_sup' r hi)
    refine' ⟨I.sup' hI r, h', fun x hx => finset_sup_apply_lt h' fun i hi => _⟩
    refine' lt_of_lt_of_le (h i x hx) _
    simp only [Finset.le_sup'_iff, exists_prop]
    exact ⟨i, hi, (Eq.refl _).le⟩
  simp only [Finset.not_nonempty_iff_eq_empty.mp hI, Finset.sup_empty, coe_bot, Pi.zero_apply,
    exists_prop]
  exact ⟨1, zero_lt_one, fun _ _ => zero_lt_one⟩

set_option linter.uppercaseLean3 false in
#align with_seminorms.is_vonN_bounded_iff_seminorm_bounded WithSeminorms.isVonNBounded_iff_seminorm_bounded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba56343cf89d6a690c97c79be18555888ac929ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
