# upperLogWeight_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ef91e4b-db5a-4b80-5482-a923d1c506ed",
  "kind": "theorem",
  "lexical_name": "upperLogWeight_integrable",
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
  "slug": "upperlogweight-integrable--691e636553f595c6ed005a95",
  "source": {
    "blob": "c4736f096fe9abfdcb2f68e22782fe4932304ed1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:691e636553f595c6ed005a957d8ab398b0085b36e378a25d6d990720377e4869",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ef91e4b-db5a-4b80-5482-a923d1c506ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperLogWeight_integrable (j : ℕ) :
    IntegrableOn (upperLogWeight j) (Ioi (1 : ℝ)) :=
  .of_integral_ne_zero (by rw [upperLogWeight_integral]; positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4736f096fe9abfdcb2f68e22782fe4932304ed1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
