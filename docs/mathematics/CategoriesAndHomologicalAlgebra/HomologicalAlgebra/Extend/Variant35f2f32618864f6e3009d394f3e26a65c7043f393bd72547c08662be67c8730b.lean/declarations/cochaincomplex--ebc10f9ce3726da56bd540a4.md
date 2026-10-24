# cochainComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f07221291e54c362508b7535f357e2197919c114cae0e72f201f2b7f4c1d27a",
  "kind": "def",
  "lexical_name": "cochainComplex",
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
  "slug": "cochaincomplex--ebc10f9ce3726da56bd540a4",
  "source": {
    "blob": "f979d5479560b22f48027cb170ba60e2fe1f4df7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant35f2f32618864f6e3009d394f3e26a65c7043f393bd72547c08662be67c8730b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebc10f9ce3726da56bd540a499ebde20aba628a1ab8177254ca4a852949f8330",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant35f2f32618864f6e3009d394f3e26a65c7043f393bd72547c08662be67c8730b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f07221291e54c362508b7535f357e2197919c114cae0e72f201f2b7f4c1d27a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cochainComplex : CochainComplex C ℤ :=
  R.complex.extend ComplexShape.embeddingDownNat

/-- If `R : ProjectiveResolution X`, then `R.cochainComplex.X n` (with `n : ℕ`)
is isomorphic to `R.complex.X k` (with `k : ℕ`) when `k = n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant35f2f32618864f6e3009d394f3e26a65c7043f393bd72547c08662be67c8730b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant35f2f32618864f6e3009d394f3e26a65c7043f393bd72547c08662be67c8730b.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f979d5479560b22f48027cb170ba60e2fe1f4df7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
