# ContMDiffWithinAt.clm_bundle_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7556309acf4e154064cb997a5991d8a4bc50d47c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:710292ec-0bf1-66f7-c562-ab4a55a96c2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f68f407-4fb2-5c84-cdec-f1b6faaed4c4",
  "kind": "lemma",
  "lexical_name": "ContMDiffWithinAt.clm_bundle_apply",
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
  "slug": "contmdiffwithinat-clm-bundle-apply--52c1323172a7980405396fdb",
  "source": {
    "blob": "7556309acf4e154064cb997a5991d8a4bc50d47c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 299,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52c1323172a7980405396fdb63e06967475ce9982f4caf0defee3845846b26ca",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f68f407-4fb2-5c84-cdec-f1b6faaed4c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiffWithinAt.clm_bundle_apply
    (hϕ : CMDiffAt[s] n
      (fun m ↦ TotalSpace.mk' (F₁ →L[𝕜] F₂) (E := fun (x : B) ↦ (E₁ x →L[𝕜] E₂ x)) (b m) (ϕ m)) x)
    (hv : CMDiffAt[s] n (fun m ↦ TotalSpace.mk' F₁ (b m) (v m)) x) :
    CMDiffAt[s] n (fun m ↦ TotalSpace.mk' F₂ (b m) (ϕ m (v m))) x := by
  simp only [contMDiffWithinAt_hom_bundle] at hϕ
  exact hϕ.2.clm_apply_of_inCoordinates hv hϕ.1

/-- Consider a `C^n` map `v : M → E₁` to a vector bundle, over a base map `b : M → B`, and
linear maps `ϕ m : E₁ (b m) → E₂ (b m)` depending smoothly on `m`.
One can apply `ϕ m` to `v m`, and the resulting map is `C^n`.

We give here a version of this statement at a point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7556309acf4e154064cb997a5991d8a4bc50d47c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
