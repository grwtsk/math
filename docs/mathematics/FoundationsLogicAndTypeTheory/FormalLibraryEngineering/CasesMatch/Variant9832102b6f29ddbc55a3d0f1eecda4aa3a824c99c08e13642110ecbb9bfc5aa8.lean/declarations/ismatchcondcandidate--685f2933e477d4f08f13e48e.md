# isMatchCondCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f71a7b9d758c0bd326282e0c7f55fc1d5a24f3c08a4e5d93e96dcfbe927a3c9",
  "kind": "def",
  "lexical_name": "isMatchCondCandidate",
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
  "slug": "ismatchcondcandidate--685f2933e477d4f08f13e48e",
  "source": {
    "blob": "a989024dd4ef62a9c0cbd23974cad4b38e8b071c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:685f2933e477d4f08f13e48e420e7c4448305a1ab070a938846d25e11247e7f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f71a7b9d758c0bd326282e0c7f55fc1d5a24f3c08a4e5d93e96dcfbe927a3c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isMatchCondCandidate (e : Expr) : Bool :=
  e.isForall && go e
where
  go (e : Expr) : Bool :=
    if let .forallE _ d b _ := e then
      match_expr d with
      | Eq _ lhs _ => !lhs.hasLooseBVars && go b
      | HEq _ lhs _ _ => !lhs.hasLooseBVars && go b
      | _ => b.hasLooseBVar 0 && go b
    else
      e.isFalse

/--
Given a splitter alternative, annotate the terms that are `match`-expression
conditions corresponding to overlapping patterns.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a989024dd4ef62a9c0cbd23974cad4b38e8b071c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
