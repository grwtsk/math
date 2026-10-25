# normal_app_head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:408d37af-f0c7-39d4-d84e-e5c56dea23b0",
  "kind": "theorem",
  "lexical_name": "normal_app_head",
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
  "slug": "normal-app-head--fe7a1a967acf1786b85d5e49",
  "source": {
    "blob": "03a59ae80cfd3670ac254fd0e2cbd8a54e4e0c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 587,
    "line": 569,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe7a1a967acf1786b85d5e49a31200659c397fcad11234e6110d67f6b1705534",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:408d37af-f0c7-39d4-d84e-e5c56dea23b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–587.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_app_head {Γ : List (Expr S)} {f n : Expr S} {s : S}
    (ht : HasType P Γ (.app f n) (.sort s)) (hn : Normal (.app f n)) :
    ∃ i, head (.app f n) = some i := by
  have hneutral {M : Expr S} (h : Neutral M) : ∃ i, head M = some i := by
    induction h with
    | var i => exact ⟨i,rfl⟩
    | app h ih => exact ih
  obtain ⟨s,he⟩ | h | ⟨D,E,he⟩ := ht.sorted_normal_shape hn
  · cases he
  · exact hneutral h
  · cases he

variable (hC : IsComponent (PrimaryEdge P) C)
variable (hno : ∀ {I J K}, ProfileTriple P I J K → I ∈ C → J ∈ C → K ∈ C → False)
include hC hno hw

open Classical in
/-- The one-child polarity comparison at a generic normal type. The post-type
may have arbitrary newly exposed normal constructors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03a59ae80cfd3670ac254fd0e2cbd8a54e4e0c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
