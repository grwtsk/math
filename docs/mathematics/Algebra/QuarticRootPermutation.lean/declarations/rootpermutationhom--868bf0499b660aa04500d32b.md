# rootPermutationHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95f665f9a4599dfd036d0e58c353e7ae57f57c4ce9f3e7cdd55adb93d208cede",
  "kind": "def",
  "lexical_name": "rootPermutationHom",
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
  "slug": "rootpermutationhom--868bf0499b660aa04500d32b",
  "source": {
    "blob": "05d06e83f90b1ba2e3a1d6160db9a7ae2971cd9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 58,
    "path": "GRWTSK/Algebra/QuarticRootPermutation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:868bf0499b660aa04500d32bc518e724ebd2903e50cadcf98e0dceb112c0db8b",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticRootPermutation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95f665f9a4599dfd036d0e58c353e7ae57f57c4ce9f3e7cdd55adb93d208cede`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rootPermutationHom (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (he : Function.Injective e.r)
    (hp : AllAutomorphismsPreserveRoots p e) :
    (L ≃ₐ[K] L) →* Equiv.Perm (Fin 4) where
  toFun := rootPerm p e he hp
  map_one' := by
    apply root_permutation_unique p e he 1
    · intro i
      exact rootPerm_spec p e he hp 1 i
    · intro i
      simp
  map_mul' φ ψ := by
    apply root_permutation_unique p e he (φ * ψ)
    · intro i
      exact rootPerm_spec p e he hp (φ * ψ) i
    · intro i
      change e.r (rootPerm p e he hp φ (rootPerm p e he hp ψ i)) =
        (φ * ψ) (e.r i)
      rw [rootPerm_spec, rootPerm_spec]
      rfl

end
end GRWTSK.Algebra.QuarticRootPermutation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticRootPermutation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticRootPermutation.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05d06e83f90b1ba2e3a1d6160db9a7ae2971cd9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
