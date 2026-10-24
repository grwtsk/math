# adaptiveSampledHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d192ce17d80518a5b7d3ebc51214489edda23ec38b43bcab3ba5369384ed1c3f",
  "kind": "def",
  "lexical_name": "adaptiveSampledHead",
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
  "slug": "adaptivesampledhead--85d8a9d5f33581d7ccba0d5e",
  "source": {
    "blob": "d420ed33979aae04a58f334b40b5ebda53c3060a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts/Variantbf257339dca1fdf6ea5b2e6f42607d435884492233eba4b1fbd531f3f605ba3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85d8a9d5f33581d7ccba0d5e45861f02d4c9d3ad1c352d50f6ddb2f43a8b288f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts/Variantbf257339dca1fdf6ea5b2e6f42607d435884492233eba4b1fbd531f3f605ba3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d192ce17d80518a5b7d3ebc51214489edda23ec38b43bcab3ba5369384ed1c3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adaptiveSampledHead (A : ℝ) : ℝ :=
  (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A),
    vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
      Real.log k * sourcePlainWeight A ((d * k : ℕ) : ℝ))) -
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A), vonMangoldt m *
      (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        sourcePlainWeight A ((d * m * k : ℕ) : ℝ))))

/-- A genuine source identity, including natural floors, endpoints and every prime power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts/Variantbf257339dca1fdf6ea5b2e6f42607d435884492233eba4b1fbd531f3f605ba3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts/Variantbf257339dca1fdf6ea5b2e6f42607d435884492233eba4b1fbd531f3f605ba3c.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d420ed33979aae04a58f334b40b5ebda53c3060a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
