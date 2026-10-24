# IsClosed.smul_left_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44c7f988-0fb6-522c-f2e5-b243d7c58d65",
  "kind": "theorem",
  "lexical_name": "IsClosed.smul_left_of_isCompact",
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
  "slug": "isclosed-smul-left-of-iscompact--5a7beef929a0df6e94a8ba43",
  "source": {
    "blob": "fd7aee4857bb6a7f355bc453c29b821bc884b7f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a7beef929a0df6e94a8ba4369bd2fe2bfa03876c07d2d57b135842ff8d0c497",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44c7f988-0fb6-522c-f2e5-b243d7c58d65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosed.smul_left_of_isCompact (ht : IsClosed t) (hs : IsCompact s) :
    IsClosed (s • t) := by
  have : ∀ x ∈ s • t, ∃ g ∈ s, g⁻¹ • x ∈ t := by
    rintro x ⟨g, hgs, y, hyt, rfl⟩
    refine ⟨g, hgs, ?_⟩
    rwa [inv_smul_smul]
  choose! f hf using this
  refine isClosed_of_closure_subset (fun x hx ↦ ?_)
  rcases mem_closure_iff_ultrafilter.mp hx with ⟨u, hust, hux⟩
  have : Ultrafilter.map f u ≤ 𝓟 s :=
    calc Ultrafilter.map f u ≤ map f (𝓟 (s • t)) := map_mono (le_principal_iff.mpr hust)
      _ = 𝓟 (f '' (s • t)) := map_principal
      _ ≤ 𝓟 s := principal_mono.mpr (image_subset_iff.mpr (fun x hx ↦ (hf x hx).1))
  rcases hs.ultrafilter_le_nhds (Ultrafilter.map f u) this with ⟨g, hg, hug⟩
  suffices g⁻¹ • x ∈ t from
    ⟨g, hg, g⁻¹ • x, this, smul_inv_smul _ _⟩
  exact ht.mem_of_tendsto ((Tendsto.inv hug).smul hux)
    (Eventually.mono hust (fun y hy ↦ (hf y hy).2))

/-! One may expect a version of `IsClosed.smul_left_of_isCompact` where `t` is compact and `s` is
closed, but such a lemma can't be true in this level of generality. For a counterexample, consider
`ℚ` acting on `ℝ` by translation, and let `s : Set ℚ := univ`, `t : set ℝ := {0}`. Then `s` is
closed and `t` is compact, but `s +ᵥ t` is the set of all rationals, which is definitely not
closed in `ℝ`.
To fix the proof, we would need to make two additional assumptions:
- for any `x ∈ t`, `s • {x}` is closed
- for any `x ∈ t`, there is a continuous function `g : s • {x} → s` such that, for all
  `y ∈ s • {x}`, we have `y = (g y) • x`
These are fairly specific hypotheses so we don't state this version of the lemmas, but an
interesting fact is that these two assumptions are verified in the case of a `NormedAddTorsor`
(or really, any `AddTorsor` with continuous `-ᵥ`). We prove this special case in
`IsClosed.vadd_right_of_isCompact`. -/

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd7aee4857bb6a7f355bc453c29b821bc884b7f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
