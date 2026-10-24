# xNextIsoSelf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad6b183e9d985bc3a87866bef459a50b52e0a6926e95455dc00b86a8572bf024",
  "kind": "def",
  "lexical_name": "xNextIsoSelf",
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
  "slug": "xnextisoself--39bad8ffc3be48d24b42b365",
  "source": {
    "blob": "70658d9a9b3f5e64111061af412a4d68ed9d8c64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 436,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant07099c4bca11ee23458f9e6866bd3fef61d15ea229a84189f69c63fd02d41eb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39bad8ffc3be48d24b42b365bffd4491b2de84a9e39eac4ed3cb3e01f5d17280",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant07099c4bca11ee23458f9e6866bd3fef61d15ea229a84189f69c63fd02d41eb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad6b183e9d985bc3a87866bef459a50b52e0a6926e95455dc00b86a8572bf024`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def xNextIsoSelf {i : ι} (h : ¬c.Rel i (c.next i)) : C.xNext i ≅ C.X i :=
  eqToIso <|
    congr_arg C.X
      (by
        dsimp [ComplexShape.next]
        rw [dif_neg]; rintro ⟨j, hj⟩
        have : c.next i = j := c.next_eq' hj
        rw [this] at h; contradiction)
set_option linter.uppercaseLean3 false in
#align homological_complex.X_next_iso_self HomologicalComplex.xNextIsoSelf

/-- The differential mapping into `C.X j`, or zero if there isn't one.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant07099c4bca11ee23458f9e6866bd3fef61d15ea229a84189f69c63fd02d41eb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant07099c4bca11ee23458f9e6866bd3fef61d15ea229a84189f69c63fd02d41eb0.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70658d9a9b3f5e64111061af412a4d68ed9d8c64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
