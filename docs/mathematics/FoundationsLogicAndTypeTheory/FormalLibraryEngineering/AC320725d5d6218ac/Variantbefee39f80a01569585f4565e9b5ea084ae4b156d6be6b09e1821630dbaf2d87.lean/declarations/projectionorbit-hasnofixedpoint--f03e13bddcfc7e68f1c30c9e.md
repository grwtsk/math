# projectionOrbit_hasNoFixedPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76f1f18c6e041df76551d86c8c431c54e124b8a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/befee39f80a01569585f4565e9b5ea084ae4b156d6be6b09e1821630dbaf2d87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5022c55c-482b-d3a0-ef53-3e9e9c5bc58c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a1fa3ac-c21c-9404-8e9f-2b7b401a35ef",
  "kind": "theorem",
  "lexical_name": "projectionOrbit_hasNoFixedPoint",
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
  "slug": "projectionorbit-hasnofixedpoint--f03e13bddcfc7e68f1c30c9e",
  "source": {
    "blob": "76f1f18c6e041df76551d86c8c431c54e124b8a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC320725d5d6218ac/Variantbefee39f80a01569585f4565e9b5ea084ae4b156d6be6b09e1821630dbaf2d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f03e13bddcfc7e68f1c30c9e45f11a6ff4e620c2ac1f8230e6b09b09225725a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC320725d5d6218ac/Variantbefee39f80a01569585f4565e9b5ea084ae4b156d6be6b09e1821630dbaf2d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a1fa3ac-c21c-9404-8e9f-2b7b401a35ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projectionOrbit_hasNoFixedPoint
    (base : MonoHierarchy hierarchy.Element)
    (nontrivial :
      ∃ moved,
        moved ∈ projectionOrbit base ∧ moved ≠ base) :
    OrbitHasNoFixedPoint (projectionOrbit base) := by
  rcases nontrivial with
    ⟨moved, ⟨movingAutomorphism, movingEquality⟩, movedNeBase⟩
  intro projection projectionMember
  rcases projectionMember with
    ⟨through, throughEquality⟩
  refine ⟨conjugateAut through movingAutomorphism, ?_⟩
  intro fixed
  have transportedMoved := fixed
  rw [← throughEquality] at transportedMoved
  rw [MonoHierarchy.transport_trans] at transportedMoved
  have conjugateEquivalence :
      through.1.trans (conjugateAut through movingAutomorphism).1 =
        movingAutomorphism.1.trans through.1 :=
    congrArg Subtype.val
      (conjugate_identity through movingAutomorphism)
  rw [conjugateEquivalence] at transportedMoved
  rw [← MonoHierarchy.transport_trans] at transportedMoved
  rw [movingEquality] at transportedMoved
  have movedEqualsBase :=
    MonoHierarchy.transport_injective through.1
      transportedMoved
  exact movedNeBase movedEqualsBase

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC320725d5d6218ac/Variantbefee39f80a01569585f4565e9b5ea084ae4b156d6be6b09e1821630dbaf2d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC320725d5d6218ac/Variantbefee39f80a01569585f4565e9b5ea084ae4b156d6be6b09e1821630dbaf2d87.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76f1f18c6e041df76551d86c8c431c54e124b8a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
