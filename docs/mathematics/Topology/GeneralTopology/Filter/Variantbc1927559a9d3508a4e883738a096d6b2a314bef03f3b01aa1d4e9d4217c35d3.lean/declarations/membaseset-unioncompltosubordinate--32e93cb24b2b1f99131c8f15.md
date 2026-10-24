# MemBaseSet.unionComplToSubordinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e04f1fe4-9499-17d2-0499-1fb17acead7b",
  "kind": "theorem",
  "lexical_name": "MemBaseSet.unionComplToSubordinate",
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
  "slug": "membaseset-unioncompltosubordinate--32e93cb24b2b1f99131c8f15",
  "source": {
    "blob": "689666b8c173fbbbd70c32e4394467dfb2e25007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 364,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32e93cb24b2b1f99131c8f15720911ff091d0035b474965d4c5ac3f6d6692ce4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e04f1fe4-9499-17d2-0499-1fb17acead7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem MemBaseSet.unionComplToSubordinate (hπ₁ : l.MemBaseSet I c r₁ π₁)
    (hle : ∀ x ∈ Box.Icc I, r₂ x ≤ r₁ x) {π₂ : Prepartition I} (hU : π₂.iUnion = ↑I \ π₁.iUnion)
    (hc : l.bDistortion → π₂.distortion ≤ c) :
    l.MemBaseSet I c r₁ (π₁.unionComplToSubordinate π₂ hU r₂) :=
  ⟨hπ₁.1.disjUnion ((π₂.isSubordinate_toSubordinate r₂).mono hle) _,
    fun h => (hπ₁.2 h).disjUnion (π₂.isHenstock_toSubordinate _) _,
    fun h => (distortion_unionComplToSubordinate _ _ _ _).trans_le (max_le (hπ₁.3 h) (hc h)),
    fun _ => ⟨⊥, by simp⟩⟩

variable {r : (ι → ℝ) → Ioi (0 : ℝ)}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `689666b8c173fbbbd70c32e4394467dfb2e25007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
