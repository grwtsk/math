# quotAdjoinRootEquivQuotPolynomialQuot_symm_mk_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6806900c2cb830aedd789f923b0b87923dec737",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1055,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3ffedd7-79b6-8eeb-0d56-76f0b141cf5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d755308-346b-b1a0-c34e-fce33b91e63b",
  "kind": "theorem",
  "lexical_name": "quotAdjoinRootEquivQuotPolynomialQuot_symm_mk_mk",
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
  "slug": "quotadjoinrootequivquotpolynomialquot-symm-mk-mk--354ec5ae190eac551b53d76e",
  "source": {
    "blob": "a6806900c2cb830aedd789f923b0b87923dec737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1068,
    "line": 1055,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:354ec5ae190eac551b53d76e00d046c896abe5b42c6ad767213c378eac675f68",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d755308-346b-b1a0-c34e-fce33b91e63b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1055–1068.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotAdjoinRootEquivQuotPolynomialQuot_symm_mk_mk (p : R[X]) :
    (quotAdjoinRootEquivQuotPolynomialQuot I f).symm
        (Ideal.Quotient.mk (span ({f.map (Ideal.Quotient.mk I)} : Set (R ⧸ I)[X]))
        (p.map (Ideal.Quotient.mk I))) =
      Ideal.Quotient.mk (I.map (of f)) (mk f p) := by
  rw [quotAdjoinRootEquivQuotPolynomialQuot, RingEquiv.symm_trans_apply,
    RingEquiv.symm_trans_apply, RingEquiv.symm_trans_apply, RingEquiv.symm_symm,
    Polynomial.quotQuotEquivComm_mk, Ideal.quotEquivOfEq_symm, Ideal.quotEquivOfEq_mk, ←
    RingHom.comp_apply, ← DoubleQuot.quotQuotMk,
    quotMapCMapSpanMkEquivQuotMapCQuotMapMk_symm_quotQuotMk,
    quotMapOfEquivQuotMapCMapMk_symm_mk]

/-- Promote `AdjoinRoot.quotAdjoinRootEquivQuotPolynomialQuot` to an `AlgEquiv`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean#L1055).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6806900c2cb830aedd789f923b0b87923dec737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
