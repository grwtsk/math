# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:542c068497b76eef4291e7382699e1ee2f57d7a713b3760cd2568dcfe186f48f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--582be9e0d8c1ace3058eb095",
  "source": {
    "blob": "bb093be81f328f40c7674823b619f19c00c5e23c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variantd5d6d470170a70ca9aa6850c68d7a6ff11701c9f3b1bce2612c955dd3d9c3d70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:582be9e0d8c1ace3058eb0954d054aa5b9cd800079e9775464ceb3bf38bda1e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variantd5d6d470170a70ca9aa6850c68d7a6ff11701c9f3b1bce2612c955dd3d9c3d70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:542c068497b76eef4291e7382699e1ee2f57d7a713b3760cd2568dcfe186f48f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ToString AtomicFact where
  toString fa := match fa with
  | .eq lhs rhs _ => s!"#{lhs} = #{rhs}"
  | .ne lhs rhs _ => s!"#{lhs} ≠ #{rhs}"
  | .le lhs rhs _ => s!"#{lhs} ≤ #{rhs}"
  | .nle lhs rhs _ => s!"¬ #{lhs} ≤ #{rhs}"
  | .lt lhs rhs _ => s!"#{lhs} < #{rhs}"
  | .nlt lhs rhs _ => s!"¬ #{lhs} < #{rhs}"
  | .isTop idx => s!"#{idx} := ⊤"
  | .isBot idx => s!"#{idx} := ⊥"
  | .isInf lhs rhs res => s!"#{res} := #{lhs} ⊓ #{rhs}"
  | .isSup lhs rhs res => s!"#{res} := #{lhs} ⊔ #{rhs}"

/-- State for `CollectFactsM`. It contains a map that maps a type to atomic facts collected for
this type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variantd5d6d470170a70ca9aa6850c68d7a6ff11701c9f3b1bce2612c955dd3d9c3d70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variantd5d6d470170a70ca9aa6850c68d7a6ff11701c9f3b1bce2612c955dd3d9c3d70.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb093be81f328f40c7674823b619f19c00c5e23c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
