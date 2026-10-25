# decideFixedKnotProblem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02bacb5ce8e978d5f02ae4def85db6527340111901962eb8b94833afa468553f",
  "kind": "def",
  "lexical_name": "decideFixedKnotProblem",
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
  "slug": "decidefixedknotproblem--98effaf9bb655de1ee1aa770",
  "source": {
    "blob": "5bbbb4ec666a4bba55a48f04ba6dd0469b84efae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Decidability/Variant91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98effaf9bb655de1ee1aa7703d710e9b91a814e92c70fa50668d2e35644ee83d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Decidability/Variant91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02bacb5ce8e978d5f02ae4def85db6527340111901962eb8b94833afa468553f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decideFixedKnotProblem
    (D : FixedKnotDecisionCapability T)
    (R : CurrentReduction T)
    (K : T.Knot) :
    Decidable (FixedKnotProblem T K) :=
  match D.decideNontrivial K with
  | isFalse hTrivial =>
      isFalse fun hProblem => hTrivial hProblem.1
  | isTrue hNontrivial =>
      match D.decideKnotCounterexample R K hNontrivial with
      | isTrue hCounterexample =>
          isTrue ⟨hNontrivial, hCounterexample⟩
      | isFalse hCounterexample =>
          isFalse fun hProblem => hCounterexample hProblem.2

/-- Every fixed knot receives a certified yes/no answer under the capabilities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Decidability/Variant91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Decidability/Variant91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bbbb4ec666a4bba55a48f04ba6dd0469b84efae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
