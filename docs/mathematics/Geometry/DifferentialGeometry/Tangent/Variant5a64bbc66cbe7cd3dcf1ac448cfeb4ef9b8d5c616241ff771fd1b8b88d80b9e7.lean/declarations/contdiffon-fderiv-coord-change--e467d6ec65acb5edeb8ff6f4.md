# contDiffOn_fderiv_coord_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "934fab2dbf638b2530ee925d6b60e4b199bd04f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17916caf-b44c-7964-6223-532a1013e82e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:140b422f-1244-ca70-9df3-2c599b101d28",
  "kind": "theorem",
  "lexical_name": "contDiffOn_fderiv_coord_change",
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
  "slug": "contdiffon-fderiv-coord-change--e467d6ec65acb5edeb8ff6f4",
  "source": {
    "blob": "934fab2dbf638b2530ee925d6b60e4b199bd04f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 59,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e467d6ec65acb5edeb8ff6f415969303b6f32f12b27df812ac802c5fd85ff148",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:140b422f-1244-ca70-9df3-2c599b101d28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem contDiffOn_fderiv_coord_change [IsManifold I (n + 1) M]
    (i j : atlas H M) :
    ContDiffOn 𝕜 n (fderivWithin 𝕜 (j.1.extend I ∘ (i.1.extend I).symm) (range I))
      ((i.1.extend I).symm ≫ j.1.extend I).source := by
  have h : ((i.1.extend I).symm ≫ j.1.extend I).source ⊆ range I := by
    refine I.extendCoordChange_source.trans_subset ?_; apply image_subset_range
  intro x hx
  refine (ContDiffWithinAt.fderivWithin_right ?_ I.uniqueDiffOn le_rfl
    <| h hx).mono h
  refine (I.contDiffOn_extendCoordChange (subset_maximalAtlas i.2)
    (subset_maximalAtlas j.2) x hx).mono_of_mem_nhdsWithin ?_
  exact I.extendCoordChange_source_mem_nhdsWithin hx

open IsManifold

variable [IsManifold I 1 M] [IsManifold I' 1 M']

variable (I M) in
/-- Let `M` be a `C^1` manifold with model `I` on `(E, H)`.
Then `tangentBundleCore I M` is the vector bundle core for the tangent bundle over `M`.
It is indexed by the atlas of `M`, with fiber `E` and its change of coordinates from the chart `i`
to the chart `j` at point `x : M` is the derivative of the composite
```
  I.symm   i.symm    j     I
E -----> H -----> M --> H --> E
```
within the set `range I ⊆ E` at `I (i x) : E`. -/
@[simps indexAt coordChange]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `934fab2dbf638b2530ee925d6b60e4b199bd04f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
