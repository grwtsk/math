# Hilbert.identityOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b8c1ee00aa8154953a0ec8d8dd2ca7f3588ea252b45c97c2dc1a09a49d4b2f0",
  "kind": "def",
  "lexical_name": "Hilbert.identityOperator",
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
  "slug": "hilbert-identityoperator--3cf8f74528d87a8ee6276b5e",
  "source": {
    "blob": "c93e68989aefad6b3c3443a1551f123a09f118c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 41,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cf8f74528d87a8ee6276b5edb083069ced21b462576f1f4261608c7c1e9be04",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b8c1ee00aa8154953a0ec8d8dd2ca7f3588ea252b45c97c2dc1a09a49d4b2f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hilbert.identityOperator
    (H : Hilbert.Space.{u, v}) :
    Hilbert.LinearOperator H H where
  domain := Hilbert.fullDomain H
  map := fun x => x
  mapsDomain := True
  mapsDomainCertified := trivial
  linear := True
  linearCertified := trivial
  boundary := [
    "Identity operator interface example.",
    "This example does not supply spectral theorem data."
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Operator/Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93e68989aefad6b3c3443a1551f123a09f118c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
