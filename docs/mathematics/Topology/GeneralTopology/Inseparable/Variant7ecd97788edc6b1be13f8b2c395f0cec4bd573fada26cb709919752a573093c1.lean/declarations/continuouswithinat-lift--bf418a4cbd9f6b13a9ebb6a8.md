# continuousWithinAt_lift₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a0864d5-d6b0-693e-ca36-7b0d696adafc",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_lift₂",
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
  "slug": "continuouswithinat-lift--bf418a4cbd9f6b13a9ebb6a8",
  "source": {
    "blob": "41eab1b6b4c96fd71b6b42a07c726b47044e372b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 614,
    "path": "GRWTSK/Topology/GeneralTopology/Inseparable/Variant7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf418a4cbd9f6b13a9ebb6a8757a27488ad0762a78c24391a170ee691c2d2c7f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inseparable/Variant7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a0864d5-d6b0-693e-ca36-7b0d696adafc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem continuousWithinAt_lift₂ {f : X → Y → Z}
    {hf : ∀ a b c d, (a ~ᵢ c) → (b ~ᵢ d) → f a b = f c d}
    {s : Set (SeparationQuotient X × SeparationQuotient Y)} {x : X} {y : Y} :
    ContinuousWithinAt (uncurry <| lift₂ f hf) s (mk x, mk y) ↔
      ContinuousWithinAt (uncurry f) (Prod.map mk mk ⁻¹' s) (x, y) :=
  tendsto_lift₂_nhdsWithin
#align separation_quotient.continuous_within_at_lift₂ SeparationQuotient.continuousWithinAt_lift₂

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inseparable/Variant7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inseparable/Variant7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41eab1b6b4c96fd71b6b42a07c726b47044e372b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
