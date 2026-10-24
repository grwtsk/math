# HasGaussNorm.hasMvGaussNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fca2a40f2f6ffb41ab5a5e69bc3f4ff30df0a6aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55721a18-ae03-aeff-eb02-93d8a20affb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:484acade-3a0f-3269-6d0e-9d802ed80e88",
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
  "slug": "hasgaussnorm-hasmvgaussnorm--1f6816420b680063da0c9b87",
  "source": {
    "blob": "fca2a40f2f6ffb41ab5a5e69bc3f4ff30df0a6aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 65,
    "path": "GRWTSK/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f6816420b680063da0c9b878c5c9aa34e00b0873104a6308d8f03110688400a",
  "verification": {
    "reference": "docs/verification/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:484acade-3a0f-3269-6d0e-9d802ed80e88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–85.

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

[Verification target and public status](../../../../../verification/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fca2a40f2f6ffb41ab5a5e69bc3f4ff30df0a6aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
