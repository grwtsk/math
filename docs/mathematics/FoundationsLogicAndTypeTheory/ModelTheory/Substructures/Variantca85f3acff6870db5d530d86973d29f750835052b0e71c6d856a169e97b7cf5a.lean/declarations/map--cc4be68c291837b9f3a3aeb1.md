# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c245c90edcb570a32d9e7e6488fe6b1aa25c21d7f332ef82a12ea783623b60c",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--cc4be68c291837b9f3a3aeb1",
  "source": {
    "blob": "d008e31817e100b80f8a87526c3410adcb0077c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 445,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Substructures/Variantca85f3acff6870db5d530d86973d29f750835052b0e71c6d856a169e97b7cf5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc4be68c291837b9f3a3aeb16473f5aac0ebdf9ceb79e150dc6f84a3cce0c11c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Substructures/Variantca85f3acff6870db5d530d86973d29f750835052b0e71c6d856a169e97b7cf5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c245c90edcb570a32d9e7e6488fe6b1aa25c21d7f332ef82a12ea783623b60c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map (φ : M →[L] N) (S : L.Substructure M) : L.Substructure N where
  carrier := φ '' S
  fun_mem {n} f x hx :=
    (mem_image _ _ _).1
      ⟨funMap f fun i => Classical.choose (hx i),
        S.fun_mem f _ fun i => (Classical.choose_spec (hx i)).1, by
        simp only [Hom.map_fun, SetLike.mem_coe]
        exact congr rfl (funext fun i => (Classical.choose_spec (hx i)).2)⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Substructures/Variantca85f3acff6870db5d530d86973d29f750835052b0e71c6d856a169e97b7cf5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Substructures/Variantca85f3acff6870db5d530d86973d29f750835052b0e71c6d856a169e97b7cf5a.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d008e31817e100b80f8a87526c3410adcb0077c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
