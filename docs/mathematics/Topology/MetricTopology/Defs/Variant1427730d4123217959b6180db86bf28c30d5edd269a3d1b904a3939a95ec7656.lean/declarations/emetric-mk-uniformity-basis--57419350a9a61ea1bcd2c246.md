# EMetric.mk_uniformity_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6459c590098c67e05b4eb7979db41cd8443f386c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05f247b4-4000-53cb-afbe-937b87bfb0a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a26c64a-6e57-58a8-02ce-e4def3227fce",
  "kind": "theorem",
  "lexical_name": "EMetric.mk_uniformity_basis",
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
  "slug": "emetric-mk-uniformity-basis--57419350a9a61ea1bcd2c246",
  "source": {
    "blob": "6459c590098c67e05b4eb7979db41cd8443f386c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 157,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57419350a9a61ea1bcd2c24614944120f03e8debca38f2f7850a30574191449a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a26c64a-6e57-58a8-02ce-e4def3227fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem EMetric.mk_uniformity_basis {β : Type*} {p : β → Prop} {f : β → ℝ≥0∞}
    (hf₀ : ∀ x, p x → 0 < f x) (hf : ∀ ε, 0 < ε → ∃ x, p x ∧ f x ≤ ε) :
    (𝓤 α).HasBasis p fun x => { p : α × α | edist p.1 p.2 < f x } := by
  refine ⟨fun s => uniformity_basis_edist.mem_iff.trans ?_⟩
  constructor
  · rintro ⟨ε, ε₀, hε⟩
    rcases hf ε ε₀ with ⟨i, hi, H⟩
    exact ⟨i, hi, fun x hx => hε <| lt_of_lt_of_le hx.out H⟩
  · exact fun ⟨i, hi, H⟩ => ⟨f i, hf₀ i hi, H⟩

/-- Given `f : β → ℝ≥0∞`, if `f` sends `{i | p i}` to a set of positive numbers
accumulating to zero, then closed `f i`-neighborhoods of the diagonal form a basis of `𝓤 α`.

For specific bases see `uniformity_basis_edist_le` and `uniformity_basis_edist_le'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6459c590098c67e05b4eb7979db41cd8443f386c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
