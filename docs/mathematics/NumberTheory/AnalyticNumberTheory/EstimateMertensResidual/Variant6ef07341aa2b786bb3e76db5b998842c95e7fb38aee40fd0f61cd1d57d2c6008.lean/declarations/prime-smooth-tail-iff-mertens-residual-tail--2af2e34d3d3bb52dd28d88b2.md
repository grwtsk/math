# prime_smooth_tail_iff_mertens_residual_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41f105ca-56b9-5327-f48b-92fea8e627c4",
  "kind": "theorem",
  "lexical_name": "prime_smooth_tail_iff_mertens_residual_tail",
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
  "slug": "prime-smooth-tail-iff-mertens-residual-tail--2af2e34d3d3bb52dd28d88b2",
  "source": {
    "blob": "80711dc5717ec69e8fdfb416076cdd2a19b30666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 299,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2af2e34d3d3bb52dd28d88b2f4a8130d3f2fa929bf67226253e7e3912cdf4cd1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41f105ca-56b9-5327-f48b-92fea8e627c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_smooth_tail_iff_mertens_residual_tail :
    PrimeSmoothDefectTailUpperBound ↔
      MertensResidualTailUpperBound :=
  ⟨mertens_residual_tail_of_prime_smooth_tail,
    prime_smooth_tail_of_mertens_residual_tail⟩

/-- The signed-pairing tail obstruction is therefore exactly equivalent to the
Mertens residual tail obstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant6ef07341aa2b786bb3e76db5b998842c95e7fb38aee40fd0f61cd1d57d2c6008.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80711dc5717ec69e8fdfb416076cdd2a19b30666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
