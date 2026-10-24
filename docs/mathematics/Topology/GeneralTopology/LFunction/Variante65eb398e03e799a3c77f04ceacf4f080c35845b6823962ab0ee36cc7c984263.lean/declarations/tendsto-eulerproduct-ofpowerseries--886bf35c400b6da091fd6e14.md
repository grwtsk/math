# tendsTo_eulerProduct_ofPowerSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24cea509-18a1-a4fb-6b34-69d44b4b1fba",
  "kind": "theorem",
  "lexical_name": "tendsTo_eulerProduct_ofPowerSeries",
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
  "slug": "tendsto-eulerproduct-ofpowerseries--886bf35c400b6da091fd6e14",
  "source": {
    "blob": "2dbd6be26a7b8e76ea0aab63b3194c8949571b66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 341,
    "path": "GRWTSK/Topology/GeneralTopology/LFunction/Variante65eb398e03e799a3c77f04ceacf4f080c35845b6823962ab0ee36cc7c984263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:886bf35c400b6da091fd6e1410b1fae3df4f1783b15e695ed3af4bd8e72c4137",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LFunction/Variante65eb398e03e799a3c77f04ceacf4f080c35845b6823962ab0ee36cc7c984263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24cea509-18a1-a4fb-6b34-69d44b4b1fba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsTo_eulerProduct_ofPowerSeries (q : ι → ℕ) [hq : Northcott q]
    (f : ι → PowerSeries R) (hf : ∀ i, (f i).constantCoeff = 1) (n : ℕ) :
    ∀ᶠ s in atTop, (∏ i ∈ s, ofPowerSeries (q i) (f i)) n =
      eulerProduct (fun i ↦ ofPowerSeries (q i) (f i)) n := by
  apply tendsTo_eulerProduct_of_tendsTo
  refine fun n ↦ (tendsto_atTop.mp ((northcott_iff_tendsto q).mp hq) (n + 1)).mono fun i hi ↦ ?_
  rcases n with rfl | rfl | n
  · simp
  · simp [hf]
  · have hqi : 1 < q i := by lia
    rw [ofPowerSeries_apply hqi, Function.extend_apply', Pi.zero_apply, one_apply_ne (by lia)]
    rintro ⟨k, hk⟩
    have h : k ≠ 0 := fun h ↦ by simp_all
    grind [Nat.le_pow h.pos (a := q i)]

end EulerProduct

end ArithmeticFunction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LFunction/Variante65eb398e03e799a3c77f04ceacf4f080c35845b6823962ab0ee36cc7c984263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LFunction/Variante65eb398e03e799a3c77f04ceacf4f080c35845b6823962ab0ee36cc7c984263.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dbd6be26a7b8e76ea0aab63b3194c8949571b66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
