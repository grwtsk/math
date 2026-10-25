# reconstruct_composed_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecbf22e9-70d9-4122-e7d5-83492dc8643e",
  "kind": "theorem",
  "lexical_name": "reconstruct_composed_cover",
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
  "slug": "reconstruct-composed-cover--3ce1e88a94486e2d8a24296b",
  "source": {
    "blob": "de3615aa257e048d272585e2db475f8cd582bbde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ce1e88a94486e2d8a24296b66ff731a4dbe7ef17f9ceea81f870afafc6143fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecbf22e9-70d9-4122-e7d5-83492dc8643e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reconstruct_composed_cover {J : Type u} {I : J → Type u}
    (A : Set X) (targets : J → Set X) (C : ∀ j, I j → Set X)
    (htarget : A ⊆ ⋃ j, targets j) (hlocal : ∀ j, targets j ⊆ ⋃ i, C j i) :
    A = ⋃ p : Σ j, I j, A ∩ C p.1 p.2 := by
  apply reconstruct_of_cover
  intro x hx
  obtain ⟨j, hj⟩ := Set.mem_iUnion.mp (htarget hx)
  obtain ⟨i, hi⟩ := Set.mem_iUnion.mp (hlocal j hj)
  exact Set.mem_iUnion.mpr ⟨⟨j, i⟩, hi⟩

/-- An equivalence preserves fragment size without crossing cardinal universes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de3615aa257e048d272585e2db475f8cd582bbde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
