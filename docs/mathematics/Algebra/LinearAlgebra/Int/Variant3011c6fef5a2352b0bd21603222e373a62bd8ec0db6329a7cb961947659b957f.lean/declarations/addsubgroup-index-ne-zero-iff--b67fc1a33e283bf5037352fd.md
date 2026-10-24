# addSubgroup_index_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1f6417a-a4a3-f9c4-628f-4d4a2f85772c",
  "kind": "lemma",
  "lexical_name": "addSubgroup_index_ne_zero_iff",
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
  "slug": "addsubgroup-index-ne-zero-iff--b67fc1a33e283bf5037352fd",
  "source": {
    "blob": "e882ba034fc7dba42658522cc3ba0be85466f6fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 203,
    "path": "GRWTSK/Algebra/LinearAlgebra/Int/Variant3011c6fef5a2352b0bd21603222e373a62bd8ec0db6329a7cb961947659b957f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b67fc1a33e283bf5037352fda11421efe5eb0b45140c6d14f974dde1b0536cd2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Int/Variant3011c6fef5a2352b0bd21603222e373a62bd8ec0db6329a7cb961947659b957f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1f6417a-a4a3-f9c4-628f-4d4a2f85772c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addSubgroup_index_ne_zero_iff {H : AddSubgroup (ι → ℤ)} :
    H.index ≠ 0 ↔ Nonempty (H ≃+ (ι → ℤ)) := by
  convert! submodule_toAddSubgroup_index_ne_zero_iff (N := AddSubgroup.toIntSubmodule H) using 1
  exact ⟨fun ⟨e⟩ ↦ ⟨e.toIntLinearEquiv⟩, fun ⟨e⟩ ↦ ⟨e.toAddEquiv⟩⟩

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Int/Variant3011c6fef5a2352b0bd21603222e373a62bd8ec0db6329a7cb961947659b957f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Int/Variant3011c6fef5a2352b0bd21603222e373a62bd8ec0db6329a7cb961947659b957f.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e882ba034fc7dba42658522cc3ba0be85466f6fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
