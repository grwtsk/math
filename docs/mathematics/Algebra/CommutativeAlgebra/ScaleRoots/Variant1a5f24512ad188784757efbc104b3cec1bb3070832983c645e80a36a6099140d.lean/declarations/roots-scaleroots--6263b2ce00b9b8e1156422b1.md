# roots_scaleRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79afc27c3351833a16a37d00d3b67c633c9baf96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:637be6bc-e9c3-ee79-9367-769b1f73cc21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b4d3265-05a3-5aef-0adf-d92751a0e870",
  "kind": "lemma",
  "lexical_name": "roots_scaleRoots",
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
  "slug": "roots-scaleroots--6263b2ce00b9b8e1156422b1",
  "source": {
    "blob": "79afc27c3351833a16a37d00d3b67c633c9baf96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 350,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6263b2ce00b9b8e1156422b148bb73eca0fef7a9584eeec9921b10e6e0394c7d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b4d3265-05a3-5aef-0adf-d92751a0e870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma roots_scaleRoots [IsDomain R] (p : R[X]) {r : R} (hr : IsUnit r) :
    (p.scaleRoots r).roots = p.roots.map (r * ·) := by
  classical
  ext a
  have : Function.Bijective (α := R) (r * ·) := IsUnit.isUnit_iff_mulLeft_bijective.mp hr
  obtain ⟨a, rfl⟩ := this.2 a
  simp [Multiset.count_map_eq_count' _ p.roots this.1 a,
    rootMultiplicity_scaleRoots _ hr.isRegular.left]

end CommRing

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79afc27c3351833a16a37d00d3b67c633c9baf96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
