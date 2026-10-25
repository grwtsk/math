# exists_inStage_behavior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef0cfb69-2ac9-89cd-e1fe-a66754fd38ec",
  "kind": "theorem",
  "lexical_name": "exists_inStage_behavior",
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
  "slug": "exists-instage-behavior--e4359b11a44f528508fb9667",
  "source": {
    "blob": "9938e61330ec24ac09118600ca0510ec25a8749e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 601,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant40eb30ab0a7d04fd0c11ff7a698d7882099f3cff31ce22b04a11bdb70dedfb49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4359b11a44f528508fb966791257319b80169cec9ead1aff46e3bafd56d2edf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant40eb30ab0a7d04fd0c11ff7a698d7882099f3cff31ce22b04a11bdb70dedfb49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef0cfb69-2ac9-89cd-e1fe-a66754fd38ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_inStage_behavior (b : B) (o : O) (n : ℕ)
    (t : Table Q V B O (Plus Q V B O))
    (hc : ∀ a a', mapContinue (restrict Q V B O n) a = mapContinue (restrict Q V B O n) a' →
      t.continuing a = t.continuing a')
    (he : ∀ a a', mapExit (restrict Q V B O n) a = mapExit (restrict Q V B O n) a' →
      t.exiting a = t.exiting a') :
    ∃ x, InStage (n + 1) x ∧ behavior Q V B O x = t := by
  obtain ⟨y, hy⟩ := (Table.relabel_range_iff (restrict_surjective b o n) t).mpr ⟨hc, he⟩
  exact ⟨embed Q V B O (n + 1) y, ⟨y, rfl⟩, hy⟩

/-- Slicing remains in the same finite minus stage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant40eb30ab0a7d04fd0c11ff7a698d7882099f3cff31ce22b04a11bdb70dedfb49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant40eb30ab0a7d04fd0c11ff7a698d7882099f3cff31ce22b04a11bdb70dedfb49.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9938e61330ec24ac09118600ca0510ec25a8749e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
