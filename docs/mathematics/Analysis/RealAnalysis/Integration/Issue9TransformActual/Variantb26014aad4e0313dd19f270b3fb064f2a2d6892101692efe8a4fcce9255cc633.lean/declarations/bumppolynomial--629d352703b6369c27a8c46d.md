# bumpPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fe1a18a6c813b61263625e448325c5e783f97311076f11d9fb464f155260565",
  "kind": "def",
  "lexical_name": "bumpPolynomial",
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
  "slug": "bumppolynomial--629d352703b6369c27a8c46d",
  "source": {
    "blob": "4cdf8c86c86d4cd6d6c1e17160e3d6e90cac4bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 14,
    "line": 13,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:629d352703b6369c27a8c46d8083b1b1a682bb51784a58157015d8b60696071d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fe1a18a6c813b61263625e448325c5e783f97311076f11d9fb464f155260565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–14.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bumpPolynomial (A : ℂ) : ℂ[X] := (C (A^2) - X^2)^4

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cdf8c86c86d4cd6d6c1e17160e3d6e90cac4bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
