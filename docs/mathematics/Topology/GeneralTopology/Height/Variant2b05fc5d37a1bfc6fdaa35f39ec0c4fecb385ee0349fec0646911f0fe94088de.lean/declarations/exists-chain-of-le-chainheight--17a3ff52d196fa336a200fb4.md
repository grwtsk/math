# exists_chain_of_le_chainHeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5dceab1-58bb-35d6-c98f-1365f6191fea",
  "kind": "theorem",
  "lexical_name": "exists_chain_of_le_chainHeight",
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
  "slug": "exists-chain-of-le-chainheight--17a3ff52d196fa336a200fb4",
  "source": {
    "blob": "b9e91d9826e1c6a06557f242ca2bca1374a91406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17a3ff52d196fa336a200fb44626e0de55be1cf3f804cef506f34ebe5ee1308c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5dceab1-58bb-35d6-c98f-1365f6191fea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_chain_of_le_chainHeight {n : ℕ} (hn : ↑n ≤ s.chainHeight) :
    ∃ l ∈ s.subchain, length l = n := by
  cases' (le_top : s.chainHeight ≤ ⊤).eq_or_lt with ha ha <;>
    rw [chainHeight_eq_iSup_subtype] at ha
  · obtain ⟨_, ⟨⟨l, h₁, h₂⟩, rfl⟩, h₃⟩ :=
      not_bddAbove_iff'.mp ((WithTop.iSup_coe_eq_top _).mp ha) n
    exact ⟨l.take n, ⟨h₁.take _, fun x h ↦ h₂ _ <| take_subset _ _ h⟩,
      (l.length_take n).trans <| min_eq_left <| le_of_not_ge h₃⟩
  · rw [ENat.iSup_coe_lt_top] at ha
    obtain ⟨⟨l, h₁, h₂⟩, e : l.length = _⟩ := Nat.sSup_mem (Set.range_nonempty _) ha
    refine'
      ⟨l.take n, ⟨h₁.take _, fun x h ↦ h₂ _ <| take_subset _ _ h⟩,
        (l.length_take n).trans <| min_eq_left <| _⟩
    rwa [e, ← Nat.cast_le (α := ℕ∞), sSup_range, ENat.coe_iSup ha, ← chainHeight_eq_iSup_subtype]
#align set.exists_chain_of_le_chain_height Set.exists_chain_of_le_chainHeight

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e91d9826e1c6a06557f242ca2bca1374a91406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
