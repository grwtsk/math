# stateCanonicalExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8af615203a304a0a57a728b15ba76261505936c3a163659e64c4aa0e8c9a137b",
  "kind": "def",
  "lexical_name": "stateCanonicalExpr",
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
  "slug": "statecanonicalexpr--6804ea85de284e3232b911ac",
  "source": {
    "blob": "4b4597a6e57f81205bf10775d267679832b3c0c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bee89e566bb6789071274f30c98e2be2f388ed84d833060b9323b8a294afe152DependencyProbe/Variantfff0abd26a8eb265caed612cdd53549f9ab027c23e226606d2f1bdf5f791f8c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6804ea85de284e3232b911acfcab84ebb6bfd3c32626961daf5ba32c26697fa7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bee89e566bb6789071274f30c98e2be2f388ed84d833060b9323b8a294afe152DependencyProbe/Variantfff0abd26a8eb265caed612cdd53549f9ab027c23e226606d2f1bdf5f791f8c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8af615203a304a0a57a728b15ba76261505936c3a163659e64c4aa0e8c9a137b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def stateCanonicalExpr : Expr → Expr
  | .app f a => .app (stateCanonicalExpr f) (stateCanonicalExpr a)
  | .lam _ t b i => .lam .anonymous (stateCanonicalExpr t) (stateCanonicalExpr b) i
  | .forallE _ t b i => .forallE .anonymous (stateCanonicalExpr t) (stateCanonicalExpr b) i
  | .letE _ t v b n => .letE .anonymous (stateCanonicalExpr t) (stateCanonicalExpr v) (stateCanonicalExpr b) n
  | .mdata _ e => stateCanonicalExpr e
  | .proj t i e => .proj t i (stateCanonicalExpr e)
  | e => e
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bee89e566bb6789071274f30c98e2be2f388ed84d833060b9323b8a294afe152DependencyProbe/Variantfff0abd26a8eb265caed612cdd53549f9ab027c23e226606d2f1bdf5f791f8c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bee89e566bb6789071274f30c98e2be2f388ed84d833060b9323b8a294afe152DependencyProbe/Variantfff0abd26a8eb265caed612cdd53549f9ab027c23e226606d2f1bdf5f791f8c6.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b4597a6e57f81205bf10775d267679832b3c0c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
