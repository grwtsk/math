# ContMDiffFiberwiseLinear.hasGroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a642b20ed7a90e1a192a27c99050273987725f1eea0c7857ce9fb23b85a51111",
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
  "slug": "contmdifffiberwiselinear-hasgroupoid--ae2d0eea07f7fe52a82a0637",
  "source": {
    "blob": "5b07b763caa8b753341a002288853ff79a8652d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 449,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae2d0eea07f7fe52a82a063799473d6f87db52c27469a3fd3a60fa0fd09c98ed",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a642b20ed7a90e1a192a27c99050273987725f1eea0c7857ce9fb23b85a51111`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ContMDiffFiberwiseLinear.hasGroupoid :
    HasGroupoid (TotalSpace F E) (contMDiffFiberwiseLinear B F IB n) where
  compatible := by
    rintro _ _ ⟨e, he, rfl⟩ ⟨e', he', rfl⟩
    haveI : MemTrivializationAtlas e := ⟨he⟩
    haveI : MemTrivializationAtlas e' := ⟨he'⟩
    rw [mem_contMDiffFiberwiseLinear_iff]
    refine ⟨_, _, e.open_baseSet.inter e'.open_baseSet, contMDiffOn_coordChangeL e e',
      contMDiffOn_symm_coordChangeL e e', ?_⟩
    refine PartialHomeomorph.eqOnSourceSetoid.symm ⟨?_, ?_⟩
    · simp only [e.symm_trans_source_eq e', FiberwiseLinear.partialHomeomorph, trans_toPartialEquiv,
        symm_toPartialEquiv]
    · rintro ⟨b, v⟩ hb
      exact (e.apply_symm_apply_eq_coordChangeL e' hb.1 v).symm

variable [IsManifold IB n B] in
/-- A `C^n` vector bundle `E` is naturally a `C^n` manifold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b07b763caa8b753341a002288853ff79a8652d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
