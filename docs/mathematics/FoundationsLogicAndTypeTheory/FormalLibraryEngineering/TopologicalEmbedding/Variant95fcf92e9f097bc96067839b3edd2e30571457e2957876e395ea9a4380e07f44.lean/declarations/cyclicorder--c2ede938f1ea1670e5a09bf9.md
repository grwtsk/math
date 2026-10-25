# CyclicOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ff41f742214101c18ff027fb65123555f3d901f76fef9718aa1d3a84075ca7f",
  "kind": "structure",
  "lexical_name": "CyclicOrder",
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
  "slug": "cyclicorder--c2ede938f1ea1670e5a09bf9",
  "source": {
    "blob": "44b02a6a62e077a5de6b54c06aeb359ea8179b66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalEmbedding/Variant95fcf92e9f097bc96067839b3edd2e30571457e2957876e395ea9a4380e07f44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2ede938f1ea1670e5a09bf9f1a2d94d58cbc5e5525268d001b02d83375c24cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalEmbedding/Variant95fcf92e9f097bc96067839b3edd2e30571457e2957876e395ea9a4380e07f44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ff41f742214101c18ff027fb65123555f3d901f76fef9718aa1d3a84075ca7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CyclicOrder (A : Type uVertex) where
  between : A → A → A → Prop
  distinct :
    ∀ {a b c}, between a b c → a ≠ b ∧ b ≠ c ∧ a ≠ c
  cyclic : ∀ {a b c}, between a b c → between b c a
  asymmetric : ∀ {a b c}, between a b c → ¬ between c b a
  transitive :
    ∀ {a b c d}, between a b c → between a c d → between a b d
  total :
    ∀ {a b c}, a ≠ b → b ≠ c → a ≠ c →
      between a b c ∨ between c b a

/-- A map preserves the declared cyclic orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalEmbedding/Variant95fcf92e9f097bc96067839b3edd2e30571457e2957876e395ea9a4380e07f44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalEmbedding/Variant95fcf92e9f097bc96067839b3edd2e30571457e2957876e395ea9a4380e07f44.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b02a6a62e077a5de6b54c06aeb359ea8179b66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
