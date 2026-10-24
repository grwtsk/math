# SourceFixedCertifiedLayer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58d10af85a2da323b6ae5a2e07edc9e89c216758d6f2ca021c40da57a73f0ccd",
  "kind": "structure",
  "lexical_name": "SourceFixedCertifiedLayer",
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
  "slug": "sourcefixedcertifiedlayer--84952bd6f201827975f72b7c",
  "source": {
    "blob": "7d05c7cc230dbaee4ffa3aa494bc6e65e8342488",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 44,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Architecture/Variant074b49b8b9270415ab01dce481be73ac853c877ef43449c43735c610dd3dd55a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84952bd6f201827975f72b7c3d155c7c20fb08a512260dcadda5107ec7aacddf",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Architecture/Variant074b49b8b9270415ab01dce481be73ac853c877ef43449c43735c610dd3dd55a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58d10af85a2da323b6ae5a2e07edc9e89c216758d6f2ca021c40da57a73f0ccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SourceFixedCertifiedLayer
    (State : Type u) (A : Type u) (B : Type u)
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    (algebra : ConvolutionInvolution A)
    (diffuser : LinearDiffuser B)
    (transport : CompatibleTransport A B algebra diffuser) where
  layer : CertifiedLayer State A B algebra diffuser transport
  accepted_eq_source :
    ∀ source accepted,
      layer.step source = .accepted accepted →
        accepted = source

namespace SourceFixedCertifiedLayer

variable
    {State A B : Type u}
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    {algebra : ConvolutionInvolution A}
    {diffuser : LinearDiffuser B}
    {transport : CompatibleTransport A B algebra diffuser}

/-- Evaluate the analytic layer; authority is supplied only by
`accepted_eq_source`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Architecture/Variant074b49b8b9270415ab01dce481be73ac853c877ef43449c43735c610dd3dd55a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Architecture/Variant074b49b8b9270415ab01dce481be73ac853c877ef43449c43735c610dd3dd55a.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d05c7cc230dbaee4ffa3aa494bc6e65e8342488` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
