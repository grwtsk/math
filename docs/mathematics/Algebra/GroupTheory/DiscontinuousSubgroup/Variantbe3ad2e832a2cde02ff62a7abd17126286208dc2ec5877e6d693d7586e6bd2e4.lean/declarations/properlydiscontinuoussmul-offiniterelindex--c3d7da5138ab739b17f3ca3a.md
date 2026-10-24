# ProperlyDiscontinuousSMul.ofFiniteRelIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "029035681096a50b3e90608423a9ca03e4f796f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be3ad2e832a2cde02ff62a7abd17126286208dc2ec5877e6d693d7586e6bd2e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98476f07-9953-e784-69e6-f586e94fc56d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89c230ba-e49e-5cf0-b794-11b172537ceb",
  "kind": "lemma",
  "lexical_name": "ProperlyDiscontinuousSMul.ofFiniteRelIndex",
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
  "slug": "properlydiscontinuoussmul-offiniterelindex--c3d7da5138ab739b17f3ca3a",
  "source": {
    "blob": "029035681096a50b3e90608423a9ca03e4f796f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 54,
    "path": "GRWTSK/Algebra/GroupTheory/DiscontinuousSubgroup/Variantbe3ad2e832a2cde02ff62a7abd17126286208dc2ec5877e6d693d7586e6bd2e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3d7da5138ab739b17f3ca3a9e767e60c4c6dbff0aec199c29bedd2cbc52780f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/DiscontinuousSubgroup/Variantbe3ad2e832a2cde02ff62a7abd17126286208dc2ec5877e6d693d7586e6bd2e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89c230ba-e49e-5cf0-b794-11b172537ceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ProperlyDiscontinuousSMul.ofFiniteRelIndex [MulAction Γ α] [ContinuousConstSMul Γ α]
    (G H : Subgroup Γ) [hH : ProperlyDiscontinuousSMul H α] [H.IsFiniteRelIndex G] :
    ProperlyDiscontinuousSMul G α := by
  rw [Subgroup.properlyDiscontinuousSMul_iff] at hH ⊢
  intro K L hK hL
  have (t : Γ) : {g | g ∈ H ∧ (g • t • K ∩ L).Nonempty}.Finite :=
    hH (hK.image <| continuous_const_smul t) hL
  obtain ⟨S, hS, -⟩ := (H.subgroupOf G).exists_isComplement_right 1
  have hT : (Subtype.val '' S).Finite := by
    have : Fintype (G ⧸ H.subgroupOf G) := Subgroup.fintypeQuotientOfFiniteIndex
    have : Fintype S := .ofEquiv _ hS.rightQuotientEquiv
    exact (toFinite S).image _
  have hS' {g : Γ} (hg : g ∈ G) : ∃ t ∈ Subtype.val '' S, g * t⁻¹ ∈ H := by
    obtain ⟨p, hp⟩ := (hS.existsUnique ⟨g, hg⟩).exists
    aesop
  refine (hT.biUnion <| fun t ht ↦ (this t).map fun g ↦ g * t).subset fun g ↦ ?_
  simp [mul_smul]
  grind

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DiscontinuousSubgroup/Variantbe3ad2e832a2cde02ff62a7abd17126286208dc2ec5877e6d693d7586e6bd2e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DiscontinuousSubgroup/Variantbe3ad2e832a2cde02ff62a7abd17126286208dc2ec5877e6d693d7586e6bd2e4.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `029035681096a50b3e90608423a9ca03e4f796f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
