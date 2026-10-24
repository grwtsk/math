# _root_.Subalgebra.isUnit_of_isUnit_val_of_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fc9d56eaa04eb16e57bce8f561607390dfddca9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 608,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34568d3f-1ef0-ece6-ecd2-90d660ceca9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75b66d3b-d754-b02a-7532-d21854b4644a",
  "kind": "lemma",
  "lexical_name": "_root_.Subalgebra.isUnit_of_isUnit_val_of_eventually",
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
  "slug": "root-subalgebra-isunit-of-isunit-val-of-eventually--9a02f9ff36f890aeb46fcf44",
  "source": {
    "blob": "8fc9d56eaa04eb16e57bce8f561607390dfddca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 608,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a02f9ff36f890aeb46fcf4462365470954c8c867c4be8821e73f23d94e65480",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75b66d3b-d754-b02a-7532-d21854b4644a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Subalgebra.isUnit_of_isUnit_val_of_eventually {l : Filter S} {a : S}
    (ha : IsUnit (a : A)) (hla : l ≤ 𝓝 a) (hl : ∀ᶠ x in l, IsUnit x) (hl' : l.NeBot) :
    IsUnit a := by
  have hla₂ : Tendsto Ring.inverse (map (val S) l) (𝓝 (↑ha.unit⁻¹ : A)) := by
    rw [← Ring.inverse_unit]
    exact (NormedRing.inverse_continuousAt _).tendsto.comp <|
      continuousAt_subtype_val.tendsto.comp <| map_mono hla
  suffices mem : (↑ha.unit⁻¹ : A) ∈ S by
    refine ⟨⟨a, ⟨(↑ha.unit⁻¹ : A), mem⟩, ?_, ?_⟩, rfl⟩
    all_goals ext; simp
  apply hS.mem_of_tendsto hla₂
  rw [Filter.eventually_map]
  apply hl.mono fun x hx ↦ ?_
  suffices Ring.inverse (val S x) = (val S ↑hx.unit⁻¹) from this ▸ Subtype.property _
  rw [← (hx.map (val S)).unit_spec, Ring.inverse_unit (hx.map (val S)).unit, val]
  apply Units.mul_eq_one_iff_inv_eq.mp
  simpa [-IsUnit.mul_val_inv] using congr(($hx.mul_val_inv : A))

/-- If `S : Subalgebra 𝕜 A` is a closed subalgebra of a Banach algebra `A`, then for any
`x : S`, the boundary of the spectrum of `x` relative to `S` is a subset of the spectrum of
`↑x : A` relative to `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fc9d56eaa04eb16e57bce8f561607390dfddca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
