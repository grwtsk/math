# rightParameter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:843e3c5a8eebf45a1c63bb40e8e1b232f3a9c8df122a71588567ce503655026d",
  "kind": "def",
  "lexical_name": "rightParameter",
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
  "slug": "rightparameter--c973b245c7b4e216a51ba666",
  "source": {
    "blob": "c3b53383fa26428246a16eb66ab1fc2c86fc1c14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 583,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variantce3cebe7250766b4c625743b9a4ca29e0c0703f2b68ffff4793b010ff233d529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c973b245c7b4e216a51ba6661d4d788a7baaba4757291df3976b35e35a77967b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variantce3cebe7250766b4c625743b9a4ca29e0c0703f2b68ffff4793b010ff233d529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:843e3c5a8eebf45a1c63bb40e8e1b232f3a9c8df122a71588567ce503655026d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def rightParameter (tau t : UnitInterval) : UnitInterval :=
  ⟨tau.1 + (1 - tau.1) * t.1,
    by
      have h : 0 ≤ (1 - tau.1) * t.1 :=
        mul_nonneg (sub_nonneg.mpr tau.2.2) t.2.1
      nlinarith [tau.2.1],
    by
      have h : 0 ≤ (1 - tau.1) * (1 - t.1) :=
        mul_nonneg (sub_nonneg.mpr tau.2.2)
          (sub_nonneg.mpr t.2.2)
      nlinarith⟩

@[surface_novel, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variantce3cebe7250766b4c625743b9a4ca29e0c0703f2b68ffff4793b010ff233d529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variantce3cebe7250766b4c625743b9a4ca29e0c0703f2b68ffff4793b010ff233d529.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3b53383fa26428246a16eb66ab1fc2c86fc1c14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
