# Scheme.IsGermInjective.Spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ea1da853c6efcb2335716ec01896185c7721e4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab049cf5-7663-2f78-7f62-aae5b818a3d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11421328-7abb-f754-32b9-deeab46ce411",
  "kind": "lemma",
  "lexical_name": "Scheme.IsGermInjective.Spec",
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
  "slug": "scheme-isgerminjective-spec--685b61732dc0e59c20a8c088",
  "source": {
    "blob": "5ea1da853c6efcb2335716ec01896185c7721e4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 128,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:685b61732dc0e59c20a8c088a867f5f0b9fd32b46b716ba39fe0a1366d4e772e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11421328-7abb-f754-32b9-deeab46ce411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.IsGermInjective.Spec
    (H : ∀ I : Ideal R, I.IsPrime →
      ∃ f : R, f ∉ I ∧ ∀ (x y : R), y * x = 0 → y ∉ I → ∃ n, f ^ n * x = 0) :
    (Spec R).IsGermInjective := by
  refine fun p ↦ ⟨?_⟩
  obtain ⟨f, hf, H⟩ := H p.asIdeal p.2
  refine ⟨PrimeSpectrum.basicOpen f, hf, ?_, ?_⟩
  · rw [← basicOpen_eq_of_affine]
    exact (isAffineOpen_top (Spec R)).basicOpen _
  rw [RingHom.injective_iff_ker_eq_bot, RingHom.ker_eq_bot_iff_eq_zero]
  intro x hx
  obtain ⟨x, s, rfl⟩ := IsLocalization.mk'_surjective
    (S := ((Spec.structureSheaf R).val.obj (.op <| PrimeSpectrum.basicOpen f))) (.powers f) x
  rw [← RingHom.mem_ker, IsLocalization.mk'_eq_mul_mk'_one, Ideal.mul_unit_mem_iff_mem,
    RingHom.mem_ker, RingHom.algebraMap_toAlgebra] at hx
  swap; · exact @isUnit_of_invertible _ _ _ (@IsLocalization.invertible_mk'_one ..)
  -- There is an `Opposite.unop (Opposite.op _)` in `hx` which doesn't seem removable using
  -- `simp`/`rw`.
  erw [StructureSheaf.germ_toOpen] at hx
  obtain ⟨⟨y, hy⟩, hy'⟩ := (IsLocalization.map_eq_zero_iff p.asIdeal.primeCompl
    ((Spec.structureSheaf R).presheaf.stalk p) _).mp hx
  obtain ⟨n, hn⟩ := H x y hy' hy
  refine (@IsLocalization.mk'_eq_zero_iff ..).mpr ?_
  exact ⟨⟨_, n, rfl⟩, hn⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea1da853c6efcb2335716ec01896185c7721e4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
