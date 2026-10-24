# mem_center_iff_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97ed2db615a8505566275f8fa1f9a83e91e9cee5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e41e5bcc-0b72-73e2-96fe-e2f45f1f42c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71a9e522-f248-2df1-4629-66db3df57eca",
  "kind": "theorem",
  "lexical_name": "mem_center_iff_spec",
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
  "slug": "mem-center-iff-spec--6d682015149a709dc3b74e22",
  "source": {
    "blob": "97ed2db615a8505566275f8fa1f9a83e91e9cee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 386,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d682015149a709dc3b74e2275f3a3d68f9e1b7a93843cb3c36ca3ccbf475027",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71a9e522-f248-2df1-4629-66db3df57eca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_center_iff_spec {g : SpecialLinearGroup R V}
    (hg : g ∈ Subgroup.center (SpecialLinearGroup R V)) (x : V) :
    (g : V →ₗ[R] V) x = (mem_center_iff.mp hg).choose • x := by
  let H := (mem_center_iff.mp hg).choose_spec.2
  rw [LinearMap.ext_iff] at H
  simp [H]

/- TODO : delete this auxiliary definition
and put it in the definition of `centerEquivRootsOfUnity.
How can one access to the definition of one already defined term in a structure
while one is still defining it? -/
/-- The inverse map for the equivalence `SpecialLinearGroup.centerEquivRootsOfUnity`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed2db615a8505566275f8fa1f9a83e91e9cee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
