# sSup_unitClosedBall_eq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85a9c73f-cc2f-85eb-1ab7-95e0985c3bc3",
  "kind": "theorem",
  "lexical_name": "sSup_unitClosedBall_eq_norm",
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
  "slug": "ssup-unitclosedball-eq-norm--e492b20581289b1478ceafbf",
  "source": {
    "blob": "484379c28c0e4e01731488880634f78feaad95ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 219,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variantcac7290dcf7a0b81247ac04be2e69b8a34cf10e9669800a44417271aa79647a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e492b20581289b1478ceafbf9a67df7d8888c58463a76464810c62a12cb7f1ed",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NNNorm/Variantcac7290dcf7a0b81247ac04be2e69b8a34cf10e9669800a44417271aa79647a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85a9c73f-cc2f-85eb-1ab7-95e0985c3bc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sSup_unitClosedBall_eq_norm (f : E →SL[σ₁₂] F) :
    sSup ((fun x => ‖f x‖) '' closedBall 0 1) = ‖f‖ := by
  simpa only [NNReal.coe_sSup, Set.image_image] using!
    NNReal.coe_inj.2 f.sSup_unitClosedBall_eq_nnnorm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NNNorm/Variantcac7290dcf7a0b81247ac04be2e69b8a34cf10e9669800a44417271aa79647a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variantcac7290dcf7a0b81247ac04be2e69b8a34cf10e9669800a44417271aa79647a4.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `484379c28c0e4e01731488880634f78feaad95ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
