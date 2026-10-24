# context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf8912fa34109f12deca5916391f3b7d82da5625b324d592d3cd187502ac7b89",
  "kind": "def",
  "lexical_name": "context",
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
  "slug": "context--50f8711ca1dab1d4a87f562b",
  "source": {
    "blob": "8c3daba672dc38c3b250ae4f811aef996f181a04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 77,
    "path": "GRWTSK/Algebra/Coefficients/Variantc45c0f7d2b0128d1ccab586bca92c6db0a850d1ad25fd9ddb9f4180e91636162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50f8711ca1dab1d4a87f562ba2aa06bfe0349ab8fb39f3314df7683c868d3875",
  "verification": {
    "reference": "docs/verification/Algebra/Coefficients/Variantc45c0f7d2b0128d1ccab586bca92c6db0a850d1ad25fd9ddb9f4180e91636162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf8912fa34109f12deca5916391f3b7d82da5625b324d592d3cd187502ac7b89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def context {R : Type u} [CommRing R]
    (D : CompletionDatum.{u, v} R) : CoefficientContext :=
  ⟨D.Completed, D.instCommRingCompleted⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Coefficients/Variantc45c0f7d2b0128d1ccab586bca92c6db0a850d1ad25fd9ddb9f4180e91636162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Coefficients/Variantc45c0f7d2b0128d1ccab586bca92c6db0a850d1ad25fd9ddb9f4180e91636162.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c3daba672dc38c3b250ae4f811aef996f181a04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
