# AddCommMonoid.zmodModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d41a7afeb4be282f6f4d9623fc1536394086df8712cf6aee2bc2004764bc687",
  "kind": "abbrev",
  "lexical_name": "AddCommMonoid.zmodModule",
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
  "slug": "addcommmonoid-zmodmodule--558788ca82cbdd44a007e348",
  "source": {
    "blob": "621c1839659f897b266be27ff683c198250bb426",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 29,
    "path": "GRWTSK/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:558788ca82cbdd44a007e3483a09b4d5cb7e6e4150d35a5a37714588f7e11788",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d41a7afeb4be282f6f4d9623fc1536394086df8712cf6aee2bc2004764bc687`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev AddCommMonoid.zmodModule [NeZero n] [AddCommMonoid M] (h : ∀ (x : M), n • x = 0) :
    Module (ZMod n) M := by
  have h_mod (c : ℕ) (x : M) : (c % n) • x = c • x := by
    suffices (c % n + c / n * n) • x = c • x by rwa [add_nsmul, mul_nsmul, h, add_zero] at this
    rw [Nat.mod_add_div']
  have := NeZero.ne n
  match n with
  | n + 1 => exact {
    smul := fun (c : Fin _) x ↦ c.val • x
    smul_zero := fun _ ↦ nsmul_zero _
    zero_smul := fun _ ↦ zero_nsmul _
    smul_add := fun _ _ _ ↦ nsmul_add _ _ _
    one_smul := fun _ ↦ (h_mod _ _).trans <| one_nsmul _
    add_smul := fun _ _ _ ↦ (h_mod _ _).trans <| add_nsmul _ _ _
    mul_smul := fun _ _ _ ↦ (h_mod _ _).trans <| mul_nsmul' _ _ _
  }

/-- The `ZMod n`-module structure on Abelian groups whose elements have order dividing `n`.
See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `621c1839659f897b266be27ff683c198250bb426` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
