# homInfinitesimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d02bce63a5c680d31506299a7809ec91603ed5cdac2fc88c109ce57b163ada5",
  "kind": "def",
  "lexical_name": "homInfinitesimal",
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
  "slug": "hominfinitesimal--bcc538435aa828fcee40950a",
  "source": {
    "blob": "8496d5bf06be1bc55372ba850642e28cd2a8607f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 533,
    "path": "GRWTSK/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcc538435aa828fcee40950a426801d472587c14cc59b6cf575a28154b2266b4",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d02bce63a5c680d31506299a7809ec91603ed5cdac2fc88c109ce57b163ada5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homInfinitesimal (P₁ P₂ : Extension R S) [FormallySmooth R P₁.Ring] :
    P₁.infinitesimal.Hom P₂.infinitesimal :=
  letI lift : P₁.Ring →ₐ[R] P₂.infinitesimal.Ring := FormallySmooth.liftOfSurjective
    (IsScalarTower.toAlgHom R P₁.Ring S)
    (IsScalarTower.toAlgHom R P₂.infinitesimal.Ring S)
    P₂.infinitesimal.algebraMap_surjective
    ⟨2, show P₂.infinitesimal.ker ^ 2 = ⊥ by
      rw [ker_infinitesimal]; exact Ideal.cotangentIdeal_square _⟩
  { toRingHom := (Ideal.Quotient.liftₐ (P₁.ker ^ 2) lift (by
        show P₁.ker ^ 2 ≤ RingHom.ker lift
        rw [pow_two, Ideal.mul_le]
        have : ∀ r ∈ P₁.ker, lift r ∈ P₂.infinitesimal.ker :=
          fun r hr ↦ (FormallySmooth.liftOfSurjective_apply _
            (IsScalarTower.toAlgHom R P₂.infinitesimal.Ring S) _ _ r).trans hr
        intro r hr s hs
        rw [RingHom.mem_ker, map_mul, ← Ideal.mem_bot, ← P₂.ker.cotangentIdeal_square,
          ← ker_infinitesimal, pow_two]
        exact Ideal.mul_mem_mul (this r hr) (this s hs))).toRingHom
    toRingHom_algebraMap := by simp
    algebraMap_toRingHom x := by
      obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
      exact FormallySmooth.liftOfSurjective_apply _
            (IsScalarTower.toAlgHom R P₂.infinitesimal.Ring S) _ _ x }

/-- Formally smooth extensions have isomorphic `H¹(L_P)`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8496d5bf06be1bc55372ba850642e28cd2a8607f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
