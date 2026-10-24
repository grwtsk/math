# CauchySeq.subseq_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80485a42-07e0-042c-4713-36b3efe065af",
  "kind": "theorem",
  "lexical_name": "CauchySeq.subseq_mem",
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
  "slug": "cauchyseq-subseq-mem--61c1d4cb56acb54ce03cae31",
  "source": {
    "blob": "768044dc607acfa19eb9c8e0182095611b50e530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 259,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61c1d4cb56acb54ce03cae310d18abcb9e2269d25ed62a1149e5a32f39ccc3fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80485a42-07e0-042c-4713-36b3efe065af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CauchySeq.subseq_mem {V : ℕ → Set (α × α)} (hV : ∀ n, V n ∈ 𝓤 α) {u : ℕ → α}
    (hu : CauchySeq u) : ∃ φ : ℕ → ℕ, StrictMono φ ∧ ∀ n, (u <| φ (n + 1), u <| φ n) ∈ V n := by
  have : ∀ n, ∃ N, ∀ k ≥ N, ∀ l ≥ k, (u l, u k) ∈ V n := fun n => by
    rw [cauchySeq_iff] at hu
    rcases hu _ (hV n) with ⟨N, H⟩
    exact ⟨N, fun k hk l hl => H _ (le_trans hk hl) _ hk⟩
  obtain ⟨φ : ℕ → ℕ, φ_extr : StrictMono φ, hφ : ∀ n, ∀ l ≥ φ n, (u l, u <| φ n) ∈ V n⟩ :=
    extraction_forall_of_eventually' this
  exact ⟨φ, φ_extr, fun n => hφ _ _ (φ_extr <| Nat.lt_add_one n).le⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768044dc607acfa19eb9c8e0182095611b50e530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
