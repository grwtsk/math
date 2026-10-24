# isAlgClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5a16e4c95a5ef3649795dd64aae7245ca207172d847d9fd2c3aa50970b9cddc",
  "kind": "instance",
  "lexical_name": "isAlgClosure",
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
  "slug": "isalgclosure--8db757a810192ffc575b0faa",
  "source": {
    "blob": "69e9e534da228d65a181c54805e278e4d0dc068b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 180,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8db757a810192ffc575b0faa4b2551cf1a4fc212da2eff91029fa150f980e12b",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5a16e4c95a5ef3649795dd64aae7245ca207172d847d9fd2c3aa50970b9cddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isAlgClosure [IsAlgClosed E] : IsAlgClosure F (algebraicClosure F E) :=
  ⟨(IsAlgClosed.algebraicClosure_eq_bot_iff _ E).mp (algebraicClosure_eq_bot F E),
    isAlgebraic F E⟩

/-- The algebraic closure of `F` in `E` is equal to `E` if and only if `E / F` is
algebraic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e9e534da228d65a181c54805e278e4d0dc068b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
