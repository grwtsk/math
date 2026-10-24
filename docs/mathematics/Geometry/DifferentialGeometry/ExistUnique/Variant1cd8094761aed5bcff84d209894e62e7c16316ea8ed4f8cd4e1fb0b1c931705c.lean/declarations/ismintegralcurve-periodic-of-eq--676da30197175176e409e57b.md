# IsMIntegralCurve.periodic_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "029fdc70dcb9fa62ef7a2e5592429b16a0e8c6c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94dbca9e-7b55-8565-3867-06622bf0ae52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce3ce56c-2e82-6a4c-2282-bd3924bcb472",
  "kind": "lemma",
  "lexical_name": "IsMIntegralCurve.periodic_of_eq",
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
  "slug": "ismintegralcurve-periodic-of-eq--676da30197175176e409e57b",
  "source": {
    "blob": "029fdc70dcb9fa62ef7a2e5592429b16a0e8c6c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 260,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:676da30197175176e409e57b31fbf64a17a64f7cafc3227a8ccf02da88f6c197",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce3ce56c-2e82-6a4c-2282-bd3924bcb472`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsMIntegralCurve.periodic_of_eq [BoundarylessManifold I M]
    (hγ : IsMIntegralCurve γ v)
    (hv : CMDiff 1 (fun x ↦ (⟨x, v x⟩ : TangentBundle I M)))
    (heq : γ a = γ b) : Periodic γ (a - b) := by
  apply congrFun <|
    isMIntegralCurve_Ioo_eq_of_contMDiff_boundaryless (t₀ := b) hv (hγ.comp_add _) hγ _
  rw [comp_apply, add_sub_cancel, heq]

/-- A global integral curve is injective xor periodic with positive period. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `029fdc70dcb9fa62ef7a2e5592429b16a0e8c6c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
