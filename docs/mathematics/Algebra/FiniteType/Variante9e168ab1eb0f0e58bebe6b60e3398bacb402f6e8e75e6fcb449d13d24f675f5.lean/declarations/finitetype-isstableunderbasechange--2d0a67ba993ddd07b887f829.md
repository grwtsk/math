# finiteType_isStableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d7c9f07-a7d9-18ea-abe9-aedcf8b35cad",
  "kind": "theorem",
  "lexical_name": "finiteType_isStableUnderBaseChange",
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
  "slug": "finitetype-isstableunderbasechange--2d0a67ba993ddd07b887f829",
  "source": {
    "blob": "33d47de7f57c2987ad48268ee7e8676784a838d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 244,
    "path": "GRWTSK/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d0a67ba993ddd07b887f829eb64285c77db267cb03bc3f2ea45ec76ba459088",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d7c9f07-a7d9-18ea-abe9-aedcf8b35cad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteType_isStableUnderBaseChange : IsStableUnderBaseChange @FiniteType := by
  apply IsStableUnderBaseChange.mk
  · exact finiteType_respectsIso
  · introv h
    replace h : Algebra.FiniteType R T := by
      rw [RingHom.FiniteType] at h; convert h; ext; simp_rw [Algebra.smul_def]; rfl
    suffices Algebra.FiniteType S (S ⊗[R] T) by
      rw [RingHom.FiniteType]; convert this; ext; simp_rw [Algebra.smul_def]; rfl
    infer_instance

end RingHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variante9e168ab1eb0f0e58bebe6b60e3398bacb402f6e8e75e6fcb449d13d24f675f5.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33d47de7f57c2987ad48268ee7e8676784a838d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
