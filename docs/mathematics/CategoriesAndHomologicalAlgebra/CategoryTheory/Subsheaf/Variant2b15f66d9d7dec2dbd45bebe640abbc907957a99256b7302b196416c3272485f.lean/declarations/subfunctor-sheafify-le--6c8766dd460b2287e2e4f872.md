# Subfunctor.sheafify_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d146705ced1de5c2b2c79a1ddefb47e812995954",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81e37144-0f10-0482-c0dd-282c33770cb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d250fa3-9e41-a7b5-9d7b-f0c57c7d482d",
  "kind": "theorem",
  "lexical_name": "Subfunctor.sheafify_le",
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
  "slug": "subfunctor-sheafify-le--6c8766dd460b2287e2e4f872",
  "source": {
    "blob": "d146705ced1de5c2b2c79a1ddefb47e812995954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 177,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c8766dd460b2287e2e4f872577e8088992cf28aff67fab653854335cad4915f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d250fa3-9e41-a7b5-9d7b-f0c57c7d482d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subfunctor.sheafify_le (h : G ≤ G') (hF : Presieve.IsSheaf J F)
    (hG' : Presieve.IsSheaf J G'.toFunctor) : G.sheafify J ≤ G' := by
  intro U x hx
  convert! ((G.sheafifyLift (Subfunctor.homOfLe h) hG').app U ⟨x, hx⟩).2
  apply (hF _ hx).isSeparatedFor.ext
  intro V i hi
  have :=
    congr_arg (fun f : G.toFunctor ⟶ G'.toFunctor => (NatTrans.app f (op V) ⟨_, hi⟩).1)
      (G.to_sheafifyLift (Subfunctor.homOfLe h) hG')
  convert! this.symm
  rw [← Subfunctor.nat_trans_naturality]
  rfl

section Image

variable (J) in
/-- A morphism factors through the sheafification of the image presheaf. -/
@[simps! +dsimpLhs]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d146705ced1de5c2b2c79a1ddefb47e812995954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
