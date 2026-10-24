# MPSTruncationCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:641723ee724e67a6e197cdeac0e4ebea00439f35165f13181d034d717c71318f",
  "kind": "structure",
  "lexical_name": "MPSTruncationCertificate",
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
  "slug": "mpstruncationcertificate--8bfb0af3c76a0e39608db3ff",
  "source": {
    "blob": "a56ec2e9308d72f126cdf9d41fea32dc177595c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Factorization/Variante815e384d106db370e4879de2c6274ab91908f838c9c70813e9589c11e3accd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bfb0af3c76a0e39608db3ff6fb2f99551f962e7a4844f9b896cb79975c46e46",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Factorization/Variante815e384d106db370e4879de2c6274ab91908f838c9c70813e9589c11e3accd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:641723ee724e67a6e197cdeac0e4ebea00439f35165f13181d034d717c71318f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MPSTruncationCertificate
    (state : TensorState N D)
    (network : OpenMPS N D) where
  sourceDigest : String
  retainedBondProfileDigest : String
  discardedWeightBound : ℝ
  discardedWeightBound_nonnegative : 0 ≤ discardedWeightBound
  approximation : ApproxMPSRepresentation state network

/-- Exact number of stored scalar coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Factorization/Variante815e384d106db370e4879de2c6274ab91908f838c9c70813e9589c11e3accd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Factorization/Variante815e384d106db370e4879de2c6274ab91908f838c9c70813e9589c11e3accd9.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a56ec2e9308d72f126cdf9d41fea32dc177595c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
