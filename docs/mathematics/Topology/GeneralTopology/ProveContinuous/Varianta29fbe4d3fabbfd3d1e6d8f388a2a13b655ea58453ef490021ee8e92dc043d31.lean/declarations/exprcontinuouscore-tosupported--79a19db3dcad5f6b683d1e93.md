# ExprContinuousCore.toSupported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3fbf19a-8452-ef56-6e93-f9f1ba3e6f01",
  "kind": "theorem",
  "lexical_name": "ExprContinuousCore.toSupported",
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
  "slug": "exprcontinuouscore-tosupported--79a19db3dcad5f6b683d1e93",
  "source": {
    "blob": "9ece43ee45b550d676b203990572320b242e0349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79a19db3dcad5f6b683d1e93ab9e976971f3154df7d35459ade9566f3f2637b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3fbf19a-8452-ef56-6e93-f9f1ba3e6f01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExprContinuousCore.toSupported {e : LExpr} (h : ExprContinuousCore e) :
    LeanCert.Engine.ExprSupportedCore e := by
  induction h with
  | const q => exact .const q
  | var idx => exact .var idx
  | add _ _ ih1 ih2 => exact .add ih1 ih2
  | mul _ _ ih1 ih2 => exact .mul ih1 ih2
  | neg _ ih => exact .neg ih
  | sin _ ih => exact .sin ih
  | cos _ ih => exact .cos ih
  | exp _ ih => exact .exp ih
  | sqrt _ ih => exact .sqrt ih
  | sinh _ ih => exact .sinh ih
  | cosh _ ih => exact .cosh ih
  | tanh _ ih => exact .tanh ih

/-! ## Base Continuity Theorem

This theorem proves that all `ExprContinuousCore` expressions evaluate to continuous functions.
We prove this by induction on the structure of `ExprContinuousCore`.
-/

/-- All ExprContinuousCore expressions are continuous on any set.

This is the foundational theorem that allows automatic continuity proof generation.
Since ExprContinuousCore only includes operations that are continuous everywhere
(const, var, add, mul, neg, sin, cos, exp, sqrt, sinh, cosh, tanh), the result
follows by structural induction.

NOTE: inv and log are NOT included because they are not continuous at 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ece43ee45b550d676b203990572320b242e0349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
