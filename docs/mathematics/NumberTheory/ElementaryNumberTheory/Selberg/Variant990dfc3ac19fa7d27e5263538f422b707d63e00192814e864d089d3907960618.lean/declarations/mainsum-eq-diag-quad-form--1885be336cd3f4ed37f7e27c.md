# mainSum_eq_diag_quad_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9ebcce06b6944c9d13099895314b98acc3835c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69252f7a-8f31-c621-f8c4-cf0867cbf7fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2be5e4b-906b-d91b-9063-7a0b4b456ada",
  "kind": "theorem",
  "lexical_name": "mainSum_eq_diag_quad_form",
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
  "slug": "mainsum-eq-diag-quad-form--1885be336cd3f4ed37f7e27c",
  "source": {
    "blob": "d9ebcce06b6944c9d13099895314b98acc3835c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 256,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1885be336cd3f4ed37f7e27c8bbf887d6df578b280faea04d2d35940e8d65302",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2be5e4b-906b-d91b-9063-7a0b4b456ada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mainSum_eq_diag_quad_form :
    mainSum (s := s.toBoundingSieve) μ⁺ =
      ∑ l ∈ divisors P,
        1 / g l *
          (∑ d ∈ divisors P, if l ∣ d then ν d * γ d else 0) ^ 2 :=
  by apply lambdaSquared_mainSum_eq_diag_quad_form

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9ebcce06b6944c9d13099895314b98acc3835c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
