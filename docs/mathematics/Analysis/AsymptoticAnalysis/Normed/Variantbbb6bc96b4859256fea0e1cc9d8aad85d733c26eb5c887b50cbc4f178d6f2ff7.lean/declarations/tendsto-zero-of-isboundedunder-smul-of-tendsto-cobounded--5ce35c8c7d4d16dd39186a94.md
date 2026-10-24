# tendsto_zero_of_isBoundedUnder_smul_of_tendsto_cobounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4139685e-3d16-1186-1346-11a215933b2f",
  "kind": "lemma",
  "lexical_name": "tendsto_zero_of_isBoundedUnder_smul_of_tendsto_cobounded",
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
  "slug": "tendsto-zero-of-isboundedunder-smul-of-tendsto-cobounded--5ce35c8c7d4d16dd39186a94",
  "source": {
    "blob": "32c9420e5d37f8b4d36774645392bf66942cdfd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1134,
    "line": 1119,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ce35c8c7d4d16dd39186a94b1a7e0dafd7820b3c1edb9b22f4fdbe8aa4c61da",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4139685e-3d16-1186-1346-11a215933b2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1119–1134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_zero_of_isBoundedUnder_smul_of_tendsto_cobounded {f : α → K} {g : α → R}
    {l : Filter α} (hmul : IsBoundedUnder (· ≤ ·) l fun x ↦ ‖f x • g x‖)
    (hf : Tendsto f l (cobounded K)) :
    Tendsto g l (𝓝 0) := by
  obtain ⟨c, hc⟩ := hmul.eventually_le
  refine Metric.nhds_basis_closedBall.tendsto_right_iff.mpr fun ε hε0 ↦ ?_
  filter_upwards [hc, hasBasis_cobounded_norm.tendsto_right_iff.mp hf (c / ε) trivial,
    hf.eventually_ne_cobounded 0] with x hfgc hεf hf0
  rcases eq_or_lt_of_le ((norm_nonneg _).trans hfgc) with rfl | hc0
  · simpa [(smul_eq_zero_iff_right hf0).mp (norm_le_zero_iff.mp hfgc)] using hε0.le
  calc
    _ = ‖g x‖ := by simp
    _ ≤ c / ‖f x‖ := by rwa [norm_smul, ← le_div_iff₀' (by positivity)] at hfgc
    _ ≤ c / (c / ε) := by gcongr
    _ = ε := div_div_cancel₀ hc0.ne'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean#L1119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32c9420e5d37f8b4d36774645392bf66942cdfd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
