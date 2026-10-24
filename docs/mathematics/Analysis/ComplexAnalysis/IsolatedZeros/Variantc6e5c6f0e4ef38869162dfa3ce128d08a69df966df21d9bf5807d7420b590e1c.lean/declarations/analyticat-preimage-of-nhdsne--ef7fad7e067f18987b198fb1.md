# AnalyticAt.preimage_of_nhdsNE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:056bba7b-5e15-f5aa-bce3-62048bdc51b6",
  "kind": "theorem",
  "lexical_name": "AnalyticAt.preimage_of_nhdsNE",
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
  "slug": "analyticat-preimage-of-nhdsne--ef7fad7e067f18987b198fb1",
  "source": {
    "blob": "085df819054d03f4ff17f1f0725d73edad723a5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 324,
    "path": "GRWTSK/Analysis/ComplexAnalysis/IsolatedZeros/Variantc6e5c6f0e4ef38869162dfa3ce128d08a69df966df21d9bf5807d7420b590e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef7fad7e067f18987b198fb1b0aaf99669e0a26b97f7094ff02bee84d46cc6e1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IsolatedZeros/Variantc6e5c6f0e4ef38869162dfa3ce128d08a69df966df21d9bf5807d7420b590e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:056bba7b-5e15-f5aa-bce3-62048bdc51b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticAt.preimage_of_nhdsNE {x : 𝕜} {f : 𝕜 → E} {s : Set E} (hfx : AnalyticAt 𝕜 f x)
    (h₂f : ¬EventuallyConst f (𝓝 x)) (hs : s ∈ 𝓝[≠] f x) :
    f ⁻¹' s ∈ 𝓝[≠] x := by
  have : ∀ᶠ (z : 𝕜) in 𝓝 x, f z ∈ insert (f x) s := by
    filter_upwards [hfx.continuousAt.preimage_mem_nhds (insert_mem_nhds_iff.2 hs)]
    tauto
  contrapose h₂f with h
  rw [eventuallyConst_iff_exists_eventuallyEq]
  use f x
  rw [EventuallyEq, ← hfx.frequently_eq_iff_eventually_eq analyticAt_const]
  apply ((frequently_imp_distrib_right.2 h).and_eventually
    (eventually_nhdsWithin_of_eventually_nhds this)).mono
  intro z ⟨h₁z, h₂z⟩
  rw [Set.mem_insert_iff] at h₂z
  tauto

/-- Preimages of codiscrete sets, local filter version: if `f` is analytic at `x` and not locally
constant, then the push-forward of the punctured neighbourhood filter `𝓝[≠] x` is less than or
equal to the punctured neighbourhood filter `𝓝[≠] f x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/IsolatedZeros/Variantc6e5c6f0e4ef38869162dfa3ce128d08a69df966df21d9bf5807d7420b590e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/IsolatedZeros/Variantc6e5c6f0e4ef38869162dfa3ce128d08a69df966df21d9bf5807d7420b590e1c.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `085df819054d03f4ff17f1f0725d73edad723a5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
