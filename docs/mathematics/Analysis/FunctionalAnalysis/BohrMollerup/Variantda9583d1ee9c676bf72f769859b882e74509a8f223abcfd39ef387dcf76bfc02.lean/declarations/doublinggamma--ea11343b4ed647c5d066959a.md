# doublingGamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67f496ff25cbe56708a4061c9e57f6b62c0020147a2047d79b3e6c016048b616",
  "kind": "def",
  "lexical_name": "doublingGamma",
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
  "slug": "doublinggamma--ea11343b4ed647c5d066959a",
  "source": {
    "blob": "bfdb7d3c3585c295f3b1919953b4ddae45190113",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 449,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea11343b4ed647c5d066959a72e58bb69bf76e1950dbcdaf8e15878fc006bb77",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67f496ff25cbe56708a4061c9e57f6b62c0020147a2047d79b3e6c016048b616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def doublingGamma (s : ℝ) : ℝ :=
  Gamma (s / 2) * Gamma (s / 2 + 1 / 2) * 2 ^ (s - 1) / sqrt π
#align real.doubling_Gamma Real.doublingGamma

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfdb7d3c3585c295f3b1919953b4ddae45190113` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
