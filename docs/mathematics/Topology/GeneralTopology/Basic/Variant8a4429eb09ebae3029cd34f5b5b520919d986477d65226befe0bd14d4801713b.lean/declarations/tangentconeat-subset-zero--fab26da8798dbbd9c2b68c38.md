# tangentConeAt_subset_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07a704d8-8b10-43a4-3fee-8ef3f639c29e",
  "kind": "theorem",
  "lexical_name": "tangentConeAt_subset_zero",
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
  "slug": "tangentconeat-subset-zero--fab26da8798dbbd9c2b68c38",
  "source": {
    "blob": "6387727b0414e84003f54952a5fd065b30e25986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab26da8798dbbd9c2b68c381f2df6c2ca2ba15c079ef2a5e2635bcc62c9adcf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07a704d8-8b10-43a4-3fee-8ef3f639c29e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tangentConeAt_subset_zero [T2Space E] (hx : ¬AccPt x (𝓟 s)) : tangentConeAt 𝕜 s x ⊆ 0 := by
  intro y hy
  rcases exists_fun_of_mem_tangentConeAt hy with ⟨ι, l, hl, c, d, hd₀, hds, hcd⟩
  have H₁ : Tendsto (x + d ·) l (𝓝 x) := by
    simpa using tendsto_const_nhds.add hd₀
  have H₂ : ∀ᶠ n in l, d n = 0 := by
    simp only [accPt_iff_frequently, not_frequently, not_and', ne_eq, not_not] at hx
    simpa using hds.mp (H₁.eventually hx)
  have H₃ : ∀ᶠ n in l, c n • d n = 0 := H₂.mono fun n hn ↦ by simp [hn]
  simpa using tendsto_nhds_unique_of_eventuallyEq hcd tendsto_const_nhds H₃

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8a4429eb09ebae3029cd34f5b5b520919d986477d65226befe0bd14d4801713b.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6387727b0414e84003f54952a5fd065b30e25986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
