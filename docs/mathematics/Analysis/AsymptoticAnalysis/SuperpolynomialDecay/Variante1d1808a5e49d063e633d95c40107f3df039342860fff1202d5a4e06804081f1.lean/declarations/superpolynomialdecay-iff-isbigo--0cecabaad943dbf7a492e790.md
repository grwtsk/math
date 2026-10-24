# superpolynomialDecay_iff_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf42927936151d2269bf8181b55c8d38999e4e15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b75ca16-bb2c-e719-f7e6-d58ee47b4d87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afc30676-5111-1fb0-f9e1-300fb1941284",
  "kind": "theorem",
  "lexical_name": "superpolynomialDecay_iff_isBigO",
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
  "slug": "superpolynomialdecay-iff-isbigo--0cecabaad943dbf7a492e790",
  "source": {
    "blob": "cf42927936151d2269bf8181b55c8d38999e4e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 292,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cecabaad943dbf7a492e7900a0bfa2ea9180eed88112c3ab20662612e37ca8b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afc30676-5111-1fb0-f9e1-300fb1941284`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem superpolynomialDecay_iff_isBigO (hk : Tendsto k l atTop) :
    SuperpolynomialDecay l k f ↔ ∀ z : ℤ, f =O[l] fun a : α => k a ^ z := by
  refine (superpolynomialDecay_iff_zpow_tendsto_zero f hk).trans ?_
  have hk0 : ∀ᶠ x in l, k x ≠ 0 := hk.eventually_ne_atTop 0
  refine ⟨fun h z => ?_, fun h z => ?_⟩
  · refine isBigO_of_div_tendsto_nhds (hk0.mono fun x hx hxz ↦ absurd hxz (zpow_ne_zero _ hx)) 0 ?_
    have : (fun a : α => k a ^ z)⁻¹ = fun a : α => k a ^ (-z) := funext fun x => by simp
    rw [div_eq_mul_inv, mul_comm f, this]
    exact h (-z)
  · suffices (fun a : α => k a ^ z * f a) =O[l] fun a : α => (k a)⁻¹ from
      IsBigO.trans_tendsto this hk.inv_tendsto_atTop
    refine ((isBigO_refl (fun a => k a ^ z) l).mul (h (-(z + 1)))).trans ?_
    refine .of_bound' <| hk0.mono fun a ha0 => ?_
    simp [← zpow_add₀ ha0]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf42927936151d2269bf8181b55c8d38999e4e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
