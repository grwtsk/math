# Subsingleton.exists_eq_pure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba896396-838f-dbc9-f1dc-4a77004aaa1d",
  "kind": "theorem",
  "lexical_name": "Subsingleton.exists_eq_pure",
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
  "slug": "subsingleton-exists-eq-pure--713e37a9e6d35a28794496a3",
  "source": {
    "blob": "a9ce1b79207490766aef9a84bc7c368ed4a1a3be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:713e37a9e6d35a28794496a3a98f8600966ca3005f6c4f6635d6082fe83ba65c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba896396-838f-dbc9-f1dc-4a77004aaa1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subsingleton.exists_eq_pure [l.NeBot] (hl : l.Subsingleton) : ∃ a, l = pure a := by
  rcases hl with ⟨s, hsl, hs⟩
  rcases exists_eq_singleton_iff_nonempty_subsingleton.2 ⟨nonempty_of_mem hsl, hs⟩ with ⟨a, rfl⟩
  refine ⟨a, (NeBot.le_pure_iff ‹_›).1 ?_⟩
  rwa [le_pure_iff]

/-- A filter is a subsingleton iff it is equal to `⊥` or to `pure a` for some `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantbb1c0910cf0399713a8a166c5ff6057cd8984fdc7cfc91de3bfefc6e94dbe464.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9ce1b79207490766aef9a84bc7c368ed4a1a3be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
