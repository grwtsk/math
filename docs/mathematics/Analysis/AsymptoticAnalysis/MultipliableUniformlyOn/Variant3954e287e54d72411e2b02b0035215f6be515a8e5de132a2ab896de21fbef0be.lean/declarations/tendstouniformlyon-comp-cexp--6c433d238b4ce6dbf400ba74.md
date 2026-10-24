# TendstoUniformlyOn.comp_cexp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16cc55bb-76d9-2737-1f1f-57451d724d66",
  "kind": "lemma",
  "lexical_name": "TendstoUniformlyOn.comp_cexp",
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
  "slug": "tendstouniformlyon-comp-cexp--6c433d238b4ce6dbf400ba74",
  "source": {
    "blob": "b4cbb9b0ebdc09c3a814cbc41a7c3bfd42d2ccb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 38,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant3954e287e54d72411e2b02b0035215f6be515a8e5de132a2ab896de21fbef0be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c433d238b4ce6dbf400ba74bb7fcb4bbed04814f3e101424a5410aaa57683d9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant3954e287e54d72411e2b02b0035215f6be515a8e5de132a2ab896de21fbef0be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16cc55bb-76d9-2737-1f1f-57451d724d66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TendstoUniformlyOn.comp_cexp {p : Filter ι} {g : α → ℂ}
    (hf : TendstoUniformlyOn f g p K) (hg : BddAbove <| (fun x ↦ (g x).re) '' K) :
    TendstoUniformlyOn (cexp ∘ f ·) (cexp ∘ g) p K := by
  obtain ⟨v, hv⟩ : ∃ v, ∀ x ∈ K, (g x).re ≤ v := hg.imp <| by simp [mem_upperBounds]
  have : ∀ᶠ i in p, ∀ x ∈ K, (f i x).re ≤ v + 1 := hf.re.eventually_forall_le (lt_add_one v) hv
  refine (UniformContinuousOn.cexp _).comp_tendstoUniformlyOn_eventually (by simpa) ?_ hf
  exact fun x hx ↦ (hv x hx).trans (lt_add_one v).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant3954e287e54d72411e2b02b0035215f6be515a8e5de132a2ab896de21fbef0be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MultipliableUniformlyOn/Variant3954e287e54d72411e2b02b0035215f6be515a8e5de132a2ab896de21fbef0be.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4cbb9b0ebdc09c3a814cbc41a7c3bfd42d2ccb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
