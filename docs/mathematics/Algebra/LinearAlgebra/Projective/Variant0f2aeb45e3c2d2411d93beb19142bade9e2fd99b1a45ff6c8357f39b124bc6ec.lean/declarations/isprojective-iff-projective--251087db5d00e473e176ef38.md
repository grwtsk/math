# IsProjective.iff_projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca180855-4008-0b53-886f-4a43ff555041",
  "kind": "theorem",
  "lexical_name": "IsProjective.iff_projective",
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
  "slug": "isprojective-iff-projective--251087db5d00e473e176ef38",
  "source": {
    "blob": "b75bc748bfa7aae9043af58b7479c8c977d90ae4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 28,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:251087db5d00e473e176ef38c0832df7a9c20b2bb7f8507269f352facea6ac11",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca180855-4008-0b53-886f-4a43ff555041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsProjective.iff_projective {R : Type u} [Ring R] {P : Type max u v} [AddCommGroup P]
    [Module R P] : Module.Projective R P ↔ Projective (ModuleCat.of R P) := by
  refine ⟨fun h => ?_, fun h => ?_⟩
  · letI : Module.Projective R (ModuleCat.of R P) := h
    refine ⟨fun E X epi => ?_⟩
    obtain ⟨f, h⟩ := Module.projective_lifting_property X.hom E.hom
      ((ModuleCat.epi_iff_surjective _).mp epi)
    exact ⟨ofHom f, hom_ext h⟩
  · refine Module.Projective.of_lifting_property.{u,v} ?_
    intro E X mE mX sE sX f g s
    haveI : Epi (↟f) := (ModuleCat.epi_iff_surjective (↟f)).mpr s
    letI : Projective (ModuleCat.of R P) := h
    exact ⟨(Projective.factorThru (↟g) (↟f)).hom,
      ModuleCat.hom_ext_iff.mp <| Projective.factorThru_comp (↟g) (↟f)⟩

namespace ModuleCat

variable {R : Type u} [Ring R] {M : ModuleCat.{v} R}

-- We transport the corresponding result from `Module.Projective`.
/-- Modules that have a basis are projective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variant0f2aeb45e3c2d2411d93beb19142bade9e2fd99b1a45ff6c8357f39b124bc6ec.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b75bc748bfa7aae9043af58b7479c8c977d90ae4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
