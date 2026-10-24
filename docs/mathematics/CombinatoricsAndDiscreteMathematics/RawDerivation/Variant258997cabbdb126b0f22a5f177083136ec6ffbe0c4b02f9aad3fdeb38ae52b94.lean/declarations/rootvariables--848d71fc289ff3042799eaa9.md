# rootVariables

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:976e9559fa7832e8d4fe4d26036f37a242a0d478907c30941e61acb93ee44fb8",
  "kind": "def",
  "lexical_name": "rootVariables",
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
  "slug": "rootvariables--848d71fc289ff3042799eaa9",
  "source": {
    "blob": "a9bc84ea76dd5c4f657f0065ba58f81b1c558886",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 234,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:848d71fc289ff3042799eaa9319b58e9c6cd977a2794fd24246fc6a46cfa726c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:976e9559fa7832e8d4fe4d26036f37a242a0d478907c30941e61acb93ee44fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def rootVariables {K : KernelPresentation.{u}} {J : K.Judgment} :
      RawDer K J → Finset K.RootVariable
    | .node rule children =>
        letI := K.rootVariableDecidableEq
        K.ruleRootVariables rule ∪ rootVariablesAll children

  /--
  **Architectural problem:** Root-variable accounting must cover every premise.
  **Important data and indices:** `js` fixes the heterogeneous child list.
  **Type-enforced invariant:** Only indexed children are folded.
  **Layer boundary:** This is an auxiliary metadata union.
  **Worked example:** Empty premises contribute no root variables.
  **Used by:** `rootVariables` and its compilation theorem.
  **Proof idea:** Union the head result with the recursive tail result.
  **Equality notion:** Results are exact finite sets.
  **Boundary cases:** `.nil` returns `∅`.
  **Validation consequence:** No indexed child is skipped in root accounting.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9bc84ea76dd5c4f657f0065ba58f81b1c558886` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
