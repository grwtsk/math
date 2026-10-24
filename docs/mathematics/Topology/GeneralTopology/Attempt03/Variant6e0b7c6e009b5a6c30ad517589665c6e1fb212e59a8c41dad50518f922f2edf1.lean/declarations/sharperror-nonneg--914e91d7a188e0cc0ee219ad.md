# sharpError_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9267a861-23f2-2b9e-3117-23760cb29c26",
  "kind": "theorem",
  "lexical_name": "sharpError_nonneg",
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
  "slug": "sharperror-nonneg--914e91d7a188e0cc0ee219ad",
  "source": {
    "blob": "647b21082e68b41141ee9662c48e2d5240fbbfb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variant6e0b7c6e009b5a6c30ad517589665c6e1fb212e59a8c41dad50518f922f2edf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:914e91d7a188e0cc0ee219adfbba6dcc375d4fed9f74e0c1532c89bed938b144",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03/Variant6e0b7c6e009b5a6c30ad517589665c6e1fb212e59a8c41dad50518f922f2edf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9267a861-23f2-2b9e-3117-23760cb29c26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpError_nonneg {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta) :
    0 ≤ sharpError A delta := by
  have hp : 0 < A := by linarith
  have hE := errorPolynomial_nonneg (mul_pos hp hdelta)
  unfold sharpError
  positivity

/-- Polynomial endpoint errors vanish whenever the product A*delta(A) grows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variant6e0b7c6e009b5a6c30ad517589665c6e1fb212e59a8c41dad50518f922f2edf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variant6e0b7c6e009b5a6c30ad517589665c6e1fb212e59a8c41dad50518f922f2edf1.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `647b21082e68b41141ee9662c48e2d5240fbbfb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
