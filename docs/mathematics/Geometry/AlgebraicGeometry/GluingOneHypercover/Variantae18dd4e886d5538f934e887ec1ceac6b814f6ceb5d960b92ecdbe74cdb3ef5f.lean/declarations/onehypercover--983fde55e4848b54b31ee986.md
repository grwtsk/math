# oneHypercover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd75c8d4faa93779687037d91caf7219b57a5a578101619bfb44451b9c7d6e10",
  "kind": "def",
  "lexical_name": "oneHypercover",
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
  "slug": "onehypercover--983fde55e4848b54b31ee986",
  "source": {
    "blob": "e716cc97086c7bbfb4e9dd4094744ebaae436b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 46,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/GluingOneHypercover/Variantae18dd4e886d5538f934e887ec1ceac6b814f6ceb5d960b92ecdbe74cdb3ef5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:983fde55e4848b54b31ee986af2b6896b153247691d9238580ecdb7bed5a78f1",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/GluingOneHypercover/Variantae18dd4e886d5538f934e887ec1ceac6b814f6ceb5d960b92ecdbe74cdb3ef5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd75c8d4faa93779687037d91caf7219b57a5a578101619bfb44451b9c7d6e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def oneHypercover : Scheme.zariskiTopology.OneHypercover D.glued where
  I₀ := D.J
  X := D.U
  f := D.ι
  I₁ _ _ := PUnit
  Y i₁ i₂ _ := D.V (i₁, i₂)
  p₁ i₁ i₂ _ := D.f i₁ i₂
  p₂ i₁ i₂ _ := D.t i₁ i₂ ≫ D.f i₂ i₁
  w i₁ i₂ _ := by simp only [Category.assoc, Scheme.GlueData.glue_condition]
  mem₀ := by
    refine zariskiTopology.superset_covering ?_ (grothendieckTopology_cover D.openCover)
    rw [Sieve.generate_le_iff]
    rintro W _ ⟨i⟩
    exact ⟨_, 𝟙 _, _, ⟨i⟩, by simp; rfl⟩
  mem₁ i₁ i₂ W p₁ p₂ fac := by
    refine zariskiTopology.superset_covering (fun T g _ ↦ ?_) (zariskiTopology.top_mem _)
    have ⟨φ, h₁, h₂⟩ := PullbackCone.IsLimit.lift' (D.vPullbackConeIsLimit i₁ i₂)
      (g ≫ p₁) (g ≫ p₂) (by simpa using g ≫= fac)
    exact ⟨⟨⟩, φ, h₁.symm, h₂.symm⟩

section

variable {F : Sheaf Scheme.zariskiTopology (Type v)}
  (s : ∀ (j : D.J), F.val.obj (op (D.U j)))
  (h : ∀ (i j : D.J), F.val.map (D.f i j).op (s i) =
    F.val.map ((D.f j i).op ≫ (D.t i j).op) (s j))

/-- Constructor for sections over `D.glued` of a sheaf of types on the big Zariski site. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/GluingOneHypercover/Variantae18dd4e886d5538f934e887ec1ceac6b814f6ceb5d960b92ecdbe74cdb3ef5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/GluingOneHypercover/Variantae18dd4e886d5538f934e887ec1ceac6b814f6ceb5d960b92ecdbe74cdb3ef5f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e716cc97086c7bbfb4e9dd4094744ebaae436b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
