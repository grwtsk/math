# ContMDiffFiberwiseLinear.hasGroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74e165b7ab226cda2d433c3d649926d6979b02f2374b22589719903d2751a1e3",
  "kind": "instance",
  "lexical_name": "ContMDiffFiberwiseLinear.hasGroupoid",
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
  "slug": "contmdifffiberwiselinear-hasgroupoid--ea08e3ae082f97b99c7e1338",
  "source": {
    "blob": "e47a08139e388c55db47130e9c2b51216bab3cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 458,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant09d8b274bb6be8f26a6b84a1e94163b0a5587fe9710c2aece4e4df1e220f9918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea08e3ae082f97b99c7e133823e7e0157df9e527ecfe1711ee318d5fc7f9bf80",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant09d8b274bb6be8f26a6b84a1e94163b0a5587fe9710c2aece4e4df1e220f9918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74e165b7ab226cda2d433c3d649926d6979b02f2374b22589719903d2751a1e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ContMDiffFiberwiseLinear.hasGroupoid :
    HasGroupoid (TotalSpace F E) (contMDiffFiberwiseLinear B F IB n) where
  compatible := by
    rintro _ _ ⟨e, he, rfl⟩ ⟨e', he', rfl⟩
    have : MemTrivializationAtlas e := ⟨he⟩
    have : MemTrivializationAtlas e' := ⟨he'⟩
    rw [mem_contMDiffFiberwiseLinear_iff]
    refine ⟨_, _, e.open_baseSet.inter e'.open_baseSet, contMDiffOn_coordChangeL e e',
      contMDiffOn_symm_coordChangeL e e', ?_⟩
    refine OpenPartialHomeomorph.eqOnSourceSetoid.symm ⟨?_, ?_⟩
    · simp only [FiberwiseLinear.openPartialHomeomorph, trans_toPartialEquiv, symm_toPartialEquiv,
        e.symm_trans_source_eq e']
    · rintro ⟨b, v⟩ hb
      exact (e.apply_symm_apply_eq_coordChangeL e' hb.1 v).symm

variable [IsManifold IB n B] in
/-- A `C^n` vector bundle `E` is naturally a `C^n` manifold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant09d8b274bb6be8f26a6b84a1e94163b0a5587fe9710c2aece4e4df1e220f9918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant09d8b274bb6be8f26a6b84a1e94163b0a5587fe9710c2aece4e4df1e220f9918.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e47a08139e388c55db47130e9c2b51216bab3cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
