# sin_le_sin_of_le_of_le_pi_div_two

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
      "line": 614,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7bb88f5-021e-b4b0-dc20-d58f94af01fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1a05106-ddba-cddd-f7d3-ee08de646dda",
  "kind": "theorem",
  "lexical_name": "sin_le_sin_of_le_of_le_pi_div_two",
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
  "slug": "sin-le-sin-of-le-of-le-pi-div-two--0e1117280eff27cfe8a4acc9",
  "source": {
    "blob": "98a46cc6e67df98619eca63a7c546f3701e94aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 614,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e1117280eff27cfe8a4acc97fe18bdac0cbcdd5211f3a097cc5b896bf9c8b0b",
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

Occurrence: `result:f1a05106-ddba-cddd-f7d3-ee08de646dda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_le_sin_of_le_of_le_pi_div_two {x y : ℝ} (hx₁ : -(π / 2) ≤ x) (hy₂ : y ≤ π / 2)
    (hxy : x ≤ y) : sin x ≤ sin y :=
  (strictMonoOn_sin.le_iff_le ⟨hx₁, hxy.trans hy₂⟩ ⟨hx₁.trans hxy, hy₂⟩).2 hxy
#align real.sin_le_sin_of_le_of_le_pi_div_two Real.sin_le_sin_of_le_of_le_pi_div_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98a46cc6e67df98619eca63a7c546f3701e94aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
