# cos_le_cos_of_nonneg_of_le_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98a46cc6e67df98619eca63a7c546f3701e94aca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 599,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e233182-fa95-d038-a1d3-dca9f5e3c1d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93284f2b-b25f-97e2-6e5f-a4061b9caf06",
  "kind": "theorem",
  "lexical_name": "cos_le_cos_of_nonneg_of_le_pi",
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
  "slug": "cos-le-cos-of-nonneg-of-le-pi--5564606c095b70ecdd72c3de",
  "source": {
    "blob": "98a46cc6e67df98619eca63a7c546f3701e94aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 599,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5564606c095b70ecdd72c3de4ef92e32f5e1062cbbe8625bd5a2cd1adf1e8962",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93284f2b-b25f-97e2-6e5f-a4061b9caf06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cos_le_cos_of_nonneg_of_le_pi {x y : ℝ} (hx₁ : 0 ≤ x) (hy₂ : y ≤ π) (hxy : x ≤ y) :
    cos y ≤ cos x :=
  (strictAntiOn_cos.le_iff_le ⟨hx₁.trans hxy, hy₂⟩ ⟨hx₁, hxy.trans hy₂⟩).2 hxy
#align real.cos_le_cos_of_nonneg_of_le_pi Real.cos_le_cos_of_nonneg_of_le_pi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98a46cc6e67df98619eca63a7c546f3701e94aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
