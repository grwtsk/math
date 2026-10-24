# perfect_image_intersection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e58b9bdf0e960862417a47fc0bb013cdf16e29d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33394bcf-e862-2b6b-41be-ad8ec88f1158",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b987ba2b-e9ea-f2ba-0173-4e3e04b43476",
  "kind": "theorem",
  "lexical_name": "perfect_image_intersection",
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
  "slug": "perfect-image-intersection--2da30836361a7dc424cce1ca",
  "source": {
    "blob": "5e58b9bdf0e960862417a47fc0bb013cdf16e29d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 21,
    "path": "GRWTSK/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2da30836361a7dc424cce1ca8252ae85ab1964ea15be2df773ee48c8ab2cb93d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b987ba2b-e9ea-f2ba-0173-4e3e04b43476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perfect_image_intersection {G H : Type*} [Group G] [Group H]
    (f : G →* H) (P : Subgroup H) (hP : ⁅P, P⁆ = P)
    (B C : Subgroup G) [B.Normal] [C.Normal]
    (hB : P ≤ B.map f) (hC : P ≤ C.map f) : P ≤ (B ⊓ C).map f := by
  calc
    P = ⁅P, P⁆ := hP.symm
    _ ≤ ⁅B.map f, C.map f⁆ := Subgroup.commutator_mono hB hC
    _ = (⁅B, C⁆).map f := (Subgroup.map_commutator B C f).symm
    _ ≤ (B ⊓ C).map f := Subgroup.map_mono (Subgroup.commutator_le_inf B C)

/-- The same retained image survives a nonempty finite family of normal intersections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e58b9bdf0e960862417a47fc0bb013cdf16e29d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
