# determines_iff_informationRadius_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:018f1863-83a0-77d8-99e6-704cbe8d80f5",
  "kind": "theorem",
  "lexical_name": "determines_iff_informationRadius_le",
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
  "slug": "determines-iff-informationradius-le--48ed3c4a2275ef14275f44ab",
  "source": {
    "blob": "d031cf8520ba784a8558cdb7a1215107ee8e1861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48ed3c4a2275ef14275f44abf9a73c6d66b636bf3290ed00277e3423ec5f843d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:018f1863-83a0-77d8-99e6-704cbe8d80f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem determines_iff_informationRadius_le (policy : ObservationPolicy Object Test Value)
    (target : Object → Result) (existsBudget : ∃ budget, DeterminesAt policy budget target)
    (budget : ℕ) :
    DeterminesAt policy budget target ↔ InformationRadius policy target existsBudget ≤ budget :=
  ⟨informationRadius_le policy target existsBudget,
    fun bound ↦ determines_of_budget_le bound
      (informationRadius_determines policy target existsBudget)⟩

namespace NotionDescentFixture

/-- A single test observes the whole Boolean vector and costs one unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d031cf8520ba784a8558cdb7a1215107ee8e1861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
