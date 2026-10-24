# isCoprime_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:561ea833-e05e-8775-72fb-0d4589f2fe71",
  "kind": "lemma",
  "lexical_name": "isCoprime_row",
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
  "slug": "iscoprime-row--11d117386f95d2b2fed5e095",
  "source": {
    "blob": "c235930b2b76001f6d4a82f61cc6429f9fff6a1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 386,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantdd25b004dd3662c8cad34cc3724ad62b760f29f70e606bd4f1095e2a3b60cf24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11d117386f95d2b2fed5e0950ec9885322a0dcc5b68d56c5e8cae801c99506a0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantdd25b004dd3662c8cad34cc3724ad62b760f29f70e606bd4f1095e2a3b60cf24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:561ea833-e05e-8775-72fb-0d4589f2fe71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCoprime_row (A : SL(2, R)) (i : Fin 2) : IsCoprime (A i 0) (A i 1) := by
  refine match i with
  | 0 => ⟨A 1 1, -(A 1 0), ?_⟩
  | 1 => ⟨-(A 0 1), A 0 0, ?_⟩ <;>
  · simp_rw [det_coe A ▸ det_fin_two A.1]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantdd25b004dd3662c8cad34cc3724ad62b760f29f70e606bd4f1095e2a3b60cf24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantdd25b004dd3662c8cad34cc3724ad62b760f29f70e606bd4f1095e2a3b60cf24.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c235930b2b76001f6d4a82f61cc6429f9fff6a1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
