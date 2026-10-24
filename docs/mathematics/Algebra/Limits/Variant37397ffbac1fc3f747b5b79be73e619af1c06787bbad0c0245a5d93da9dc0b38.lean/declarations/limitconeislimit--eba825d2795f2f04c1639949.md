# limitConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32ddeeeeae5b6c1c31d2e9bf022c89a2dc57c37b714a0f96e35f0b275bdac0af",
  "kind": "def",
  "lexical_name": "limitConeIsLimit",
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
  "slug": "limitconeislimit--eba825d2795f2f04c1639949",
  "source": {
    "blob": "a1123d13a527e3f18b324b58b76ce0a47cb9da95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 93,
    "path": "GRWTSK/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eba825d2795f2f04c1639949115613435036938a679830127e53e332a7f23567",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32ddeeeeae5b6c1c31d2e9bf022c89a2dc57c37b714a0f96e35f0b275bdac0af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitConeIsLimit (F : J ⥤ AlgebraCatMax.{v, w} R) : IsLimit (limitCone.{v, w} F) := by
  refine'
    IsLimit.ofFaithful (forget (AlgebraCat R)) (Types.limitConeIsLimit.{v, w} _)
      -- Porting note: in mathlib3 the function term
      -- `fun v => ⟨fun j => ((forget (AlgebraCat R)).mapCone s).π.app j v`
      -- was provided by unification, and the last argument `(fun s => _)` was `(fun s => rfl)`.
      (fun s => ⟨⟨⟨⟨fun v => ⟨fun j => ((forget (AlgebraCat R)).mapCone s).π.app j v, _⟩,
         _⟩, _⟩, _, _⟩, _⟩)
      (fun s => _)
  · intro j j' f
    exact FunLike.congr_fun (Cone.w s f) v
  · -- Porting note: we could add a custom `ext` lemma here.
    apply Subtype.ext
    ext j
    simp [forget_map_eq_coe, AlgHom.map_one, Functor.mapCone_π_app]
    rfl
  · intro x y
    apply Subtype.ext
    ext j
    simp [forget_map_eq_coe, AlgHom.map_mul, Functor.mapCone_π_app]
    rfl
  · simp [forget_map_eq_coe, AlgHom.map_zero, Functor.mapCone_π_app]
    rfl
  · intro x y
    simp [forget_map_eq_coe, AlgHom.map_add, Functor.mapCone_π_app]
    rfl
  · intro r
    apply Subtype.ext
    ext j
    exact (s.π.app j).commutes r
  · rfl
#align Algebra.has_limits.limit_cone_is_limit AlgebraCat.HasLimits.limitConeIsLimit

end HasLimits

open HasLimits

-- porting note: mathport translated this as `irreducible_def`, but as `HasLimitsOfSize`
-- is a `Prop`, declaring this as `irreducible` should presumably have no effect
/-- The category of R-algebras has all limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1123d13a527e3f18b324b58b76ce0a47cb9da95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
