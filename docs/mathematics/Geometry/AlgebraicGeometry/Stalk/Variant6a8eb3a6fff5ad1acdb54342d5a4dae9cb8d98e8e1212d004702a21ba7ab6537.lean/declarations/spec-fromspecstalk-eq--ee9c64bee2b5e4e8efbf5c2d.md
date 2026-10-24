# Spec.fromSpecStalk_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1307d0ad9b756e7df37768281532fcc34ef67b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea297717-6aba-41df-9fc0-620b79142b39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25224b9b-1e1f-2a24-3302-9c66256ca148",
  "kind": "lemma",
  "lexical_name": "Spec.fromSpecStalk_eq",
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
  "slug": "spec-fromspecstalk-eq--ee9c64bee2b5e4e8efbf5c2d",
  "source": {
    "blob": "f1307d0ad9b756e7df37768281532fcc34ef67b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 210,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee9c64bee2b5e4e8efbf5c2d18c9234721cc99b19425c1c921c822923770222d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25224b9b-1e1f-2a24-3302-9c66256ca148`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Spec.fromSpecStalk_eq :
    (Spec R).fromSpecStalk x =
      Spec.map ((Scheme.ΓSpecIso R).inv ≫ (Spec R).presheaf.germ ⊤ x trivial) := by
  rw [← (isAffineOpen_top (Spec R)).fromSpecStalk_eq_fromSpecStalk (x := x) trivial,
    IsAffineOpen.fromSpecStalk, IsAffineOpen.fromSpec_top, Scheme.isoSpec_Spec_inv,
    ← Spec.map_comp]

-- This is not a simp lemma to respect the abstraction boundaries
/-- A variant of `Spec.fromSpecStalk_eq` that breaks abstraction boundaries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant6a8eb3a6fff5ad1acdb54342d5a4dae9cb8d98e8e1212d004702a21ba7ab6537.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1307d0ad9b756e7df37768281532fcc34ef67b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
