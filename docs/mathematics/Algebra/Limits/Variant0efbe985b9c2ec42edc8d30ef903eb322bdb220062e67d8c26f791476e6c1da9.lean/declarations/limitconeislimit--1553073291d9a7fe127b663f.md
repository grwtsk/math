# limitConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2dab6711c83e079574acf2679e9b7e450e0945a0c65725dd0b60ed9c28d9131",
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
  "slug": "limitconeislimit--1553073291d9a7fe127b663f",
  "source": {
    "blob": "38b8de2b341bf490197fef7d2e270fdb6bb1a79f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 101,
    "path": "GRWTSK/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1553073291d9a7fe127b663fccc1764b2399aafa66604b1339527604f755f7ad",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2dab6711c83e079574acf2679e9b7e450e0945a0c65725dd0b60ed9c28d9131`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–140.

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

[Verification target and public status](../../../../../verification/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b8de2b341bf490197fef7d2e270fdb6bb1a79f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
