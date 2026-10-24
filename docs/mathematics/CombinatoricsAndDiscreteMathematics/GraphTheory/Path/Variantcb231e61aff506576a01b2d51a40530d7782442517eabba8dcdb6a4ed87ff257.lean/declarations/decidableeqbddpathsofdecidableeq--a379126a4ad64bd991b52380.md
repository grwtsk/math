# decidableEqBddPathsOfDecidableEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2439c3cfacf5abc7274d514d449b9738c1bb0f92a9bc5a1a557f891ea4514dc",
  "kind": "def",
  "lexical_name": "decidableEqBddPathsOfDecidableEq",
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
  "slug": "decidableeqbddpathsofdecidableeq--a379126a4ad64bd991b52380",
  "source": {
    "blob": "8715831abe0a66215bbc4c85cfe4930ff7f04085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 274,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a379126a4ad64bd991b52380537eb54d3cfce64ed7a6f30827cbeeeb48c82a3c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2439c3cfacf5abc7274d514d449b9738c1bb0f92a9bc5a1a557f891ea4514dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decidableEqBddPathsOfDecidableEq (n : ℕ) (h₁ : DecidableEq V)
    (h₂ : ∀ (v w : V), DecidableEq (v ⟶ w)) (h₃ : ∀ (v w : V), DecidableEq (BoundedPaths v w n))
    (v w : V) : DecidableEq (BoundedPaths v w (n + 1)) :=
  fun ⟨p, hp⟩ ⟨q, hq⟩ =>
    match v, w, p, q with
    | _, _, .nil, .nil => isTrue rfl
    | _, _, .nil, .cons _ _
    | _, _, .cons _ _, .nil =>
      isFalse fun h => Quiver.Path.noConfusion rfl .rfl .rfl .rfl (heq_of_eq (Subtype.mk.inj h))
    | _, _, .cons (b := v') p' α, .cons (b := v'') q' β =>
      match v', v'', h₁ v' v'' with
      | _, _, isTrue (Eq.refl _) =>
        if h : α = β then
          have hp' : p'.length ≤ n := by simp [Quiver.Path.length] at hp; lia
          have hq' : q'.length ≤ n := by simp [Quiver.Path.length] at hq; lia
          if h'' : (⟨p', hp'⟩ : BoundedPaths _ _ n) = ⟨q', hq'⟩ then
            isTrue <| by
              apply Subtype.ext
              dsimp
              rw [h, show p' = q' from Subtype.mk.inj h'']
          else
            isFalse fun h =>
              h'' <| Subtype.ext <| eq_of_heq <| (Quiver.Path.cons.inj <| Subtype.mk.inj h).2.1
        else
          isFalse fun h' =>
            h <| eq_of_heq (Quiver.Path.cons.inj <| Subtype.mk.inj h').2.2
      | _, _, isFalse h => isFalse fun h' =>
        h (Quiver.Path.cons.inj <| Subtype.mk.inj h').1

/-- Equality is decidable on all uniformly bounded paths given decidable
equality on the vertices and the arrows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8715831abe0a66215bbc4c85cfe4930ff7f04085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
