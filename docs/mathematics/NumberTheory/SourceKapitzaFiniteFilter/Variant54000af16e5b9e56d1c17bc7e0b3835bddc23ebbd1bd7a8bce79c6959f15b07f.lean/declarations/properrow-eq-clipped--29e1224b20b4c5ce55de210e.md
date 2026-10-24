# properRow_eq_clipped

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18fcfa6e-c890-3026-02f0-0dc33a838c7b",
  "kind": "theorem",
  "lexical_name": "properRow_eq_clipped",
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
  "slug": "properrow-eq-clipped--29e1224b20b4c5ce55de210e",
  "source": {
    "blob": "465e59296192cb9b3d4a93180454e888fcbd1803",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 344,
    "path": "GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29e1224b20b4c5ce55de210eca5c33352746ecec914a5063f1da9e8a74bc4d1f",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18fcfa6e-c890-3026-02f0-0dc33a838c7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properRow_eq_clipped (v : ℕ → ℝ) (N d : ℕ) (hd : 0 < d)
    (hv : ∀ n, N < n → v n = 0) :
    properRow v N d = ∑ m ∈ Finset.Icc 2 (N / d),
      if Nat.Coprime m 6 then v (d * m) else 0 := by
  classical
  symm
  apply Finset.sum_subset
  · intro m hm
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1,
      (Finset.mem_Icc.mp hm).2.trans (Nat.div_le_self N d)⟩
  · intro m hm hmn
    have hlarge : N < d * m := by
      have hm2 := (Finset.mem_Icc.mp hm).1
      have hdiv : ¬m ≤ N / d := by
        intro h
        exact hmn (Finset.mem_Icc.mpr ⟨hm2, h⟩)
      have hmul : ¬m * d ≤ N := fun h => hdiv ((Nat.le_div_iff_mul_le hd).mpr h)
      simpa only [mul_comm] using lt_of_not_ge hmul
    split_ifs
    · exact hv _ hlarge
    · rfl

end

end FormalResearch.RiemannHypothesis.SourceKapitzaFiniteFilter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465e59296192cb9b3d4a93180454e888fcbd1803` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
