# ClassGroup.mk_canonicalEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8249e60d-7286-eee5-9627-ef6db2b7eb7c",
  "kind": "theorem",
  "lexical_name": "ClassGroup.mk_canonicalEquiv",
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
  "slug": "classgroup-mk-canonicalequiv--5e4501399582382eb47cca44",
  "source": {
    "blob": "5f9e1fb661d6034f3f85281fb550d5cc66e25ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e4501399582382eb47cca44e7f09ab93360b15aa814a3d4d1924e3a326b6c28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8249e60d-7286-eee5-9627-ef6db2b7eb7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClassGroup.mk_canonicalEquiv (K' : Type*) [Field K'] [Algebra R K'] [IsFractionRing R K']
    (I : (FractionalIdeal R⁰ K)ˣ) :
    ClassGroup.mk (Units.map (↑(canonicalEquiv R⁰ K K')) I : (FractionalIdeal R⁰ K')ˣ) =
      ClassGroup.mk I := by
  rw [ClassGroup.mk, MonoidHom.comp_apply, ← MonoidHom.comp_apply (Units.map _), ← Units.map_comp, ←
      RingEquiv.coe_monoidHom_trans, FractionalIdeal.canonicalEquiv_trans_canonicalEquiv]
  rfl
#align class_group.mk_canonical_equiv ClassGroup.mk_canonicalEquiv

/-- Send a nonzero integral ideal to an invertible fractional ideal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f9e1fb661d6034f3f85281fb550d5cc66e25ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
