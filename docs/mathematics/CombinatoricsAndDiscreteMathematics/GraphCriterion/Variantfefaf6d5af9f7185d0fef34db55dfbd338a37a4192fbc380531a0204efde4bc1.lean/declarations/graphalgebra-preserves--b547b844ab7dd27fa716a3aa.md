# graphAlgebra_preserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb5e2154781b31cedeff4dbeaee238ebed7b55ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dddb851e-9437-81b0-bcd9-21922dac3439",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:beaef6af-0455-c36e-9573-c9d9e3747036",
  "kind": "theorem",
  "lexical_name": "graphAlgebra_preserves",
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
  "slug": "graphalgebra-preserves--b547b844ab7dd27fa716a3aa",
  "source": {
    "blob": "bb5e2154781b31cedeff4dbeaee238ebed7b55ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b547b844ab7dd27fa716a3aa75445ec63ab847b5b13765d5a6be7b975031f5ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beaef6af-0455-c36e-9573-c9d9e3747036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem graphAlgebra_preserves (color : Carrier → Carrier → Lat)
    (rel : Congruence (graphAlgebra color)) {placement : Carrier → Carrier}
    (admissible : Admissible color placement) {left right : Carrier} (related : rel left right) :
    rel (placement left) (placement right) := by
  classical
  let Maps := {placement : Carrier → Carrier // Admissible color placement}
  have preserved := rel.compatible ((Fintype.equivFin Maps) ⟨placement, admissible⟩)
    (fun _ => left) (fun _ => right) (fun _ => related)
  simpa only [graphAlgebra, Maps, Equiv.symm_apply_apply] using preserved

/-- Each lattice element defines the equivalence relation of edges below its color. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5e2154781b31cedeff4dbeaee238ebed7b55ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
