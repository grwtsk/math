# eq_span_zeta_sub_one_of_liesOver'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f4a9032-8fea-5af1-53d5-47c5ef87bb8a",
  "kind": "theorem",
  "lexical_name": "eq_span_zeta_sub_one_of_liesOver'",
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
  "slug": "eq-span-zeta-sub-one-of-liesover--e278be110d857b015d01fcb6",
  "source": {
    "blob": "1a7f19b849fdbfd6c34175328163d2742bd6a5d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 263,
    "path": "GRWTSK/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e278be110d857b015d01fcb6f72b3918ddd8e0a23bbddf1f87917b65d60c7c9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f4a9032-8fea-5af1-53d5-47c5ef87bb8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_span_zeta_sub_one_of_liesOver' (P : Ideal (𝓞 K)) [hP₁ : P.IsPrime] [hP₂ : P.LiesOver 𝒑] :
    P = span {hζ.toInteger - 1} := by
  rw [← pow_one p] at hK hζ
  exact eq_span_zeta_sub_one_of_liesOver p 0 K hζ P

include hK in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a7f19b849fdbfd6c34175328163d2742bd6a5d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
