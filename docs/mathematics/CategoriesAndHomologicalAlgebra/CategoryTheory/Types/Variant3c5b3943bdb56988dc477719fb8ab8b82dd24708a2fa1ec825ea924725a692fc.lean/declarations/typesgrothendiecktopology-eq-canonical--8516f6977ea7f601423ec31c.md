# typesGrothendieckTopology_eq_canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fad5254-77c8-81f3-3da2-bd9590db450c",
  "kind": "theorem",
  "lexical_name": "typesGrothendieckTopology_eq_canonical",
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
  "slug": "typesgrothendiecktopology-eq-canonical--8516f6977ea7f601423ec31c",
  "source": {
    "blob": "7b1f8bdf7b124450a0ec0fac56303e6d3882c2b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8516f6977ea7f601423ec31c7cbe334b15cbddb7fcc24a88a57c1675ba0c991f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fad5254-77c8-81f3-3da2-bd9590db450c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typesGrothendieckTopology_eq_canonical :
    typesGrothendieckTopology.{u} = Sheaf.canonicalTopology (Type u) := by
  refine le_antisymm typesGrothendieckTopology.le_canonical (sInf_le ?_)
  refine ⟨yoneda.obj (ULift Bool), ⟨_, rfl⟩, GrothendieckTopology.ext ?_⟩
  funext α
  ext S
  refine ⟨fun hs x => ?_, fun hs β f => Presieve.isSheaf_yoneda' _ fun y => hs _⟩
  by_contra hsx
  have : (fun _ => ULift.up true) = fun _ => ULift.up false :=
    (hs PUnit fun _ => x).isSeparatedFor.ext
      fun β f hf => funext fun y => hsx.elim <| S.2 hf fun _ => y
  simp [funext_iff] at this

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b1f8bdf7b124450a0ec0fac56303e6d3882c2b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
