# reindex_isTotallyUnimodular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a076ecc-001d-5d30-ba5c-5fcff7dee0ea",
  "kind": "lemma",
  "lexical_name": "reindex_isTotallyUnimodular",
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
  "slug": "reindex-istotallyunimodular--954382e41dd6258320129731",
  "source": {
    "blob": "edbb330699d54c3c8b3591f3bfb895b242d49929",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 108,
    "path": "GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variantc265daa5afafd300559c2b226459d10bf661f855bc4b6801aff1f97a6cc39e42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:954382e41dd6258320129731de24eac2e5a8059a5817b230075c437eaa02e199",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TotallyUnimodular/Variantc265daa5afafd300559c2b226459d10bf661f855bc4b6801aff1f97a6cc39e42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a076ecc-001d-5d30-ba5c-5fcff7dee0ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reindex_isTotallyUnimodular (A : Matrix m n R) (em : m ≃ m') (en : n ≃ n') :
    (A.reindex em en).IsTotallyUnimodular ↔ A.IsTotallyUnimodular :=
  ⟨fun hA => by simpa [Equiv.symm_apply_eq] using hA.reindex em.symm en.symm,
   fun hA => hA.reindex _ _⟩

/-- If `A` has no rows, then it is totally unimodular. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TotallyUnimodular/Variantc265daa5afafd300559c2b226459d10bf661f855bc4b6801aff1f97a6cc39e42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variantc265daa5afafd300559c2b226459d10bf661f855bc4b6801aff1f97a6cc39e42.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edbb330699d54c3c8b3591f3bfb895b242d49929` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
