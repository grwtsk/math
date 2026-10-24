# MultispanIndex.multispanMapIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa83ccdb49d9d4f14efb07999a1a64eff1220efeb71bae56ee338d58facc08ff",
  "kind": "def",
  "lexical_name": "MultispanIndex.multispanMapIso",
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
  "slug": "multispanindex-multispanmapiso--aa471741bfaf275d43d13a9c",
  "source": {
    "blob": "4d4c9f022211d72400b24784c6f3ea95f711350a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 113,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant417821705c9e00e760a2dc058d8dbaa43413cdfa6eb921faced123f0ccd6c4e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa471741bfaf275d43d13a9c8a9071df4bb1e50c886f8057f0247c99f9a573af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant417821705c9e00e760a2dc058d8dbaa43413cdfa6eb921faced123f0ccd6c4e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa83ccdb49d9d4f14efb07999a1a64eff1220efeb71bae56ee338d58facc08ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MultispanIndex.multispanMapIso : (d.map F).multispan ≅ d.multispan ⋙ F :=
  NatIso.ofComponents
    (fun i ↦ match i with
      | .left _ => Iso.refl _
      | .right _ => Iso.refl _)
    (by rintro _ _ (_ | _) <;> simp)

variable {d}

set_option backward.defeqAttrib.useBackward true in
/-- If `d : MultispanIndex J C`, `c : Multicofork d` and `F : C ⥤ D`,
this is the induced multicofork of `d.map F`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant417821705c9e00e760a2dc058d8dbaa43413cdfa6eb921faced123f0ccd6c4e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant417821705c9e00e760a2dc058d8dbaa43413cdfa6eb921faced123f0ccd6c4e4.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d4c9f022211d72400b24784c6f3ea95f711350a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
