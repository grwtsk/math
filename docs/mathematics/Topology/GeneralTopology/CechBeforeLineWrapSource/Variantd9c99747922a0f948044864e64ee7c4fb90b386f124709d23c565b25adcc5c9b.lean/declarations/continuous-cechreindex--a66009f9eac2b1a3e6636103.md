# continuous_cechReindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ba234df-ebf4-5b95-2876-90b75bdd32df",
  "kind": "theorem",
  "lexical_name": "continuous_cechReindex",
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
  "slug": "continuous-cechreindex--a66009f9eac2b1a3e6636103",
  "source": {
    "blob": "a467e471c3a1fe5afdcc0e2a49cbe703b0754ce7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 243,
    "path": "GRWTSK/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a66009f9eac2b1a3e663610334a75e3339e404f977c0c6a688c31878f33face1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ba234df-ebf4-5b95-2876-90b75bdd32df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_cechReindex (U : ι → Set X) {p q : ℕ}
    (f : Fin (q + 1) → Fin (p + 1)) : Continuous (cechReindex U f) := by
  apply continuous_sigma_iff.mpr
  intro labels
  change Continuous (fun x : {x : X // ∀ j, x ∈ U (labels j)} =>
    (⟨labels ∘ f, ⟨x.val, fun j => x.property (f j)⟩⟩ : OpenCoverCech U q))
  have h : Continuous (fun x : {x : X // ∀ j, x ∈ U (labels j)} =>
      (⟨x.val, fun j => x.property (f j)⟩ : {x : X // ∀ j, x ∈ U ((labels ∘ f) j)})) :=
    continuous_subtype_val.subtype_mk _
  exact (continuous_sigmaMk (σ := fun labels : Fin (q + 1) → ι =>
    {x : X // ∀ j, x ∈ U (labels j)}) (i := labels ∘ f)).comp h

/-- The augmentation keeps the retained point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CechBeforeLineWrapSource/Variantd9c99747922a0f948044864e64ee7c4fb90b386f124709d23c565b25adcc5c9b.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a467e471c3a1fe5afdcc0e2a49cbe703b0754ce7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
