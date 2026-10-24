# PaperInputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b36e6484281f6524b1561092dd3f31fc1c2ddbf1b0547d51464865ee7a15bff9",
  "kind": "structure",
  "lexical_name": "PaperInputs",
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
  "slug": "paperinputs--9eb95188e8fb12815b3eaf94",
  "source": {
    "blob": "9f5b868e26ecc1e9d33afd56b11b123c931c3638",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 147,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9eb95188e8fb12815b3eaf940960bf8e9e0486f558310e20808bbd20325875c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b36e6484281f6524b1561092dd3f31fc1c2ddbf1b0547d51464865ee7a15bff9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PaperInputs (Z : ZeroConfig) : Prop where
  /-- H-EF  [prop:EF]/[eq:EF] -/
  EF : ExplicitFormulaPaper Z
  /-- H-RvM [eq:RvM] + local count [prop:tail] -/
  RvM : RiemannVonMangoldt Z
  /-- H-cheb [lem:cheb] -/
  cheb : ChebyshevMertens
  /-- H-MV [lem:MV], ∃ absolute constant -/
  MV : ∃ C : ℝ, 0 < C ∧ MVHilbert C
  /-- H-Γ [eq:mufacts] + Γ-halves of [eq:muints] -/
  Gamma : GammaFacts

end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f5b868e26ecc1e9d33afd56b11b123c931c3638` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
