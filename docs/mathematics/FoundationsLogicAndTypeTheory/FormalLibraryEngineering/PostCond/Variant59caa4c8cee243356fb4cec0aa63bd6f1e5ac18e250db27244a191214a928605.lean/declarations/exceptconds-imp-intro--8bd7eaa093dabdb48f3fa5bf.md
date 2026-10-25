# ExceptConds.imp_intro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf28c467-73d5-e90e-f836-e52fa5997ff9",
  "kind": "theorem",
  "lexical_name": "ExceptConds.imp_intro",
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
  "slug": "exceptconds-imp-intro--8bd7eaa093dabdb48f3fa5bf",
  "source": {
    "blob": "f64f9c0b07722e346fce05f277ea13625593d257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 279,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bd7eaa093dabdb48f3fa5bf9ec90dfd25e05e371ad9eed6b8e12bccc9f55268",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf28c467-73d5-e90e-f836-e52fa5997ff9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExceptConds.imp_intro {P Q R : ExceptConds ps} (h : P ∧ₑ Q ⊢ₑ R) : P ⊢ₑ Q →ₑ R := by
  induction ps
  case pure => trivial
  case arg ih => exact ih h
  case except ε ps ih => simp_all [entails, SPred.imp_intro]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f64f9c0b07722e346fce05f277ea13625593d257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
