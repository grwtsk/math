# complete_census_exact_zero_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c6637ad-f881-1da5-8de5-8f2f7b48e7d9",
  "kind": "theorem",
  "lexical_name": "complete_census_exact_zero_count",
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
  "slug": "complete-census-exact-zero-count--c3daeef216cc98beddc0976f",
  "source": {
    "blob": "b2204ae8d00905a3577523a52a736cea9cea12b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant1cf12b5f6a4c8719c2769f6bb0f5e52e698427eb4b71aa7fa7b2c6a78dfa941e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3daeef216cc98beddc0976f02e031809ca476ceff959c4154093bd60e06c12e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant1cf12b5f6a4c8719c2769f6bb0f5e52e698427eb4b71aa7fa7b2c6a78dfa941e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c6637ad-f881-1da5-8de5-8f2f7b48e7d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_census_exact_zero_count {n : ℕ} {g : ℝ × ℝ → ℝ} {l a b : ℝ}
    (z : Fin n → ℝ) (horder : StrictMono z) (hinside : ∀ i, z i ∈ Ioo a b)
    (hcensus : ∀ x ∈ Icc a b, g (l,x) = 0 ↔ ∃ i, z i = x) :
    {x | x ∈ Icc a b ∧ g (l,x) = 0}.ncard = n := by
  have hset : {x | x ∈ Icc a b ∧ g (l,x) = 0} = range z := by
    ext x
    constructor
    · rintro ⟨hx,hz⟩
      exact (hcensus x hx).1 hz
    · rintro ⟨i,rfl⟩
      have hx : z i ∈ Icc a b := ⟨(hinside i).1.le,(hinside i).2.le⟩
      exact ⟨hx,(hcensus _ hx).2 ⟨i,rfl⟩⟩
  rw [hset,ncard_range_of_injective horder.injective]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant1cf12b5f6a4c8719c2769f6bb0f5e52e698427eb4b71aa7fa7b2c6a78dfa941e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant1cf12b5f6a4c8719c2769f6bb0f5e52e698427eb4b71aa7fa7b2c6a78dfa941e.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2204ae8d00905a3577523a52a736cea9cea12b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
