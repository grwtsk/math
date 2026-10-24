# lt_sqrt_self_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35154524-b016-6c3a-9c5e-834cd1bae404",
  "kind": "lemma",
  "lexical_name": "lt_sqrt_self_iff",
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
  "slug": "lt-sqrt-self-iff--a872aa25cf911971daa8de39",
  "source": {
    "blob": "5e5741fcbeff7a79b7ae15f9a854c5720367a66b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 324,
    "path": "GRWTSK/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a872aa25cf911971daa8de39aa9d8e0f0be189df8fe1345fadd9894cc0afac97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35154524-b016-6c3a-9c5e-834cd1bae404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma lt_sqrt_self_iff : x < √x ↔ x ≠ 0 ∧ x < 1 := by simp [← not_le]

end Real

namespace Mathlib.Meta.Positivity

open Lean Qq

/-- Extension for the `positivity` tactic: a square root of a strictly positive nonnegative real is
positive. -/
@[positivity NNReal.sqrt _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e5741fcbeff7a79b7ae15f9a854c5720367a66b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
