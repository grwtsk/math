# SpecTheoremKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13f17d8e24c4f67ff20c8797388d58d2af601361e099eaab1d9e2a3a2ef9b59c",
  "kind": "inductive",
  "lexical_name": "SpecTheoremKind",
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
  "slug": "spectheoremkind--30300051b1475e9c747fdca4",
  "source": {
    "blob": "7af6866c289dd6b6425486f17fdf675ce59a00ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 254,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant82e855eb661af67b9738b24e12d6b3b3986890ea3f064da900548e9c47879384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30300051b1475e9c747fdca43508a0fcb5cd56aef57dab630262ce974d272563",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant82e855eb661af67b9738b24e12d6b3b3986890ea3f064da900548e9c47879384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13f17d8e24c4f67ff20c8797388d58d2af601361e099eaab1d9e2a3a2ef9b59c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public inductive SpecTheoremKind where
  /-- A Hoare triple spec: `⦃P⦄ prog ⦃Q⦄`. -/
  | triple
  /--
  A simp/equational spec: `lhs = rhs`.
  The pattern is the LHS.
  When matched, the VCGen rewrites the program from `lhs` to `rhs` and continues.
  `etaArgs` is the number of extra arguments introduced by eta-expanding function-level equations
  (e.g., class projection unfold lemmas). These args need `congrFun` at instantiation time.
  -/
  | simp (etaArgs : Nat := 0)
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant82e855eb661af67b9738b24e12d6b3b3986890ea3f064da900548e9c47879384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant82e855eb661af67b9738b24e12d6b3b3986890ea3f064da900548e9c47879384.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7af6866c289dd6b6425486f17fdf675ce59a00ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
