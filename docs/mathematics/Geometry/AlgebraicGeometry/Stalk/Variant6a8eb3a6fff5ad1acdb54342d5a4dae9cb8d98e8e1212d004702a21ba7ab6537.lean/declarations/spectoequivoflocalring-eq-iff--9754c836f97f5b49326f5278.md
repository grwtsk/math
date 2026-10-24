# SpecToEquivOfLocalRing_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1307d0ad9b756e7df37768281532fcc34ef67b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24067141-1e44-dbbd-0092-ae52e3bb6c6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c84782a-fbe6-5739-6b59-0f30dd540efb",
  "kind": "lemma",
  "lexical_name": "SpecToEquivOfLocalRing_eq_iff",
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
  "slug": "spectoequivoflocalring-eq-iff--9754c836f97f5b49326f5278",
  "source": {
    "blob": "f1307d0ad9b756e7df37768281532fcc34ef67b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 371,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9754c836f97f5b49326f52781e41d3865fd65ddcb1915e7c05bab4cc5b271807",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c84782a-fbe6-5739-6b59-0f30dd540efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SpecToEquivOfLocalRing_eq_iff
    {f₁ f₂ : Σ x, { f : X.presheaf.stalk x ⟶ R // IsLocalHom f.hom }} :
    f₁ = f₂ ↔ ∃ h₁ : f₁.1 = f₂.1, f₁.2.1 =
      (X.presheaf.stalkCongr (by rw [h₁]; rfl)).hom ≫ f₂.2.1 := by
  constructor
  · rintro rfl; simp
  · obtain ⟨x₁, ⟨f₁, h₁⟩⟩ := f₁
    obtain ⟨x₂, ⟨f₂, h₂⟩⟩ := f₂
    rintro ⟨rfl : x₁ = x₂, e : f₁ = _⟩
    simp [e]

variable (X R)

set_option backward.isDefEq.respectTransparency.types false in
/--
Given a local ring `R` and scheme `X`, morphisms `Spec R ⟶ X` corresponds to pairs
`(x, f)` where `x : X` and `f : 𝒪_{X, x} ⟶ R` is a local ring homomorphism.
-/
@[simps]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1307d0ad9b756e7df37768281532fcc34ef67b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
