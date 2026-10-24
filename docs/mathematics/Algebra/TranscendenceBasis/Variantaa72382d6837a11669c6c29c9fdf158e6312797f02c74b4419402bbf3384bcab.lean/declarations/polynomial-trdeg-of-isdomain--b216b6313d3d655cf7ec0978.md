# Polynomial.trdeg_of_isDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9be6dc62-4b67-e399-e0d9-b5dcc82d891f",
  "kind": "theorem",
  "lexical_name": "Polynomial.trdeg_of_isDomain",
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
  "slug": "polynomial-trdeg-of-isdomain--b216b6313d3d655cf7ec0978",
  "source": {
    "blob": "c8a521893a6cb8b186c4b879222c1e453b3645c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 449,
    "path": "GRWTSK/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b216b6313d3d655cf7ec09784c0d9e18298d47e4b1d4479e7e0b04f327b599bf",
  "verification": {
    "reference": "docs/verification/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9be6dc62-4b67-e399-e0d9-b5dcc82d891f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Polynomial.trdeg_of_isDomain [IsDomain R] : trdeg R (Polynomial R) = 1 := by
  simpa using (IsTranscendenceBasis.polynomial Unit R).lift_cardinalMk_eq_trdeg.symm

-- TODO: generalize to Nontrivial S
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8a521893a6cb8b186c4b879222c1e453b3645c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
