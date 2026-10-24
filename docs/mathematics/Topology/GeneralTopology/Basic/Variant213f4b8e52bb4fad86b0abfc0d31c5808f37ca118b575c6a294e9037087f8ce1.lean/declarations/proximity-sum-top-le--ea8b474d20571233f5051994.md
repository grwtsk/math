# proximity_sum_top_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28c33d0edaf36c6c9ae2d35afcfeefa401bdaea4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45d0b4cf-6473-bc36-685e-8f40ab514aa0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9ec551c-8098-0668-8761-c206d2924da5",
  "kind": "theorem",
  "lexical_name": "proximity_sum_top_le",
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
  "slug": "proximity-sum-top-le--ea8b474d20571233f5051994",
  "source": {
    "blob": "28c33d0edaf36c6c9ae2d35afcfeefa401bdaea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 171,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea8b474d20571233f50519948b892bed635a76a50974a88e174f2da31e1430dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9ec551c-8098-0668-8761-c206d2924da5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proximity_sum_top_le [NormedSpace ℂ E] {α : Type*} (s : Finset α) (f : α → ℂ → E)
    (hf : ∀ a ∈ s, Meromorphic (f a)) :
    proximity (∑ a ∈ s, f a) ⊤ ≤ ∑ a ∈ s, (proximity (f a) ⊤) + (fun _ ↦ log s.card) := by
  simp only [proximity_top, Finset.sum_apply]
  intro r
  have h₂f : ∀ i ∈ s, CircleIntegrable (log⁺ ‖f i ·‖) 0 r :=
    fun i hi ↦ MeromorphicOn.circleIntegrable_posLog_norm (fun x hx ↦ hf i hi x)
  simp only [Pi.add_apply, Finset.sum_apply]
  calc circleAverage (log⁺ ‖∑ c ∈ s, f c ·‖) 0 r
    _ ≤ circleAverage (∑ c ∈ s, log⁺ ‖f c ·‖ + log s.card) 0 r := by
      apply circleAverage_mono
      · apply (Meromorphic.fun_sum hf).meromorphicOn.circleIntegrable_posLog_norm
      · fun_prop
      · intro x hx
        rw [add_comm]
        apply posLog_norm_sum_le
    _ = ∑ c ∈ s, circleAverage (log⁺ ‖f c ·‖) 0 r + log s.card := by
      nth_rw 2 [← circleAverage_const (log s.card) 0 r]
      rw [← circleAverage_sum h₂f, ← circleAverage_add (CircleIntegrable.sum s h₂f)
        (circleIntegrable_const (log s.card) 0 r)]
      congr 1
      ext x
      simp

/--
The proximity function of `f + g` at `⊤` is less than or equal to the sum of the proximity functions
of `f` and `g`, plus `log 2` (where `2` is the number of summands).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c33d0edaf36c6c9ae2d35afcfeefa401bdaea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
