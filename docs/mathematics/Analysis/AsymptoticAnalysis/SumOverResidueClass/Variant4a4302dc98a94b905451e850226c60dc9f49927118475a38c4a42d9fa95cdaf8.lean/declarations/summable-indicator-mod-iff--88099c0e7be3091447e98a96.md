# summable_indicator_mod_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cb3c533-0157-084b-babc-7ff646582743",
  "kind": "lemma",
  "lexical_name": "summable_indicator_mod_iff",
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
  "slug": "summable-indicator-mod-iff--88099c0e7be3091447e98a96",
  "source": {
    "blob": "ae55974ed225be4f711c080c04ba7258b733e462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 99,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant4a4302dc98a94b905451e850226c60dc9f49927118475a38c4a42d9fa95cdaf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88099c0e7be3091447e98a969c0266b3c83c9977b9ab47ccefc37aafbddceef0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant4a4302dc98a94b905451e850226c60dc9f49927118475a38c4a42d9fa95cdaf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cb3c533-0157-084b-babc-7ff646582743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_indicator_mod_iff {m : ℕ} [NeZero m] {f : ℕ → ℝ} (hf : Antitone f) (k : ZMod m) :
    Summable ({n : ℕ | (n : ZMod m) = k}.indicator f) ↔ Summable f := by
  refine ⟨fun H ↦ ?_, fun H ↦ Summable.indicator H _⟩
  rw [Finset.sum_indicator_mod m f]
  convert!
    summable_sum (s := Finset.univ) fun a _ ↦
      summable_indicator_mod_iff_summable_indicator_mod hf a H
  simp only [Finset.sum_apply]

open ZMod

/-- If `f` is a summable function on `ℕ`, and `0 < N`, then we may compute `∑' n : ℕ, f n` by
summing each residue class mod `N` separately. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant4a4302dc98a94b905451e850226c60dc9f49927118475a38c4a42d9fa95cdaf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant4a4302dc98a94b905451e850226c60dc9f49927118475a38c4a42d9fa95cdaf8.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae55974ed225be4f711c080c04ba7258b733e462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
