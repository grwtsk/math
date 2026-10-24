# localizedModuleIsLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d99ceeb17dd58c69ff357221eca8c3d21645c481b399bf2dd09a858a30d848cc",
  "kind": "instance",
  "lexical_name": "localizedModuleIsLocalizedModule",
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
  "slug": "localizedmoduleislocalizedmodule--1663300de182302aab5bdd87",
  "source": {
    "blob": "dbf064901ad42b8834fea161f7e5440112815034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 688,
    "path": "GRWTSK/Algebra/LocalizedModule/Variant6b4858666484dc41fc5a2be5465c6d26ff636593d1e5644fef70b8a10e89a47c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1663300de182302aab5bdd878d69709d15731e697af782610d04f6ec703abbe2",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizedModule/Variant6b4858666484dc41fc5a2be5465c6d26ff636593d1e5644fef70b8a10e89a47c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d99ceeb17dd58c69ff357221eca8c3d21645c481b399bf2dd09a858a30d848cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 688–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance localizedModuleIsLocalizedModule : IsLocalizedModule S (LocalizedModule.mkLinearMap S M)
    where
  map_units s :=
    ⟨⟨algebraMap R (Module.End R (LocalizedModule S M)) s, LocalizedModule.divBy s,
        FunLike.ext _ _ <| LocalizedModule.mul_by_divBy s,
        FunLike.ext _ _ <| LocalizedModule.divBy_mul_by s⟩,
      FunLike.ext _ _ fun p =>
        p.inductionOn <| by
          intros
          rfl⟩
  surj' p :=
    p.inductionOn
      (by
        intro ⟨m, t⟩
        refine' ⟨⟨m, t⟩, _⟩
        erw [LocalizedModule.smul'_mk, LocalizedModule.mkLinearMap_apply, Submonoid.coe_subtype,
          LocalizedModule.mk_cancel t])
  eq_iff_exists' :=
    { mp := fun eq1 => by simpa only [eq_comm, one_smul] using LocalizedModule.mk_eq.mp eq1
      mpr := fun ⟨c, eq1⟩ =>
        LocalizedModule.mk_eq.mpr ⟨c, by simpa only [eq_comm, one_smul] using eq1⟩ }
#align localized_module_is_localized_module localizedModuleIsLocalizedModule

namespace IsLocalizedModule

variable [IsLocalizedModule S f]

/-- If `(M', f : M ⟶ M')` satisfies universal property of localized module, there is a canonical
map `LocalizedModule S M ⟶ M'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizedModule/Variant6b4858666484dc41fc5a2be5465c6d26ff636593d1e5644fef70b8a10e89a47c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizedModule/Variant6b4858666484dc41fc5a2be5465c6d26ff636593d1e5644fef70b8a10e89a47c.lean#L688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbf064901ad42b8834fea161f7e5440112815034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
