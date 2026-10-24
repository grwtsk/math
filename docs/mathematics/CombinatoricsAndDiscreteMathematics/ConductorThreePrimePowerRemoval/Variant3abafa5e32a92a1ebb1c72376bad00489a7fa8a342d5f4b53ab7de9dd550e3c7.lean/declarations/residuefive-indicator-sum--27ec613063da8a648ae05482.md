# residueFive_indicator_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:467154f6-4d60-3f05-6805-2893ab4c1927",
  "kind": "theorem",
  "lexical_name": "residueFive_indicator_sum",
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
  "slug": "residuefive-indicator-sum--27ec613063da8a648ae05482",
  "source": {
    "blob": "a367895522ce2e56082377c312e2024fb55800c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePrimePowerRemoval/Variant3abafa5e32a92a1ebb1c72376bad00489a7fa8a342d5f4b53ab7de9dd550e3c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27ec613063da8a648ae05482c3a0f734377782b737629385246d00f38d45e66d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePrimePowerRemoval/Variant3abafa5e32a92a1ebb1c72376bad00489a7fa8a342d5f4b53ab7de9dd550e3c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:467154f6-4d60-3f05-6805-2893ab4c1927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem residueFive_indicator_sum (x : ℕ) :
    (∑ p ∈ Nat.primesLE x,
      if IsResidueFivePrime p then (1 : ℤ) else 0) =
      (actualResidueFiveCount x : ℤ) := by
  rw [actualResidueFiveCount, Nat.count_eq_card_filter_range,
    Finset.sum_boole]
  norm_cast
  apply congrArg Finset.card
  ext p
  simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.mem_range]
  constructor
  · rintro ⟨⟨hpx, _⟩, hres⟩
    exact ⟨by omega, hres⟩
  · rintro ⟨hpx, hres⟩
    exact ⟨⟨by omega, hres.1⟩, hres⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePrimePowerRemoval/Variant3abafa5e32a92a1ebb1c72376bad00489a7fa8a342d5f4b53ab7de9dd550e3c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePrimePowerRemoval/Variant3abafa5e32a92a1ebb1c72376bad00489a7fa8a342d5f4b53ab7de9dd550e3c7.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a367895522ce2e56082377c312e2024fb55800c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
