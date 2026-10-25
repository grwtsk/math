# Equiv.diff_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8561ffd-aeee-804a-1184-554ec27e5838",
  "kind": "theorem",
  "lexical_name": "Equiv.diff_congr",
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
  "slug": "equiv-diff-congr--863ea9a4438d6a01ba72ead2",
  "source": {
    "blob": "52cf1f0e2009d97be473c9ce15757b2053caabab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3181,
    "line": 3176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:863ea9a4438d6a01ba72ead2f9d6e1d7ff2d896a7ca55e0d4082ba9fa9f67d3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8561ffd-aeee-804a-1184-554ec27e5838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3176–3181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.diff_congr {t₃ t₄ : DTreeMap α β cmp} [TransCmp cmp]
    (equiv₁ : t₁ ~m t₃) (equiv₂ : t₂ ~m t₄) :
    (t₁ \ t₂).Equiv (t₃ \ t₄) :=
  ⟨Impl.Equiv.diff_congr t₁.wf t₂.wf t₃.wf t₄.wf equiv₁.1 equiv₂.1⟩

/- get? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean#L3176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52cf1f0e2009d97be473c9ce15757b2053caabab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
