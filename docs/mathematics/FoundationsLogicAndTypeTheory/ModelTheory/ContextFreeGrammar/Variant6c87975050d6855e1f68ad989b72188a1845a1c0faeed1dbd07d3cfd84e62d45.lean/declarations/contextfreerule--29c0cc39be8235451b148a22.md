# ContextFreeRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf00f3cd2f144142be5619ce7626f52fb073ae8ba14a96d7b3508e52b540039f",
  "kind": "structure",
  "lexical_name": "ContextFreeRule",
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
  "slug": "contextfreerule--29c0cc39be8235451b148a22",
  "source": {
    "blob": "827ebbb826dd1681d864061e0718342b1424589a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ContextFreeGrammar/Variant6c87975050d6855e1f68ad989b72188a1845a1c0faeed1dbd07d3cfd84e62d45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29c0cc39be8235451b148a22064d0ec2d418cfbaa3dde8a5845b325afd459c17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/ContextFreeGrammar/Variant6c87975050d6855e1f68ad989b72188a1845a1c0faeed1dbd07d3cfd84e62d45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf00f3cd2f144142be5619ce7626f52fb073ae8ba14a96d7b3508e52b540039f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContextFreeRule (T N : Type*) where
  /-- Input nonterminal a.k.a. left-hand side. -/
  input : N
  /-- Output string a.k.a. right-hand side. -/
  output : List (Symbol T N)
deriving DecidableEq, Repr

-- See https://github.com/leanprover/lean4/issues/10295
attribute [nolint unusedArguments] instReprContextFreeRule.repr

/-- Context-free grammar that generates words over the alphabet `T` (a type of terminals). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/ContextFreeGrammar/Variant6c87975050d6855e1f68ad989b72188a1845a1c0faeed1dbd07d3cfd84e62d45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ContextFreeGrammar/Variant6c87975050d6855e1f68ad989b72188a1845a1c0faeed1dbd07d3cfd84e62d45.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `827ebbb826dd1681d864061e0718342b1424589a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
