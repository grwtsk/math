# exists_eq_pow_of_mul_eq_pow_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dab793a51b446a47f1e20f77b103db770df84a5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64c66bd5-6db6-e520-8f18-a917445939b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:584bcefb-9c0f-a870-3d5a-d285db6242c6",
  "kind": "theorem",
  "lexical_name": "exists_eq_pow_of_mul_eq_pow_of_coprime",
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
  "slug": "exists-eq-pow-of-mul-eq-pow-of-coprime--fd498d541abc7f4d2518d406",
  "source": {
    "blob": "dab793a51b446a47f1e20f77b103db770df84a5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd498d541abc7f4d2518d40618710e5d1089bba2ab478d85d36100106df6ee86",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:584bcefb-9c0f-a870-3d5a-d285db6242c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_pow_of_mul_eq_pow_of_coprime {R : Type*} [CommSemiring R] [IsDomain R]
    [GCDMonoid R] [Unique Rˣ] {a b c : R} {n : ℕ} (cp : IsCoprime a b) (h : a * b = c ^ n) :
    ∃ d : R, a = d ^ n := by
  refine' exists_eq_pow_of_mul_eq_pow (isUnit_of_dvd_one _) h
  obtain ⟨x, y, hxy⟩ := cp
  rw [← hxy]
  exact  -- porting note: added `GCDMonoid.` twice
    dvd_add (dvd_mul_of_dvd_right (GCDMonoid.gcd_dvd_left _ _) _)
      (dvd_mul_of_dvd_right (GCDMonoid.gcd_dvd_right _ _) _)
#align exists_eq_pow_of_mul_eq_pow_of_coprime exists_eq_pow_of_mul_eq_pow_of_coprime

nonrec
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dab793a51b446a47f1e20f77b103db770df84a5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
