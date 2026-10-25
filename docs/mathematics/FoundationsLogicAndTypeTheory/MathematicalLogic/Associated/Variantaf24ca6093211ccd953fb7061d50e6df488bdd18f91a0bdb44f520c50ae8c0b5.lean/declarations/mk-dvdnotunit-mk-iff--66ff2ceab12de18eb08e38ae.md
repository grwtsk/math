# mk_dvdNotUnit_mk_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bcec82955439a00366e57972c92e5f2e341947b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 683,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5de2308-3001-a5ac-2d9e-def77428b294",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:597358a2-67ad-5f21-4825-b76688269772",
  "kind": "theorem",
  "lexical_name": "mk_dvdNotUnit_mk_iff",
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
  "slug": "mk-dvdnotunit-mk-iff--66ff2ceab12de18eb08e38ae",
  "source": {
    "blob": "2bcec82955439a00366e57972c92e5f2e341947b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 694,
    "line": 683,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variantaf24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66ff2ceab12de18eb08e38ae738dc793b59e63485f99f7261c73a0bd62741649",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variantaf24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:597358a2-67ad-5f21-4825-b76688269772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_dvdNotUnit_mk_iff {a b : M} :
    DvdNotUnit (Associates.mk a) (Associates.mk b) ↔ DvdNotUnit a b := by
  simp only [DvdNotUnit, mk_ne_zero, mk_surjective.exists, isUnit_mk, mk_mul_mk,
    mk_eq_mk_iff_associated, Associated.comm (x := b)]
  refine Iff.rfl.and ?_
  constructor
  · rintro ⟨x, hx, u, rfl⟩
    refine ⟨x * u, ?_, mul_assoc ..⟩
    simpa
  · rintro ⟨x, ⟨hx, rfl⟩⟩
    use x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variantaf24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variantaf24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bcec82955439a00366e57972c92e5f2e341947b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
