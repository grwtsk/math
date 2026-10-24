# ExtractionPath.preserves_exclusions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c91d4c9f-444f-36c6-9abc-a3c9c609f0aa",
  "kind": "theorem",
  "lexical_name": "ExtractionPath.preserves_exclusions",
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
  "slug": "extractionpath-preserves-exclusions--b2701a85a92b811abc2bad8b",
  "source": {
    "blob": "f5bcb9e0af6c4715dd24f19cb96b9033d58dbb9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2701a85a92b811abc2bad8b37d9b3f76bfc18f3e7a05383709de414a3bdbfa4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c91d4c9f-444f-36c6-9abc-a3c9c609f0aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExtractionPath.preserves_exclusions {N k : ℕ} {s t : State N}
    (h : ExtractionPath s t k) : s.excluded ⊆ t.excluded := by
  obtain ⟨r⟩ := h.refines
  exact r.exclusions_preserved

/-- Every nonterminal checked residual admits a concrete strictly smaller step. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5bcb9e0af6c4715dd24f19cb96b9033d58dbb9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
