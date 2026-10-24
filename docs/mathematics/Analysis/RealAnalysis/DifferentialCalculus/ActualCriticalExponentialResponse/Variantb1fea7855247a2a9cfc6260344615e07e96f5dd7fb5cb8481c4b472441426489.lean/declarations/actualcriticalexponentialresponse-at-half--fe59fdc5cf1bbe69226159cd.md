# actualCriticalExponentialResponse_at_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03af08b7-fa42-cdcd-4327-17ff58f90d71",
  "kind": "theorem",
  "lexical_name": "actualCriticalExponentialResponse_at_half",
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
  "slug": "actualcriticalexponentialresponse-at-half--fe59fdc5cf1bbe69226159cd",
  "source": {
    "blob": "a18d9db282d99d209ee37d57e7591e723ff06586",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variantb1fea7855247a2a9cfc6260344615e07e96f5dd7fb5cb8481c4b472441426489.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe59fdc5cf1bbe69226159cd578241284aa353fe4074b0bd2514eeb0dfc03512",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variantb1fea7855247a2a9cfc6260344615e07e96f5dd7fb5cb8481c4b472441426489.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03af08b7-fa42-cdcd-4327-17ff58f90d71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalExponentialResponse_at_half {A : ℝ} (hA : 0 < A) :
    actualCriticalExponentialResponse A (1 / 2) = -1 / 2 := by
  rw [actualCriticalExponentialResponse_eq_halfTransform hA]
  norm_num

/-- The reciprocal mode coefficient cancels only its scalar factor, not the actual transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variantb1fea7855247a2a9cfc6260344615e07e96f5dd7fb5cb8481c4b472441426489.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variantb1fea7855247a2a9cfc6260344615e07e96f5dd7fb5cb8481c4b472441426489.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a18d9db282d99d209ee37d57e7591e723ff06586` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
