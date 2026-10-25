# ProofGrammar.rule_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:476ab16a-6847-d610-81e0-31fa2d3a8258",
  "kind": "theorem",
  "lexical_name": "ProofGrammar.rule_sound",
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
  "slug": "proofgrammar-rule-sound--76b00ed2bf57533167fa15fa",
  "source": {
    "blob": "a41e6a839f21771719a8dfa2874427779d7b32cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76b00ed2bf57533167fa15fa458edf6c2742b8c675aab5747e7f7bfaa88de2a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:476ab16a-6847-d610-81e0-31fa2d3a8258`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ProofGrammar.rule_sound {Parameter Fact : Type*} (grammar : ProofGrammar Parameter)
    (parameter : Parameter) (meaning : Fact → Prop) (rule : Rule Fact)
    (inputs : (∀ x ∈ rule.premises, meaning x) → grammar.hypotheses parameter)
    (output : grammar.conclusion parameter → meaning rule.conclusion) :
    (∀ x ∈ rule.premises, meaning x) → meaning rule.conclusion :=
  fun premises => output (grammar.prove parameter (inputs premises))

/-- Identity composition grammar with its actual reflexive bridge witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant3940f4fabb1eab07d06956e0a22e74334ea797ece53ae179bba5df495c4f88c1.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a41e6a839f21771719a8dfa2874427779d7b32cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
