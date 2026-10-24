# tail_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42302cdb-cb21-16d8-0953-a0bc4520f4df",
  "kind": "theorem",
  "lexical_name": "tail_small",
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
  "slug": "tail-small--5028f701f6beac361d235c2d",
  "source": {
    "blob": "570e76c38ddee829cb5740278651fdf506e91cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5028f701f6beac361d235c2d84b8c22358aceca0687151b46da8363d1464496a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42302cdb-cb21-16d8-0953-a0bc4520f4df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_small :
    7 * (3914 : ℝ) ^ 6 * exp (-(1957 : ℝ)) / (log 2) ^ 8 ≤ (1 : ℝ) / 1000000 := by
  have h := (show ∀ y ∈ Set.Icc (3914 : ℝ) 3914,
      7 * y ^ 6 * exp (-y / 2) / (log 2) ^ 8 ≤ (1 : ℝ) / 1000000 by
    interval_bound 20) 3914 ⟨le_refl _, le_refl _⟩
  simpa [show (-(3914 : ℝ) / 2) = -(1957 : ℝ) by ring] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `570e76c38ddee829cb5740278651fdf506e91cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
