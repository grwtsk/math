# Integrable.comp_snd_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8b71b3a-5945-91c5-ef1b-9f62aeee4d37",
  "kind": "theorem",
  "lexical_name": "Integrable.comp_snd_iff",
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
  "slug": "integrable-comp-snd-iff--fe2e537f84cb7da776dc901c",
  "source": {
    "blob": "1801c1787071c513d02810bfe62707e7c4cb520e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 326,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variantcba9d4cc8a746c5f24960e850f54162414f8b420079baf26e37c7e8e7eaad49a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe2e537f84cb7da776dc901cf52747826c52e3da0d83064052811efc7da8c916",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Prod/Variantcba9d4cc8a746c5f24960e850f54162414f8b420079baf26e37c7e8e7eaad49a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8b71b3a-5945-91c5-ef1b-9f62aeee4d37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.comp_snd_iff [IsFiniteMeasure μ] {f : β → E} (hμ : μ ≠ 0) :
    Integrable (f ·.2) (μ.prod ν) ↔ Integrable f ν :=
  ⟨(.of_comp_snd · hμ), (.comp_snd · μ)⟩

omit [SFinite ν] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Prod/Variantcba9d4cc8a746c5f24960e850f54162414f8b420079baf26e37c7e8e7eaad49a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variantcba9d4cc8a746c5f24960e850f54162414f8b420079baf26e37c7e8e7eaad49a.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1801c1787071c513d02810bfe62707e7c4cb520e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
