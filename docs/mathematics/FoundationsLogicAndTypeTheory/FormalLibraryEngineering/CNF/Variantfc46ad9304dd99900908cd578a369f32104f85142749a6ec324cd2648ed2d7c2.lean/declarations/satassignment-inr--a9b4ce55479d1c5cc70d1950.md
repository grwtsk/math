# satAssignment_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76c1c8241c3d94a1f8a2730d04846045dc7af272",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc46ad9304dd99900908cd578a369f32104f85142749a6ec324cd2648ed2d7c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb986f1d-fae9-e1c6-1efe-4952d086c386",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f45d1cff-82ac-669f-eaf0-7536a9264e18",
  "kind": "theorem",
  "lexical_name": "satAssignment_inr",
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
  "slug": "satassignment-inr--a9b4ce55479d1c5cc70d1950",
  "source": {
    "blob": "76c1c8241c3d94a1f8a2730d04846045dc7af272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantfc46ad9304dd99900908cd578a369f32104f85142749a6ec324cd2648ed2d7c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9b4ce55479d1c5cc70d1950d3f52d5ce6c76f6f1dda6bd85400a7d989a57fb0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantfc46ad9304dd99900908cd578a369f32104f85142749a6ec324cd2648ed2d7c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f45d1cff-82ac-669f-eaf0-7536a9264e18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem satAssignment_inr (h : x < aig.decls.size) :
    (cnfSatAssignment aig assign1) x = ⟦aig, ⟨x, false, h⟩, assign1⟧ := by
  simp [cnfSatAssignment, mixAssigns, h]

/--
The central invariant for the `Cache`.

Relate satisfiability results about our produced CNF to satisfiability results about the AIG that
we are processing. The intuition for this is: if a node is marked, its CNF is already part of the
current CNF. Thus the current CNF is already mirroring the semantics of the marked node.
This means that if the CNF is satisfiable at some assignment, we can evaluate the marked node under
the atom part of that assignment and will get the value that was assigned to the corresponding
auxiliary variable as a result.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantfc46ad9304dd99900908cd578a369f32104f85142749a6ec324cd2648ed2d7c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantfc46ad9304dd99900908cd578a369f32104f85142749a6ec324cd2648ed2d7c2.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76c1c8241c3d94a1f8a2730d04846045dc7af272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
