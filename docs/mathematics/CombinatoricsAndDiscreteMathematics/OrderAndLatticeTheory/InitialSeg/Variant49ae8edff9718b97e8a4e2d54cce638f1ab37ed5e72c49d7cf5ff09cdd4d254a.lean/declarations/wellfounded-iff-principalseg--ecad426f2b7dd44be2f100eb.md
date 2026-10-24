# wellFounded_iff_principalSeg.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d62edd21d31297e6aad3320891f3d7936016321",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49ae8edff9718b97e8a4e2d54cce638f1ab37ed5e72c49d7cf5ff09cdd4d254a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdaec138-d8dd-04cd-90a8-dd9de40cac28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcfaa892-78b7-cb9d-7d11-cca543bdf5c4",
  "kind": "theorem",
  "lexical_name": "wellFounded_iff_principalSeg.",
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
  "slug": "wellfounded-iff-principalseg--ecad426f2b7dd44be2f100eb",
  "source": {
    "blob": "0d62edd21d31297e6aad3320891f3d7936016321",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 462,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant49ae8edff9718b97e8a4e2d54cce638f1ab37ed5e72c49d7cf5ff09cdd4d254a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecad426f2b7dd44be2f100ebc5df8a9b86266afea6a1b52bd075c9bdd3906aa1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant49ae8edff9718b97e8a4e2d54cce638f1ab37ed5e72c49d7cf5ff09cdd4d254a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcfaa892-78b7-cb9d-7d11-cca543bdf5c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellFounded_iff_principalSeg.{u} {β : Type u} {s : β → β → Prop} [IsTrans β s] :
    WellFounded s ↔ ∀ (α : Type u) (r : α → α → Prop) (_ : r ≺i s), WellFounded r :=
  ⟨fun wf _ _ f => RelHomClass.wellFounded f.toRelEmbedding wf, fun h =>
    wellFounded_iff_wellFounded_subrel.mpr fun b => h _ _ (PrincipalSeg.ofElement s b)⟩

/-! ### Properties of initial and principal segments -/


namespace InitialSeg

open Classical in
/-- Every initial segment embedding into a well order can be turned into an isomorphism if
surjective, or into a principal segment embedding if not. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant49ae8edff9718b97e8a4e2d54cce638f1ab37ed5e72c49d7cf5ff09cdd4d254a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant49ae8edff9718b97e8a4e2d54cce638f1ab37ed5e72c49d7cf5ff09cdd4d254a.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d62edd21d31297e6aad3320891f3d7936016321` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
