# isGE_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3022f269-85ed-3700-20fc-ad09ab8d78ca",
  "kind": "lemma",
  "lexical_name": "isGE_shift",
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
  "slug": "isge-shift--ebad729ad8c489d802f7a33e",
  "source": {
    "blob": "1088f6d858e07df08db2ad27545e115645baf715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 335,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebad729ad8c489d802f7a33e2fd7711714d0e7f1250fab6c811c3cf1af4f98f4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3022f269-85ed-3700-20fc-ad09ab8d78ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isGE_shift (n : ℤ) [K.IsGE n] (a n' : ℤ) (h : a + n' = n) : (K⟦a⟧).IsGE n' := by
  rw [isGE_iff]
  intro i hi
  rw [exactAt_iff_isZero_homology]
  exact IsZero.of_iso (K.isZero_of_isGE n (a + i) (by omega))
    (((homologyFunctor C _ (0 : ℤ)).shiftIso a i _ rfl).app K)

end

end Preadditive

end CochainComplex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1088f6d858e07df08db2ad27545e115645baf715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
