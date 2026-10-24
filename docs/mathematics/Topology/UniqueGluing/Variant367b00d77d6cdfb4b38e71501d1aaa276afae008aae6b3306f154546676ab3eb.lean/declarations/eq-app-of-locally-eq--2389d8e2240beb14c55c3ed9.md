# eq_app_of_locally_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61700fc6-dfe4-cf34-2ffc-e462c706a2d9",
  "kind": "theorem",
  "lexical_name": "eq_app_of_locally_eq",
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
  "slug": "eq-app-of-locally-eq--2389d8e2240beb14c55c3ed9",
  "source": {
    "blob": "0a450ecb9c3a077330b2a03bda875b8166dfed94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 260,
    "path": "GRWTSK/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2389d8e2240beb14c55c3ed9ebca4ec12d1ce66ae40f7b3971b8884fe6ddeb37",
  "verification": {
    "reference": "docs/verification/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61700fc6-dfe4-cf34-2ffc-e462c706a2d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_app_of_locally_eq {V : Opens X} {G : Sheaf C X} {f : F ⟶ G}
    {s : ToType (F.1.obj (op (iSup U)))} {t : ToType (G.1.obj (op V))}
    {sf : ∀ i : ι, ToType (F.1.obj (op (U i)))} (h : IsGluing F.1 U sf s) (hV : ∀ i : ι, U i ≤ V)
    (ht : ∀ i : ι, f.1.app (op (U i)) (sf i) = G.1.map (homOfLE (hV i)).op t) :
    f.hom.app (op (iSup U)) s = G.obj.map (homOfLE (by aesop_cat)).op t := by
  refine eq_of_locally_eq G U _ _ (fun _ ↦ ?_)
  rw [← NatTrans.naturality_apply, h, ht, ← ConcreteCategory.comp_apply, ← Functor.map_comp]
  rfl

end

end Sheaf

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a450ecb9c3a077330b2a03bda875b8166dfed94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
