# log_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c593ca3-8738-c711-152f-6a0458b0bee9",
  "kind": "theorem",
  "lexical_name": "log_budget",
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
  "slug": "log-budget--ed38e458b6c9625ddadf55aa",
  "source": {
    "blob": "71cb6da724528108be732f12b16a6c30f815fb64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed38e458b6c9625ddadf55aae9059d5464c9a99cbfbad0c450e6c682140a8960",
  "verification": {
    "reference": "docs/verification/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c593ca3-8738-c711-152f-6a0458b0bee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_budget (β κ L η : ℝ) (hβ : 0 ≤ β) (hκ : 1 ≤ κ)
    (hL : 0 ≤ L) (hη : 0 ≤ η) (hbound : β ≤ κ*(L+η)) :
    Real.log (1+β) ≤ Real.log κ + Real.log (1+L+η) := by
  have hb : 1+β ≤ κ*(1+L+η) := by nlinarith
  have hh := Real.log_le_log (by positivity : 0 < 1+β) hb
  rw [Real.log_mul (by linarith : κ ≠ 0) (by positivity : 1+L+η ≠ 0)] at hh
  exact hh

/-- This constructor requires the all-depth source estimate; it does not create it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71cb6da724528108be732f12b16a6c30f815fb64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
