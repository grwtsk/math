# actualLogOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79ca003ec5e756a49cdfdbca154e59e1c8f7cb6dbc0463a557bcd9bdabdb7dd1",
  "kind": "def",
  "lexical_name": "actualLogOperator",
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
  "slug": "actuallogoperator--0b8fc7d9f1f544d5aee711ed",
  "source": {
    "blob": "563c237e499302cff3e9f30a6f9d34d5e71b80e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 14,
    "line": 13,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b8fc7d9f1f544d5aee711ede955f5589f718848d73a4fed6b804d8cc6ad1bfc",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79ca003ec5e756a49cdfdbca154e59e1c8f7cb6dbc0463a557bcd9bdabdb7dd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–14.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualLogOperator (A u : ℝ) : ℂ :=
  (Real.exp (u/2) : ℂ)*actualComplexOperator A (Real.exp u)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563c237e499302cff3e9f30a6f9d34d5e71b80e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
