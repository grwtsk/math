# synthesis_retention_embedChannel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5c0efb5-9ede-6e4d-4428-c38654a8038d",
  "kind": "theorem",
  "lexical_name": "synthesis_retention_embedChannel",
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
  "slug": "synthesis-retention-embedchannel--b2bc3010c1cf804bef8bdc12",
  "source": {
    "blob": "fbfe41df2b46edddadd57d6670362b07988997ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant28fad54a7aa3b7660ef5b16c3e4ad635c33b1660468ab9b8d5eebbf330e67fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2bc3010c1cf804bef8bdc12031d5ff236c699ce7e3433fda6258555ca148278",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant28fad54a7aa3b7660ef5b16c3e4ad635c33b1660468ab9b8d5eebbf330e67fe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5c0efb5-9ede-6e4d-4428-c38654a8038d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem synthesis_retention_embedChannel (q : ComplexL2) (I J : Finset ℕ)
    (ε δ : Bool) (c : ℕ → ℂ) :
    synthesis q J (retentionMatrix I J *ᵥ embedChannel I ε δ c) =
      finiteProfile q (I ∩ J) ε δ c := by
  rw [retention_embedChannel, synthesis_embedChannel, finiteProfile_restrict]

/-- Actual translation and angular duality are linear in the source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant28fad54a7aa3b7660ef5b16c3e4ad635c33b1660468ab9b8d5eebbf330e67fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant28fad54a7aa3b7660ef5b16c3e4ad635c33b1660468ab9b8d5eebbf330e67fe5.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbfe41df2b46edddadd57d6670362b07988997ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
