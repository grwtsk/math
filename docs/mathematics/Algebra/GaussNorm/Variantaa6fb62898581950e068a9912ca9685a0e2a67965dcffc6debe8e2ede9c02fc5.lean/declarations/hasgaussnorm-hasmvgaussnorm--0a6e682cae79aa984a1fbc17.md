# HasGaussNorm.hasMvGaussNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcd4891e-1035-7758-c3fd-ead824c2ac33",
  "kind": "lemma",
  "lexical_name": "HasGaussNorm.hasMvGaussNorm",
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
  "slug": "hasgaussnorm-hasmvgaussnorm--0a6e682cae79aa984a1fbc17",
  "source": {
    "blob": "817e101e2bed044009efc4c775792d843cbb6919",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 73,
    "path": "GRWTSK/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a6e682cae79aa984a1fbc1707d012a808f9b8165e33348210f87b92f9478a21",
  "verification": {
    "reference": "docs/verification/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcd4891e-1035-7758-c3fd-ead824c2ac33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasGaussNorm.hasMvGaussNorm (h : HasGaussNorm v c f) :
    MvPowerSeries.HasGaussNorm v (fun _ ↦ c) f := by
  suffices (Set.range (fun (t : ℕ) ↦ (v (coeff t f) * c ^ t))) =
      Set.range fun t ↦ v ((MvPowerSeries.coeff t) f) * t.prod fun _ x2 ↦ c ^ x2 by
    simpa only [MvPowerSeries.HasGaussNorm, ← this]
  refine Set.ext (fun _ ↦ ?_)
  simp only [Set.mem_range, Finsupp.prod_pow, Finset.univ_unique, PUnit.default_eq_unit,
    Finset.prod_singleton]
  constructor
  · intro h
    obtain ⟨y, hy⟩ := h
    use (Finsupp.uniqueEquiv ()).symm y
    simpa [coeff] using hy
  · intro h
    obtain ⟨y, hy⟩ := h
    use Finsupp.uniqueEquiv () y
    simpa [coeff, show (Finsupp.single () (y PUnit.unit)) = y by grind]

@[deprecated (since := "2026-05-06")]
alias HasGaussNorm.HasMvGaussNorm := HasGaussNorm.hasMvGaussNorm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussNorm/Variantaa6fb62898581950e068a9912ca9685a0e2a67965dcffc6debe8e2ede9c02fc5.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `817e101e2bed044009efc4c775792d843cbb6919` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
