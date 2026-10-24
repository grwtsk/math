# totallyBounded_interUnionBalls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ebdf595-6611-113f-c4a0-28bcc381e212",
  "kind": "lemma",
  "lexical_name": "totallyBounded_interUnionBalls",
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
  "slug": "totallybounded-interunionballs--28a1c2d68a05ccd3ffd427d9",
  "source": {
    "blob": "768044dc607acfa19eb9c8e0182095611b50e530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 662,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28a1c2d68a05ccd3ffd427d9c4a254b48a8ed25369a3acbc2e9820a9cc479850",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ebdf595-6611-113f-c4a0-28bcc381e212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma totallyBounded_interUnionBalls {p : ℕ → Prop} {U : ℕ → Set (α × α)}
    (H : (uniformity α).HasBasis p U) (xs : ℕ → α) (u : ℕ → ℕ) :
    TotallyBounded (interUnionBalls xs u U) := by
  rw [Filter.HasBasis.totallyBounded_iff H]
  intro i _
  have h_subset : interUnionBalls xs u U
      ⊆ ⋃ m ≤ u i, UniformSpace.ball (xs m) (Prod.swap ⁻¹' U i) :=
    fun x hx ↦ Set.mem_iInter.1 hx i
  classical
  refine ⟨Finset.image xs (Finset.range (u i + 1)), Finset.finite_toSet _, fun x hx ↦ ?_⟩
  simp only [Finset.coe_image, Finset.coe_range, mem_image, mem_Iio, iUnion_exists, biUnion_and',
    iUnion_iUnion_eq_right, Nat.lt_succ_iff]
  exact h_subset hx

/-- The construction `interUnionBalls` is used to have a relatively compact set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768044dc607acfa19eb9c8e0182095611b50e530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
