# deleteEdges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26ce6a4688800a858df3b8a22e4296c1f5fe82abfac22984f89e7d0b7fe9fa08",
  "kind": "def",
  "lexical_name": "deleteEdges",
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
  "slug": "deleteedges--074b540b041b76bdd9785c49",
  "source": {
    "blob": "f5f48428026a4aee1d8be803f47375107f485522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variantcea2efb70469109d0af205b8e15f5ef70376a1f0503251fff95f24fbbb40ab60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:074b540b041b76bdd9785c497e8c4ef433193be23331ee84a6ee599fb3630988",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Delete/Variantcea2efb70469109d0af205b8e15f5ef70376a1f0503251fff95f24fbbb40ab60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26ce6a4688800a858df3b8a22e4296c1f5fe82abfac22984f89e7d0b7fe9fa08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deleteEdges (G : Graph α β) (F : Set β) : Graph α β :=
  (G.restrict (E(G) \ F)).copy (edgeSet := E(G) \ F)
  (IsLink := fun e x y ↦ G.IsLink e x y ∧ e ∉ F) rfl (by simp)
  (fun e x y ↦ by
    simp only [restrict_isLink, mem_sdiff, and_comm, and_congr_left_iff, and_iff_left_iff_imp]
    exact fun h _ ↦ h.edge_mem)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Delete/Variantcea2efb70469109d0af205b8e15f5ef70376a1f0503251fff95f24fbbb40ab60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variantcea2efb70469109d0af205b8e15f5ef70376a1f0503251fff95f24fbbb40ab60.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5f48428026a4aee1d8be803f47375107f485522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
