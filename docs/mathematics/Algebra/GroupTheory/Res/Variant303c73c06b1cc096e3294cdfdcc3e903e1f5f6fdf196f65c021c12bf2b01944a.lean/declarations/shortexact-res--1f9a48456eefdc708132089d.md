# shortExact_res

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a44eba2-a977-41e3-63db-2bc16b6f4e0e",
  "kind": "lemma",
  "lexical_name": "shortExact_res",
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
  "slug": "shortexact-res--1f9a48456eefdc708132089d",
  "source": {
    "blob": "d127b7b83dbc004ab27e68c31c71f9145a8fe76e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 129,
    "path": "GRWTSK/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f9a48456eefdc708132089dc31cd2b584d936973662552fc11e5366d4ce7871",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a44eba2-a977-41e3-63db-2bc16b6f4e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shortExact_res {k : Type u} [CommRing k] (φ : H →* G) {S : ShortComplex (Rep.{w} k G)} :
    (S.map (resFunctor φ)).ShortExact ↔ S.ShortExact := by
  constructor
  · intro h
    have h₁ := h.1
    have h₂ := h.2
    have h₃ := h.3
    rw [ShortComplex.exact_map_iff_of_faithful] at h₁
    simp only [ShortComplex.map_f, mono_iff_injective, ShortComplex.map_g,
      epi_iff_surjective] at h₂ h₃
    exact {exact := h₁, mono_f := mono_iff_injective _|>.2 h₂, epi_g := epi_iff_surjective _|>.2 h₃}
  · rintro @⟨_, mono_f, epi_g⟩
    exact {
      exact := by rwa [ShortComplex.exact_map_iff_of_faithful]
      mono_f := by simpa [mono_iff_injective] using! mono_f
      epi_g := by simpa [epi_iff_surjective] using! epi_g
    }

end ShortComplex

noncomputable section

variable {G : Type v} [Group G] (A : Rep k G) (S : Subgroup G)
  [S.Normal] [Representation.IsTrivial (A.ρ.comp S.subtype)]

/-- Given a normal subgroup `S ≤ G`, a `G`-representation `ρ` which is trivial on `S` factors
through `G ⧸ S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d127b7b83dbc004ab27e68c31c71f9145a8fe76e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
