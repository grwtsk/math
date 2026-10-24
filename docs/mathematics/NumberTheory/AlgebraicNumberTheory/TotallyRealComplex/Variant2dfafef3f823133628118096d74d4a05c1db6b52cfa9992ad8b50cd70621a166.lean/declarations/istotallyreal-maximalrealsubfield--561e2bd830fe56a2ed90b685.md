# isTotallyReal_maximalRealSubfield

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27aac4af50c94873562cae79046e891b33367af212f4a5de50525a57e40743fa",
  "kind": "instance",
  "lexical_name": "isTotallyReal_maximalRealSubfield",
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
  "slug": "istotallyreal-maximalrealsubfield--561e2bd830fe56a2ed90b685",
  "source": {
    "blob": "17a3626a0cf6d40f8c26469b262eb6a3a2856c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:561e2bd830fe56a2ed90b6852b693d873e9217d52b6560d321bbc34a4f5dc3ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27aac4af50c94873562cae79046e891b33367af212f4a5de50525a57e40743fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isTotallyReal_maximalRealSubfield :
    IsTotallyReal (maximalRealSubfield K) where
  isReal w := by
    rw [InfinitePlace.isReal_iff, ComplexEmbedding.isReal_iff]
    ext x
    rw [RingHom.star_apply, ← lift_algebraMap_apply K w.embedding]
    exact x.prop _

variable {K}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17a3626a0cf6d40f8c26469b262eb6a3a2856c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
