# CarrierBalancedReport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff90717a0db927a26d57c1ba49f705c3cba17b09223596ad49f97aa86f1d0750",
  "kind": "structure",
  "lexical_name": "CarrierBalancedReport",
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
  "slug": "carrierbalancedreport--6fd5370dbc293f6719b1c9fc",
  "source": {
    "blob": "d8b50e9ea8322af2177c535d35a213c2adf6104f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 141,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6/Variant3d00904e2fe566b675316bba2d8b2f1adc36ee806c7de806be1b6906aa4ca6e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fd5370dbc293f6719b1c9fcf08786c7f250f02d3b4e6fb6cecd6b9373b8bf24",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6/Variant3d00904e2fe566b675316bba2d8b2f1adc36ee806c7de806be1b6906aa4ca6e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff90717a0db927a26d57c1ba49f705c3cba17b09223596ad49f97aa86f1d0750`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CarrierBalancedReport (T : SourceTreeState) where
  sourceTreeBalanced : SourceTreeBalanced T
  sourceBSDLocal : forall nu : SourcePlace, SourceBSDLocal T nu
  explicitFormulaClosed : ExplicitFormulaClosed T
  carrierInvolutive : CarrierInvolutive T
  carrierCurvatureClosed : CarrierCurvatureClosed T
  carrierTorsionClosed : CarrierTorsionClosed T

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6/Variant3d00904e2fe566b675316bba2d8b2f1adc36ee806c7de806be1b6906aa4ca6e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6/Variant3d00904e2fe566b675316bba2d8b2f1adc36ee806c7de806be1b6906aa4ca6e9.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b50e9ea8322af2177c535d35a213c2adf6104f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
