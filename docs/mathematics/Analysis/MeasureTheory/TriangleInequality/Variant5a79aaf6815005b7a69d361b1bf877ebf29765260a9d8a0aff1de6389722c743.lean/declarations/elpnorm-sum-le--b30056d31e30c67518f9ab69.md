# eLpNorm_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfe29d0b-b8c8-9983-7a59-c4f291fd4a7b",
  "kind": "theorem",
  "lexical_name": "eLpNorm_sum_le",
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
  "slug": "elpnorm-sum-le--b30056d31e30c67518f9ab69",
  "source": {
    "blob": "c8cbb62be0faeac38177c1a8e8caf5d962640490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 142,
    "path": "GRWTSK/Analysis/MeasureTheory/TriangleInequality/Variant5a79aaf6815005b7a69d361b1bf877ebf29765260a9d8a0aff1de6389722c743.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b30056d31e30c67518f9ab6925ec8ae5417880727879ef2b5bb0bbe54b5ce9b9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/TriangleInequality/Variant5a79aaf6815005b7a69d361b1bf877ebf29765260a9d8a0aff1de6389722c743.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfe29d0b-b8c8-9983-7a59-c4f291fd4a7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_sum_le [ContinuousAdd ε'] {ι} {f : ι → α → ε'} {s : Finset ι} (hp1 : 1 ≤ p) :
    eLpNorm (∑ i ∈ s, f i) p μ ≤ ∑ i ∈ s, eLpNorm (f i) p μ := by
  apply Finset.le_sum_of_subadditive (fun f : α → ε' => eLpNorm f p μ)
    eLpNorm_zero.le (fun f g ↦ eLpNorm_add_le hp1)

-- TODO: We can prove `eLpNorm_expect_le` once we have `Module ℚ≥0 ℝ≥0∞`

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/TriangleInequality/Variant5a79aaf6815005b7a69d361b1bf877ebf29765260a9d8a0aff1de6389722c743.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/TriangleInequality/Variant5a79aaf6815005b7a69d361b1bf877ebf29765260a9d8a0aff1de6389722c743.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8cbb62be0faeac38177c1a8e8caf5d962640490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
