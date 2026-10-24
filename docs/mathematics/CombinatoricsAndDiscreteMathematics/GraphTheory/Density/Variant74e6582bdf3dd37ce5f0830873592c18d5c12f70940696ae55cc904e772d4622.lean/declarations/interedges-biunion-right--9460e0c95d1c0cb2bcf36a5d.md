# interedges_biUnion_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:536211a9-b2cc-738e-efb3-7788d9350066",
  "kind": "theorem",
  "lexical_name": "interedges_biUnion_right",
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
  "slug": "interedges-biunion-right--9460e0c95d1c0cb2bcf36a5d",
  "source": {
    "blob": "8d63fe89343c9c31cf718ba795ebf8ef87d836a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant74e6582bdf3dd37ce5f0830873592c18d5c12f70940696ae55cc904e772d4622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9460e0c95d1c0cb2bcf36a5dd668dba533557af915ce6e5799dfdbc2188fba31",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant74e6582bdf3dd37ce5f0830873592c18d5c12f70940696ae55cc904e772d4622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:536211a9-b2cc-738e-efb3-7788d9350066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interedges_biUnion_right (s : Finset α) (t : Finset ι) (f : ι → Finset β) :
    interedges r s (t.biUnion f) = t.biUnion fun b ↦ interedges r s (f b) := by
  ext a
  simp only [mem_interedges_iff, mem_biUnion]
  exact ⟨fun ⟨x₁, ⟨x₂, x₃, x₄⟩, x₅⟩ ↦ ⟨x₂, x₃, x₁, x₄, x₅⟩,
    fun ⟨x₂, x₃, x₁, x₄, x₅⟩ ↦ ⟨x₁, ⟨x₂, x₃, x₄⟩, x₅⟩⟩
#align rel.interedges_bUnion_right Rel.interedges_biUnion_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant74e6582bdf3dd37ce5f0830873592c18d5c12f70940696ae55cc904e772d4622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant74e6582bdf3dd37ce5f0830873592c18d5c12f70940696ae55cc904e772d4622.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d63fe89343c9c31cf718ba795ebf8ef87d836a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
