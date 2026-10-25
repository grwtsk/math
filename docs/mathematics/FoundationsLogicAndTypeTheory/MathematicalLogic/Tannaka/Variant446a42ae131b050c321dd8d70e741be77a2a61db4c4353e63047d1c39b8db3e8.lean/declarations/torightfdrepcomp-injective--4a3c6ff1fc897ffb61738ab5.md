# toRightFDRepComp_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56737d9f-8079-36f0-16b9-95737c4599e9",
  "kind": "lemma",
  "lexical_name": "toRightFDRepComp_injective",
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
  "slug": "torightfdrepcomp-injective--4a3c6ff1fc897ffb61738ab5",
  "source": {
    "blob": "95165fdd16bac290d1b6996cbacd87e9ad1ec7ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant446a42ae131b050c321dd8d70e741be77a2a61db4c4353e63047d1c39b8db3e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a3c6ff1fc897ffb61738ab560e34bdd209964b6436acc58df1db106613820b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant446a42ae131b050c321dd8d70e741be77a2a61db4c4353e63047d1c39b8db3e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56737d9f-8079-36f0-16b9-95737c4599e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toRightFDRepComp_injective {η₁ η₂ : Aut (forget k G)}
    (h : η₁.hom.hom.app rightFDRep = η₂.hom.hom.app rightFDRep) : η₁ = η₂ := by
  have := Fintype.ofFinite G
  classical
  ext X v
  have h1 := η₁.hom.hom.naturality (ofRightFDRep X v)
  have h2 := η₂.hom.hom.naturality (ofRightFDRep X v)
  rw [h, ← h2] at h1
  simpa using congr(($h1).hom (single 1 1))

/-- `leftRegular` as a morphism `rightFDRep k G ⟶ rightFDRep k G` in `FDRep k G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant446a42ae131b050c321dd8d70e741be77a2a61db4c4353e63047d1c39b8db3e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant446a42ae131b050c321dd8d70e741be77a2a61db4c4353e63047d1c39b8db3e8.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95165fdd16bac290d1b6996cbacd87e9ad1ec7ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
