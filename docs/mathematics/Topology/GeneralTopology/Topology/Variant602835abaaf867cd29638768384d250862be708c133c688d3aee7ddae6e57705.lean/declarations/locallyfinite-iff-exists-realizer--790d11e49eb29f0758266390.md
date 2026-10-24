# locallyFinite_iff_exists_realizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2eeb1e1449bb1463e9d16e4ca7120d206885f7d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5b21127-9ce6-79b7-91a7-a2a0125e5b83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:633a44e5-c844-5da3-720e-bbb3b60d8bba",
  "kind": "theorem",
  "lexical_name": "locallyFinite_iff_exists_realizer",
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
  "slug": "locallyfinite-iff-exists-realizer--790d11e49eb29f0758266390",
  "source": {
    "blob": "2eeb1e1449bb1463e9d16e4ca7120d206885f7d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:790d11e49eb29f07582663908caaf40ef55d398a7cc070f4751e26cbbcfdbe44",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:633a44e5-c844-5da3-720e-bbb3b60d8bba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyFinite_iff_exists_realizer [TopologicalSpace α] (F : Ctop.Realizer α)
    {f : β → Set α} : LocallyFinite f ↔ Nonempty (LocallyFinite.Realizer F f) :=
  ⟨fun h ↦
    let ⟨g, h₁⟩ := Classical.axiom_of_choice h
    let ⟨g₂, h₂⟩ :=
      Classical.axiom_of_choice fun x ↦
        show ∃ b : F.σ, x ∈ F.F b ∧ F.F b ⊆ g x from
          let ⟨h, _h'⟩ := h₁ x
          F.mem_nhds.1 h
    ⟨⟨fun x ↦ ⟨g₂ x, (h₂ x).1⟩, fun x ↦
        Finite.fintype <|
          let ⟨_h, h'⟩ := h₁ x
          h'.subset fun _i hi ↦ hi.mono (inter_subset_inter_right _ (h₂ x).2)⟩⟩,
    fun ⟨R⟩ ↦ R.to_locallyFinite⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eeb1e1449bb1463e9d16e4ca7120d206885f7d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
