# biUnion_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e7e73e5f2b1241bea304697b6c235f34e9b9309",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42fe15e4-9460-6dd2-4de4-bf11ad823933",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce50da7e-750f-ff99-a672-50f5e40bcd7b",
  "kind": "theorem",
  "lexical_name": "biUnion_assoc",
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
  "slug": "biunion-assoc--6ab7b1117258ac5de8515846",
  "source": {
    "blob": "8e7e73e5f2b1241bea304697b6c235f34e9b9309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 385,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ab7b1117258ac5de851584693961e7a6373aa8739691d1efc4cca9247d370ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce50da7e-750f-ff99-a672-50f5e40bcd7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biUnion_assoc (πi : ∀ J, Prepartition J) (πi' : Box ι → ∀ J : Box ι, Prepartition J) :
    (π.biUnion fun J => (πi J).biUnion (πi' J)) =
      (π.biUnion πi).biUnion fun J => πi' (π.biUnionIndex πi J) J := by
  ext J
  simp only [mem_biUnion, exists_prop]
  constructor
  · rintro ⟨J₁, hJ₁, J₂, hJ₂, hJ⟩
    refine' ⟨J₂, ⟨J₁, hJ₁, hJ₂⟩, _⟩
    rwa [π.biUnionIndex_of_mem hJ₁ hJ₂]
  · rintro ⟨J₁, ⟨J₂, hJ₂, hJ₁⟩, hJ⟩
    refine' ⟨J₂, hJ₂, J₁, hJ₁, _⟩
    rwa [π.biUnionIndex_of_mem hJ₂ hJ₁] at hJ
#align box_integral.prepartition.bUnion_assoc BoxIntegral.Prepartition.biUnion_assoc

/-- Create a `BoxIntegral.Prepartition` from a collection of possibly empty boxes by filtering out
the empty one if it exists. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e7e73e5f2b1241bea304697b6c235f34e9b9309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
