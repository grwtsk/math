# BuilderState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f08739c9d8c50dcf74271d753fbe1028592f3f6de9e2bc8f5df7f5504ec8b9b",
  "kind": "structure",
  "lexical_name": "BuilderState",
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
  "slug": "builderstate--6c8c07f30aa6a8d476e44ee6",
  "source": {
    "blob": "ceaa60919b31e1d59611bf567e38ec19eaf81083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant708ae8659fd51966c372383b0141019ea3265bbe54e8f2a9d1732125d53b6430.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c8c07f30aa6a8d476e44ee62260ce0892c191629b9108610da7f1d257ca4506",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant708ae8659fd51966c372383b0141019ea3265bbe54e8f2a9d1732125d53b6430.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f08739c9d8c50dcf74271d753fbe1028592f3f6de9e2bc8f5df7f5504ec8b9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BuilderState where
  /--
  We keep around a substitution here because we run a second trivial structure elimination when
  converting to impure. This elimination is aware of the fact that `Void` is irrelevant while the first
  one in isn't because we are still pure. However, impure does not allow us to have bindings of
  the form `let x := y` which might occur when for example projecting out of a trivial structure
  where previously a binding would've been `let x := proj y i` and now becomes `let x := y`.
  For this reason we carry around these kinds of bindings in this substitution and apply it whenever
  we access an fvar in the conversion.
  -/
  subst : LCNF.FVarSubst .pure := {}
  /--
  For each join point, tracks which parameters are computationally relevant (i.e. not void or erased).
  -/
  jpParamMask : Std.HashMap FVarId (Array Bool) := {}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant708ae8659fd51966c372383b0141019ea3265bbe54e8f2a9d1732125d53b6430.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant708ae8659fd51966c372383b0141019ea3265bbe54e8f2a9d1732125d53b6430.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceaa60919b31e1d59611bf567e38ec19eaf81083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
