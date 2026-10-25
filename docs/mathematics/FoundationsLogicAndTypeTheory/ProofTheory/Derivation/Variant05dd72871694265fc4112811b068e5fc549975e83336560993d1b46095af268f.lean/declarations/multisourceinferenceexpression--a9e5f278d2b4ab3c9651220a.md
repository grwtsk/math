# MultiSourceInferenceExpression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bed17342fcc63987cf5cf80d7629be82a78e2507223863ca7c200c901054c8b",
  "kind": "inductive",
  "lexical_name": "MultiSourceInferenceExpression",
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
  "slug": "multisourceinferenceexpression--a9e5f278d2b4ab3c9651220a",
  "source": {
    "blob": "7aed9cf8c44c5b20dbd74facbb00a3769ee52e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 556,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9e5f278d2b4ab3c9651220a88d7f7c2db1bc6d4bd6e1c8ec690290b4c7289e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bed17342fcc63987cf5cf80d7629be82a78e2507223863ca7c200c901054c8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive MultiSourceInferenceExpression
    {target : Theory.{uTO, uTP}}
    (SourceIndex : Type uNode)
    (sourceProposition : SourceIndex → target.Proposition) :
    target.Proposition → Type (max (uNode + 1) uTP) where
  | source (index : SourceIndex) :
      MultiSourceInferenceExpression SourceIndex sourceProposition
        (sourceProposition index)
  | inference
      {PremiseIndex : Type uNode}
      {premiseProposition : PremiseIndex → target.Proposition}
      {conclusion : target.Proposition}
      (artifact : VersionId)
      (premises : ∀ index,
        MultiSourceInferenceExpression SourceIndex sourceProposition
          (premiseProposition index))
      (rule : (∀ index, target.ProofObject (premiseProposition index)) →
        target.ProofObject conclusion) :
      MultiSourceInferenceExpression SourceIndex sourceProposition conclusion

namespace MultiSourceInferenceExpression

/-- Kernel interpretation of a typed expression from exact source proof objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aed9cf8c44c5b20dbd74facbb00a3769ee52e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
