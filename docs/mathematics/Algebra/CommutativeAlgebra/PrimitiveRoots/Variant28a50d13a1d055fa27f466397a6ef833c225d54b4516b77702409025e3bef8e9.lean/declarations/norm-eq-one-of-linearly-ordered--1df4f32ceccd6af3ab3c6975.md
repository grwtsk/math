# norm_eq_one_of_linearly_ordered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1560a04efc6897413f45a9477aecffa5cc80e3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e943326b-a003-32b8-e698-8b94abd4eb4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cd60e4b-d336-3fc3-70c1-1ae568c613b3",
  "kind": "theorem",
  "lexical_name": "norm_eq_one_of_linearly_ordered",
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
  "slug": "norm-eq-one-of-linearly-ordered--1df4f32ceccd6af3ab3c6975",
  "source": {
    "blob": "c1560a04efc6897413f45a9477aecffa5cc80e3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 232,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1df4f32ceccd6af3ab3c6975e576a32987505f8b6bc79560d80025308f06761e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cd60e4b-d336-3fc3-70c1-1ae568c613b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_one_of_linearly_ordered {K : Type*} [LinearOrderedField K] [Algebra K L]
    (hodd : Odd (n : ℕ)) : norm K ζ = 1 := by
  have hz := congr_arg (norm K) ((IsPrimitiveRoot.iff_def _ n).1 hζ).1
  rw [← (algebraMap K L).map_one, Algebra.norm_algebraMap, one_pow, map_pow, ← one_pow ↑n] at hz
  exact StrictMono.injective hodd.strictMono_pow hz
#align is_primitive_root.norm_eq_one_of_linearly_ordered IsPrimitiveRoot.norm_eq_one_of_linearly_ordered

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1560a04efc6897413f45a9477aecffa5cc80e3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
