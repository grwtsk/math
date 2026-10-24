# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6300a8014a048b04b46cbb10b67276843e976f4956d165e95ff6876ec4b2ba8b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--5c1a5f3d7a16a0a8fcddbdd6",
  "source": {
    "blob": "5c7a8276f2193a95f777db0f74e196882db2106c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantbc97120b9041587b3f55c991ae6551721d67d01db3b78234a77b2f0d24991c15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c1a5f3d7a16a0a8fcddbdd63a35b0df00a1f57aa24e747aeffc6fce330c2072",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantbc97120b9041587b3f55c991ae6551721d67d01db3b78234a77b2f0d24991c15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6300a8014a048b04b46cbb10b67276843e976f4956d165e95ff6876ec4b2ba8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsConnected J] {B : D} : PreservesLimitsOfShape J (CostructuredArrow.proj K B) where
  preservesLimit.preserves hc := ⟨{
    lift s := (CostructuredArrow.proj K B).map (hc.lift (CreatesConnected.raiseCone s))
    fac _ _ := by
      rw [Functor.mapCone_π_app, ← Functor.map_comp, hc.fac,
        CreatesConnected.raiseCone_π_app, CostructuredArrow.proj_map,
        CostructuredArrow.homMk_left _ _]
    uniq s m fac :=
      congrArg (CostructuredArrow.proj K B).map (hc.uniq (CreatesConnected.raiseCone s)
        (CostructuredArrow.homMk m (by simp [← fac])) fun j =>
          (CostructuredArrow.proj K B).map_injective (fac j))
  }⟩

/-- The over category has any connected limit which the original category has. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantbc97120b9041587b3f55c991ae6551721d67d01db3b78234a77b2f0d24991c15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantbc97120b9041587b3f55c991ae6551721d67d01db3b78234a77b2f0d24991c15.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7a8276f2193a95f777db0f74e196882db2106c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
