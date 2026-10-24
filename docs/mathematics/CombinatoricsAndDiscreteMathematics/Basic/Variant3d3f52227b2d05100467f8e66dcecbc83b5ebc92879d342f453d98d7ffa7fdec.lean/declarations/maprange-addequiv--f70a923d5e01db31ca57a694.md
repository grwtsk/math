# mapRange.addEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2026d08a36b2ec9668786b918270af2dad5ce2ef7e2c2aa96753a85494dc20c",
  "kind": "def",
  "lexical_name": "mapRange.addEquiv",
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
  "slug": "maprange-addequiv--f70a923d5e01db31ca57a694",
  "source": {
    "blob": "e5b64bed42f59ef2e8765524b24d6104e6a0f7c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 248,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f70a923d5e01db31ca57a694675dddedc86481eea78fc1546c60cb2b3115a11a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2026d08a36b2ec9668786b918270af2dad5ce2ef7e2c2aa96753a85494dc20c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapRange.addEquiv (f : M ≃+ N) : (α →₀ M) ≃+ (α →₀ N) :=
  { mapRange.addMonoidHom f.toAddMonoidHom with
    toFun := (mapRange f f.map_zero : (α →₀ M) → α →₀ N)
    invFun := (mapRange f.symm f.symm.map_zero : (α →₀ N) → α →₀ M)
    left_inv := fun x => by
      rw [← mapRange_comp _ _ _ _] <;> simp_rw [AddEquiv.symm_comp_self]
      · exact mapRange_id _
      · rfl
    right_inv := fun x => by
      rw [← mapRange_comp _ _ _ _] <;> simp_rw [AddEquiv.self_comp_symm]
      · exact mapRange_id _
      · rfl }
#align finsupp.map_range.add_equiv Finsupp.mapRange.addEquiv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5b64bed42f59ef2e8765524b24d6104e6a0f7c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
