# replaceArrowBinderNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a2c393d92bc6ab14393ffdfc9014fc945d6834d93770c349ede34248f3a8962",
  "kind": "def",
  "lexical_name": "replaceArrowBinderNames",
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
  "slug": "replacearrowbindernames--000239aba1e7772c78ab5ed4",
  "source": {
    "blob": "015f33d01dc9080041fe10e6e6abb2767f6d3f8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:000239aba1e7772c78ab5ed44c09dcb3860822f94ca1b8745f18ff4353f24d8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a2c393d92bc6ab14393ffdfc9014fc945d6834d93770c349ede34248f3a8962`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def replaceArrowBinderNames (type : Expr) (newNames : Array Name) : Expr :=
  go type 0
where
  go (type : Expr) (i : Nat) : Expr :=
    if h : i < newNames.size then
      match type with
      | .forallE n d b bi =>
        if n.hasMacroScopes then
          mkForall newNames[i] bi d (go b (i+1))
        else
          mkForall n bi d (go b (i+1))
      | _ => type
    else
      type

/--
Reorders constructor arguments to improve the effectiveness of the `fixedIndicesToParams` method.

The idea is quite simple. Given a constructor type of the form
```
(a₁ : A₁) → ... → (aₙ : Aₙ) → C b₁ ... bₘ
```
We try to find the longest prefix `b₁ ... bᵢ`, `i ≤ m` s.t.
- each `bₖ` is in `{a₁, ..., aₙ}`
- each `bₖ` only depends on variables in `{b₁, ..., bₖ₋₁}`

Then, it moves this prefix `b₁ ... bᵢ` to the front.

Remark: We only reorder implicit arguments that have macroscopes. See issue #1156.
The macroscope test is an approximation, we could have restricted ourselves to auto-implicit arguments.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015f33d01dc9080041fe10e6e6abb2767f6d3f8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
