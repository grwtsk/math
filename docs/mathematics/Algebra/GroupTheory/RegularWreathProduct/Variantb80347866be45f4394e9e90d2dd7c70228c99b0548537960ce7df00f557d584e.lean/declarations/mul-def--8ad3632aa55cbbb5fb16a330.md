# mul_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b1f3641-b012-5bc1-8a68-08e4c40f5043",
  "kind": "lemma",
  "lexical_name": "mul_def",
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
  "slug": "mul-def--8ad3632aa55cbbb5fb16a330",
  "source": {
    "blob": "0f5d13feb961993cd0f42a357b0caba17697eeef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 67,
    "path": "GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ad3632aa55cbbb5fb16a330ef26593ac114aec719ce1cc04cf803af4b5d352e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b1f3641-b012-5bc1-8a68-08e4c40f5043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_def (a b : D ≀ᵣ Q) : a * b = ⟨a.1 * fun x ↦ b.1 (a.2⁻¹ * x), a.2 * b.2⟩ := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5d13feb961993cd0f42a357b0caba17697eeef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
