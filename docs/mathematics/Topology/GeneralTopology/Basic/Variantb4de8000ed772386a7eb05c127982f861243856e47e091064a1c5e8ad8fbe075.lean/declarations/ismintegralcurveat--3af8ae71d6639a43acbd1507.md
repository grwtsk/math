# IsMIntegralCurveAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77946859e77d8a735844fb19541df47020e412165e34598058ebecb771e19874",
  "kind": "def",
  "lexical_name": "IsMIntegralCurveAt",
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
  "slug": "ismintegralcurveat--3af8ae71d6639a43acbd1507",
  "source": {
    "blob": "850387ad019a58be0c1ef0e2b974b4007bccf65a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3af8ae71d6639a43acbd1507395316b78b5a2567652e1c4de2e7142c48bb50f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77946859e77d8a735844fb19541df47020e412165e34598058ebecb771e19874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsMIntegralCurveAt (γ : ℝ → M) (v : (x : M) → TangentSpace% x) (t₀ : ℝ) : Prop :=
  ∀ᶠ t in 𝓝 t₀, HasMFDerivAt% γ t ((1 : ℝ →L[ℝ] ℝ).smulRight <| v (γ t))

/-- If `v : M → TM` is a vector field on `M`, `IsMIntegralCurve γ v` means `γ : ℝ → M` is a global
integral curve of `v`. That is, `γ t` is tangent to `v (γ t)` for all `t : ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850387ad019a58be0c1ef0e2b974b4007bccf65a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
