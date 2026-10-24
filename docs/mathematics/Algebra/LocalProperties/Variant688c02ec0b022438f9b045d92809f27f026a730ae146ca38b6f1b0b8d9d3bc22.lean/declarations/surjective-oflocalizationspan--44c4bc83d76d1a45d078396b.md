# surjective_ofLocalizationSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5047598-33c4-ff51-7fc1-c00ce7c8b008",
  "kind": "theorem",
  "lexical_name": "surjective_ofLocalizationSpan",
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
  "slug": "surjective-oflocalizationspan--44c4bc83d76d1a45d078396b",
  "source": {
    "blob": "dd589f84c8b04b906ff0fde13c94399eef57d916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 350,
    "path": "GRWTSK/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44c4bc83d76d1a45d078396ba360f9d9bc9a2d8fa96eb47b5af28b0a59cb5185",
  "verification": {
    "reference": "docs/verification/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5047598-33c4-ff51-7fc1-c00ce7c8b008`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_ofLocalizationSpan :
    RingHom.OfLocalizationSpan fun {R S} _ _ f => Function.Surjective f := by
  introv R e H
  rw [← Set.range_iff_surjective, Set.eq_univ_iff_forall]
  letI := f.toAlgebra
  intro x
  apply Submodule.mem_of_span_eq_top_of_smul_pow_mem
    (LinearMap.range (Algebra.linearMap R S)) s e
  intro r
  obtain ⟨a, e'⟩ := H r (algebraMap _ _ x)
  obtain ⟨b, ⟨_, n, rfl⟩, rfl⟩ := IsLocalization.mk'_surjective (Submonoid.powers (r : R)) a
  erw [IsLocalization.map_mk'] at e'
  rw [eq_comm, IsLocalization.eq_mk'_iff_mul_eq, Subtype.coe_mk, Subtype.coe_mk, ← map_mul] at e'
  obtain ⟨⟨_, n', rfl⟩, e''⟩ := (IsLocalization.eq_iff_exists (Submonoid.powers (f r)) _).mp e'
  dsimp only at e''
  rw [mul_comm x, ← mul_assoc, ← map_pow, ← map_mul, ← map_mul, ← pow_add] at e''
  exact ⟨n' + n, _, e''.symm⟩
#align surjective_of_localization_span surjective_ofLocalizationSpan

end Surjective

section Finite

/-- If `S` is a finite `R`-algebra, then `S' = M⁻¹S` is a finite `R' = M⁻¹R`-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd589f84c8b04b906ff0fde13c94399eef57d916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
