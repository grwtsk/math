# FinitaryPreExtensive.hasPullbacks_of_inclusions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0278830feaa14f5e25e62360725e469c6ab663f8292669d428aab5a9e1eab579",
  "kind": "instance",
  "lexical_name": "FinitaryPreExtensive.hasPullbacks_of_inclusions",
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
  "slug": "finitarypreextensive-haspullbacks-of-inclusions--9071ae7942641305f8264acb",
  "source": {
    "blob": "3197df08e8493f681622f9c40699ea7dbcf38828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 546,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9071ae7942641305f8264acbdf7144fce1545b334f74cb9cd4299ac31cd412be",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0278830feaa14f5e25e62360725e469c6ab663f8292669d428aab5a9e1eab579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance FinitaryPreExtensive.hasPullbacks_of_inclusions [FinitaryPreExtensive C] {X Z : C}
    {α : Type*} (f : X ⟶ Z) {Y : (a : α) → C} (i : (a : α) → Y a ⟶ Z) [Finite α]
    [hi : IsIso (Sigma.desc i)] (a : α) : HasPullback f (i a) := by
  apply FinitaryPreExtensive.hasPullbacks_of_is_coproduct (c := Cofan.mk Z i)
  exact @IsColimit.ofPointIso (t := Cofan.mk Z i) (P := _) (i := hi)

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3197df08e8493f681622f9c40699ea7dbcf38828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
