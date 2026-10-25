# allOrderedMinorsPos_of_strictlyPositive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04558ef2-7186-7431-ddef-e7a41e4a5294",
  "kind": "theorem",
  "lexical_name": "allOrderedMinorsPos_of_strictlyPositive",
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
  "slug": "allorderedminorspos-of-strictlypositive--b3b6351e4cf17b3b4d089ec8",
  "source": {
    "blob": "f084a63d7d104b969e1917d5581751063d5cffe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant998b6b1f5e09abe17f5c8a9eedb87bdd20ccc572f7e676a54ea3ccfb0766c909.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3b6351e4cf17b3b4d089ec8223c118a3ec1815917500a0d979a86b485449652",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant998b6b1f5e09abe17f5c8a9eedb87bdd20ccc572f7e676a54ea3ccfb0766c909.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04558ef2-7186-7431-ddef-e7a41e4a5294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem allOrderedMinorsPos_of_strictlyPositive
    (A : Matrix (Fin 2) (Fin 4) ℝ) (h : (ofMatrix A).StrictlyPositive) :
    AllOrderedMinorsPos A := by
  rcases h with ⟨h12, h13, h14, h23, h24, h34⟩
  have hp : ∀ i j : Fin 4, i < j → 0 < minor₂ A i j := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> simp_all [ofMatrix]
  intro I
  rw [orderedMinor_two]
  exact hp (I 0) (I 1) (I.strictMono (by decide))

/-- The analogous finite-to-ordered bridge on the nonnegative boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant998b6b1f5e09abe17f5c8a9eedb87bdd20ccc572f7e676a54ea3ccfb0766c909.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant998b6b1f5e09abe17f5c8a9eedb87bdd20ccc572f7e676a54ea3ccfb0766c909.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f084a63d7d104b969e1917d5581751063d5cffe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
