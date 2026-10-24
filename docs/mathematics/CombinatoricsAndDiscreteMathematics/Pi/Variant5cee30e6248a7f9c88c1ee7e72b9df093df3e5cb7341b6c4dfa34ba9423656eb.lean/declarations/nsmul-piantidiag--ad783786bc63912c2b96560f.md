# nsmul_piAntidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf38f637d7a7ee10b75c44668d33a57b9423f5fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0b0c435-ff38-aef9-d874-af029c30cd28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c27d1887-9414-683f-3902-960a759abc30",
  "kind": "lemma",
  "lexical_name": "nsmul_piAntidiag",
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
  "slug": "nsmul-piantidiag--ad783786bc63912c2b96560f",
  "source": {
    "blob": "cf38f637d7a7ee10b75c44668d33a57b9423f5fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 211,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad783786bc63912c2b96560f0d37d694b92938b176b95b556dadcb45f3bf1c3c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c27d1887-9414-683f-3902-960a759abc30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nsmul_piAntidiag [DecidableEq (ι → ℕ)] (s : Finset ι) (m : ℕ) {n : ℕ} (hn : n ≠ 0) :
    n •ℕ piAntidiag s m = {f ∈ piAntidiag s (n * m) | ∀ i ∈ s, n ∣ f i} := by
  ext f
  refine mem_smul_finset.trans ?_
  simp only [mem_smul_finset, mem_filter, mem_piAntidiag, Function.Embedding.coeFn_mk, exists_prop,
    and_assoc]
  constructor
  · rintro ⟨f, rfl, hf, rfl⟩
    simpa [← mul_sum, hn] using hf
  rintro ⟨hfsum, hfsup, hfdvd⟩
  have (i) : n ∣ f i := by
    by_cases hi : i ∈ s
    · exact hfdvd _ hi
    · rw [not_imp_comm.1 (hfsup _) hi]
      exact dvd_zero _
  refine ⟨fun i ↦ f i / n, ?_⟩
  simp [funext_iff, Nat.mul_div_cancel', ← Nat.sum_div, *]
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf38f637d7a7ee10b75c44668d33a57b9423f5fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
