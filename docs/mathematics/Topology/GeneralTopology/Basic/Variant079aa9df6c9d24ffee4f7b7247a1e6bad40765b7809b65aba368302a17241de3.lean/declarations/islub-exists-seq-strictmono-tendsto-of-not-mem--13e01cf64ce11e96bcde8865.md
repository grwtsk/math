# IsLUB.exists_seq_strictMono_tendsto_of_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0ec404d-a327-d4b4-61ff-a23e08330f47",
  "kind": "theorem",
  "lexical_name": "IsLUB.exists_seq_strictMono_tendsto_of_not_mem",
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
  "slug": "islub-exists-seq-strictmono-tendsto-of-not-mem--13e01cf64ce11e96bcde8865",
  "source": {
    "blob": "7efd25fe736c11d967d9c8c43876cdde33cbfb01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2154,
    "line": 2141,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13e01cf64ce11e96bcde8865719f6da6b682e83b0d5a5d15462cf6e3c3e45ff8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0ec404d-a327-d4b4-61ff-a23e08330f47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2141–2154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLUB.exists_seq_strictMono_tendsto_of_not_mem {t : Set α} {x : α}
    [IsCountablyGenerated (𝓝 x)] (htx : IsLUB t x) (not_mem : x ∉ t) (ht : t.Nonempty) :
    ∃ u : ℕ → α, StrictMono u ∧ (∀ n, u n < x) ∧ Tendsto u atTop (𝓝 x) ∧ ∀ n, u n ∈ t := by
  obtain ⟨v, hvx, hvt⟩ := exists_seq_forall_of_frequently (htx.frequently_mem ht)
  replace hvx := hvx.mono_right nhdsWithin_le_nhds
  have hvx' : ∀ {n}, v n < x := (htx.1 (hvt _)).lt_of_ne (ne_of_mem_of_not_mem (hvt _) not_mem)
  have : ∀ k, ∀ᶠ l in atTop, v k < v l := fun k => hvx.eventually (lt_mem_nhds hvx')
  choose N hN hvN using fun k => ((eventually_gt_atTop k).and (this k)).exists
  refine ⟨fun k => v (N^[k] 0), strictMono_nat_of_lt_succ fun _ => ?_, fun _ => hvx',
    hvx.comp (strictMono_nat_of_lt_succ fun _ => ?_).tendsto_atTop, fun _ => hvt _⟩
  · rw [iterate_succ_apply']; exact hvN _
  · rw [iterate_succ_apply']; exact hN _
#align is_lub.exists_seq_strict_mono_tendsto_of_not_mem IsLUB.exists_seq_strictMono_tendsto_of_not_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean#L2141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7efd25fe736c11d967d9c8c43876cdde33cbfb01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
