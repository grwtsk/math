# CPolynomialOn.add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:928e79b5-d47f-2f2e-aa3c-c7c1e7c5964f",
  "kind": "theorem",
  "lexical_name": "CPolynomialOn.add",
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
  "slug": "cpolynomialon-add--5df09e77d57284862416014d",
  "source": {
    "blob": "9baa8381560f64df4fc54cdfd38730f88a67d772",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 95,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CPolynomial/Variant6507fc44c37904feab9b4ea43b71c0d21d3a460ee0a30b4d019184e1cf6eba23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5df09e77d57284862416014d6d674b4f67ea9c05c771b03d650f38a95751c0a9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CPolynomial/Variant6507fc44c37904feab9b4ea43b71c0d21d3a460ee0a30b4d019184e1cf6eba23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:928e79b5-d47f-2f2e-aa3c-c7c1e7c5964f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CPolynomialOn.add {s : Set E} (hf : CPolynomialOn 𝕜 f s) (hg : CPolynomialOn 𝕜 g s) :
    CPolynomialOn 𝕜 (f + g) s :=
  fun z hz => (hf z hz).add (hg z hz)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CPolynomial/Variant6507fc44c37904feab9b4ea43b71c0d21d3a460ee0a30b4d019184e1cf6eba23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CPolynomial/Variant6507fc44c37904feab9b4ea43b71c0d21d3a460ee0a30b4d019184e1cf6eba23.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9baa8381560f64df4fc54cdfd38730f88a67d772` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
