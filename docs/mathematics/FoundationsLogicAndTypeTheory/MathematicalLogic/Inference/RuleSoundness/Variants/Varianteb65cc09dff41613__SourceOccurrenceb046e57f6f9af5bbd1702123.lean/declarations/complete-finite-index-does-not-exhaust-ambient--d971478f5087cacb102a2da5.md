# complete_finite_index_does_not_exhaust_ambient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a759f7d8-e3bc-4840-d37d-e7d38a361868",
  "kind": "theorem",
  "lexical_name": "complete_finite_index_does_not_exhaust_ambient",
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
  "slug": "complete-finite-index-does-not-exhaust-ambient--d971478f5087cacb102a2da5",
  "source": {
    "blob": "954e95a7f7a2902201f74f7dcc889de2e86a1ecc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 400,
    "path": "GRWTSK/Logic/Inference/RuleSoundness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d971478f5087cacb102a2da5309f7e84edadeef87cd5c6f172c8dec36d7c2f6f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrenceb046e57f6f9af5bbd1702123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a759f7d8-e3bc-4840-d37d-e7d38a361868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_finite_index_does_not_exhaust_ambient :
    falseConclusionChecker.Covers () ({()} : Finset Unit) (fun _ : Unit => false) ∧
      ¬ (∀ ambient : Bool, ∃ idx : Unit,
        idx ∈ ({()} : Finset Unit) ∧ (false : Bool) = ambient) ∧
      ¬ (∀ ambient : Bool, falseMeaning () ambient) := by
  constructor
  · intro idx member
    exact ⟨(), rfl, rfl⟩
  · constructor
    · intro exhausts
      obtain ⟨idx, member, aligned⟩ := exhausts true
      cases aligned
    · intro allMeaning
      have impossible : (true : Bool) = false := allMeaning true
      cases impossible

/-- Semantic target exhaustion can collapse distinct ambient source objects.
The pure ambient lemma therefore cannot establish identity or multiplicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrenceb046e57f6f9af5bbd1702123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Inference/RuleSoundness.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `954e95a7f7a2902201f74f7dcc889de2e86a1ecc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
