# LocalizedModule.subsingleton_iff_support_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6483ae43-2b4a-4725-fc9c-8d3ef85a8d52",
  "kind": "lemma",
  "lexical_name": "LocalizedModule.subsingleton_iff_support_subset",
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
  "slug": "localizedmodule-subsingleton-iff-support-subset--eab09bc1209903223f38e890",
  "source": {
    "blob": "d54a07787bb53fe79f7c8e83d87d549e314359ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eab09bc1209903223f38e890dd616895426cb35dfa8c889fa5c43f26dc5906ce",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6483ae43-2b4a-4725-fc9c-8d3ef85a8d52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LocalizedModule.subsingleton_iff_support_subset {f : R} :
    Subsingleton (LocalizedModule (.powers f) M) ↔
      Module.support R M ⊆ PrimeSpectrum.zeroLocus {f} := by
  rw [LocalizedModule.subsingleton_iff]
  constructor
  · rintro H x hx' f rfl
    obtain ⟨m, hm⟩ := Module.mem_support_iff_exists_annihilator.mp hx'
    obtain ⟨_, ⟨n, rfl⟩, e⟩ := H m
    exact Ideal.IsPrime.mem_of_pow_mem inferInstance n
      (hm ((Submodule.mem_annihilator_span_singleton _ _).mpr e))
  · intro H m
    by_cases h : (Submodule.span R {m}).annihilator = ⊤
    · rw [Submodule.annihilator_eq_top_iff, Submodule.span_singleton_eq_bot] at h
      exact ⟨1, one_mem _, by simpa using h⟩
    obtain ⟨n, hn⟩ : f ∈ (Submodule.span R {m}).annihilator.radical := by
      rw [Ideal.radical_eq_sInf, Ideal.mem_sInf]
      rintro p ⟨hp, hp'⟩
      simpa using H (Module.mem_support_iff_exists_annihilator (p := ⟨p, hp'⟩).mpr ⟨_, hp⟩)
    exact ⟨_, ⟨n, rfl⟩, (Submodule.mem_annihilator_span_singleton _ _).mp hn⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d54a07787bb53fe79f7c8e83d87d549e314359ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
