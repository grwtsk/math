# rootVariablesAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:092e4d53e942d90ebda5e3b1124363a1aa19857ff2fb8170bc0b06b0b8afbc07",
  "kind": "def",
  "lexical_name": "rootVariablesAll",
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
  "slug": "rootvariablesall--34b85780fbeb0ecfbd87ca66",
  "source": {
    "blob": "a9bc84ea76dd5c4f657f0065ba58f81b1c558886",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 252,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34b85780fbeb0ecfbd87ca668df4d113f0ba9f6c50f6c384f1f18cbcafe7afa0",
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

Occurrence: `declaration:092e4d53e942d90ebda5e3b1124363a1aa19857ff2fb8170bc0b06b0b8afbc07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def rootVariablesAll
      {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (RawDer K) js → Finset K.RootVariable
    | .nil => ∅
    | .cons head tail =>
        letI := K.rootVariableDecidableEq
        rootVariables head ∪ rootVariablesAll tail
end

mutual
  /--
  **Architectural problem:** Leaf provenance must survive structural planning.
  **Important data and indices:** Origins are selected by `K` and attached only to leaves.
  **Type-enforced invariant:** Internal rules cannot directly manufacture origins.
  **Layer boundary:** Provenance labels are metadata, not proof authority.
  **Worked example:** The identity body reports `.introducedLocal`.
  **Used by:** Provenance audits and `leafOrigins_comp`.
  **Proof idea:** Union the current rule's leaf set with child origins.
  **Equality notion:** Results use exact finite-set equality.
  **Boundary cases:** Missing leaf provenance contributes `∅`.
  **Validation consequence:** Structural compilation can be checked not to lose origins.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RawDerivation/Variant258997cabbdb126b0f22a5f177083136ec6ffbe0c4b02f9aad3fdeb38ae52b94.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9bc84ea76dd5c4f657f0065ba58f81b1c558886` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
