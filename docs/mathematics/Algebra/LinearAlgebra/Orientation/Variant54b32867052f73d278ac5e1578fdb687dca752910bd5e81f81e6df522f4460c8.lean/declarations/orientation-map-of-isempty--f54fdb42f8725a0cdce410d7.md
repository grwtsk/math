# Orientation.map_of_isEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89f59d58598e1eb4370b0302d636466258404412",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/54b32867052f73d278ac5e1578fdb687dca752910bd5e81f81e6df522f4460c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:144666a3-e624-f827-f226-bdd14aec8d79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5964336-cd36-de88-996b-ceac54a62656",
  "kind": "theorem",
  "lexical_name": "Orientation.map_of_isEmpty",
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
  "slug": "orientation-map-of-isempty--f54fdb42f8725a0cdce410d7",
  "source": {
    "blob": "89f59d58598e1eb4370b0302d636466258404412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variant54b32867052f73d278ac5e1578fdb687dca752910bd5e81f81e6df522f4460c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f54fdb42f8725a0cdce410d7a00b4f2fa451b2f7ec0c05648df009594769c881",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orientation/Variant54b32867052f73d278ac5e1578fdb687dca752910bd5e81f81e6df522f4460c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5964336-cd36-de88-996b-ceac54a62656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Orientation.map_of_isEmpty [IsEmpty ι] (x : Orientation R M ι) (f : M ≃ₗ[R] M) :
    Orientation.map ι f x = x := by
  induction' x using Module.Ray.ind with g hg
  rw [Orientation.map_apply]
  congr
  ext i
  rw [AlternatingMap.compLinearMap_apply]
  congr
  simp only [LinearEquiv.coe_coe, eq_iff_true_of_subsingleton]
#align orientation.map_of_is_empty Orientation.map_of_isEmpty

end OrderedCommSemiring

section OrderedCommRing

variable {R : Type*} [StrictOrderedCommRing R]

variable {M N : Type*} [AddCommGroup M] [AddCommGroup N] [Module R M] [Module R N]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orientation/Variant54b32867052f73d278ac5e1578fdb687dca752910bd5e81f81e6df522f4460c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orientation/Variant54b32867052f73d278ac5e1578fdb687dca752910bd5e81f81e6df522f4460c8.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f59d58598e1eb4370b0302d636466258404412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
