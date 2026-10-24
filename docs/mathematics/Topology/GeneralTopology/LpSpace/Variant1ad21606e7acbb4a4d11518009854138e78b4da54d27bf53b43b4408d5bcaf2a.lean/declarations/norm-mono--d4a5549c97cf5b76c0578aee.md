# norm_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f830ee9-0e24-0da2-28e1-99870dc0da27",
  "kind": "lemma",
  "lexical_name": "norm_mono",
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
  "slug": "norm-mono--d4a5549c97cf5b76c0578aee",
  "source": {
    "blob": "4237fcde64141bdca7beabfd7e94fd483f08050b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 653,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant1ad21606e7acbb4a4d11518009854138e78b4da54d27bf53b43b4408d5bcaf2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4a5549c97cf5b76c0578aee40520d723c4ad7eecb4ddc31e955a0327907997b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variant1ad21606e7acbb4a4d11518009854138e78b4da54d27bf53b43b4408d5bcaf2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f830ee9-0e24-0da2-28e1-99870dc0da27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 653–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_mono {F : α → Type*} [∀ i, NormedAddCommGroup (F i)]
    {p : ℝ≥0∞} (hp : p ≠ 0) {x : lp E p} {y : lp F p} (h : ∀ i, ‖x i‖ ≤ ‖y i‖) :
    ‖x‖ ≤ ‖y‖ := by
  obtain (rfl | rfl | hp) := p.trichotomy
  · exact hp rfl |>.elim
  · exact norm_le_of_forall_le (by positivity) fun i ↦ (h i).trans <| norm_apply_le_norm hp y i
  · exact norm_le_of_forall_sum_le hp (norm_nonneg' _) fun s ↦ calc
      ∑ i ∈ s, ‖x i‖ ^ p.toReal
      _ ≤ ∑ i ∈ s, ‖y i‖ ^ p.toReal := by gcongr with i _; exact h i
      _ ≤ ‖y‖ ^ p.toReal := sum_rpow_le_norm_rpow hp y s

end ComparePointwise

section IsBoundedSMul

variable [NormedRing 𝕜] [NormedRing 𝕜']
variable [∀ i, Module 𝕜 (E i)] [∀ i, Module 𝕜' (E i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant1ad21606e7acbb4a4d11518009854138e78b4da54d27bf53b43b4408d5bcaf2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant1ad21606e7acbb4a4d11518009854138e78b4da54d27bf53b43b4408d5bcaf2a.lean#L653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4237fcde64141bdca7beabfd7e94fd483f08050b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
