# sigmaFinsuppEquivDFinsupp_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47dccd6e-2a30-176e-0934-8a8d7dbe344e",
  "kind": "theorem",
  "lexical_name": "sigmaFinsuppEquivDFinsupp_single",
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
  "slug": "sigmafinsuppequivdfinsupp-single--abc1ff1f1839138d012da39c",
  "source": {
    "blob": "bd90157cd3671a1a47359b051d855058a36bc713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 301,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abc1ff1f1839138d012da39c3ae3f7d15bfb7d61f1d117530fca871aa5e46776",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47dccd6e-2a30-176e-0934-8a8d7dbe344e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigmaFinsuppEquivDFinsupp_single [DecidableEq ι] [Zero N] (a : Σ i, η i) (n : N) :
    sigmaFinsuppEquivDFinsupp (Finsupp.single a n) =
      @DFinsupp.single _ (fun i => η i →₀ N) _ _ a.1 (Finsupp.single a.2 n) := by
  obtain ⟨i, a⟩ := a
  ext j b
  by_cases h : i = j
  · subst h
    classical simp [split_apply, Finsupp.single_apply]
  suffices Finsupp.single (⟨i, a⟩ : Σ i, η i) n ⟨j, b⟩ = 0 by
    simp [split_apply, dite_eq_right h, this]
  have H : (⟨i, a⟩ : Σ i, η i) ≠ ⟨j, b⟩ := by simp [h]
  classical rw [Finsupp.single_apply, ite_eq_right H]

-- Without this Lean fails to find the `AddZeroClass` instance on `Π₀ i, (η i →₀ N)`.
attribute [-instance] Finsupp.instZero

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variant0094c4fbb98e4a7af873c47ffdbea9354c0bcca1e6028957545c0bed473b1041.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd90157cd3671a1a47359b051d855058a36bc713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
