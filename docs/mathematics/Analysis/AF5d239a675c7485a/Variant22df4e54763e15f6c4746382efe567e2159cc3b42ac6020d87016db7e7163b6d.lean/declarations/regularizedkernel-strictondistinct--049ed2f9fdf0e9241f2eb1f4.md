# regularizedKernel_strictOnDistinct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d52c256a-2a5c-b3bf-caaa-421b59601b9d",
  "kind": "theorem",
  "lexical_name": "regularizedKernel_strictOnDistinct",
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
  "slug": "regularizedkernel-strictondistinct--049ed2f9fdf0e9241f2eb1f4",
  "source": {
    "blob": "a8673fda3ac6062af7c815916b589344d04e7015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 34,
    "path": "GRWTSK/Analysis/AF5d239a675c7485a/Variant22df4e54763e15f6c4746382efe567e2159cc3b42ac6020d87016db7e7163b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:049ed2f9fdf0e9241f2eb1f4bb3b43e5dedee45f44195a2339cab7652eda4a83",
  "verification": {
    "reference": "docs/verification/Analysis/AF5d239a675c7485a/Variant22df4e54763e15f6c4746382efe567e2159cc3b42ac6020d87016db7e7163b6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d52c256a-2a5c-b3bf-caaa-421b59601b9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularizedKernel_strictOnDistinct
    (semantic : PositiveKernel Index)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon)
    {FiniteIndex : Type v}
    (indices : FiniteIndex → Index)
    (distinct : Function.Injective indices) :
    ((regularizedKernel semantic epsilon epsilonPositive).matrix.submatrix
      indices indices).PosDef :=
  (regularizedKernel_posDef semantic epsilon epsilonPositive).submatrix distinct

end

end Mathematics.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AF5d239a675c7485a/Variant22df4e54763e15f6c4746382efe567e2159cc3b42ac6020d87016db7e7163b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AF5d239a675c7485a/Variant22df4e54763e15f6c4746382efe567e2159cc3b42ac6020d87016db7e7163b6d.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8673fda3ac6062af7c815916b589344d04e7015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
