# Commute.posPart_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e46a0447ea93d25a2f095ded5de6c98e071731a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18ce8905-7591-916b-8111-fd5390df621d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:550c2d3f-f931-bc7e-47fe-c6d1202caf72",
  "kind": "lemma",
  "lexical_name": "Commute.posPart_mono",
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
  "slug": "commute-pospart-mono--d36e75b281160e4edaae89c5",
  "source": {
    "blob": "4e46a0447ea93d25a2f095ded5de6c98e071731a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 89,
    "path": "GRWTSK/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d36e75b281160e4edaae89c56cf23969539d963351fbc0fb13b0ad9e50e97d57",
  "verification": {
    "reference": "docs/verification/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:550c2d3f-f931-bc7e-47fe-c6d1202caf72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma Commute.posPart_mono {a b : A} (hab : Commute a b) (hle : a ≤ b)
    (ha : IsSelfAdjoint a := by cfc_tac) (hb : IsSelfAdjoint b := by cfc_tac) :
    a⁺ ≤ b⁺ := by
  let S := (adjoin ℂ {a, b}).topologicalClosure
  have : IsMulCommutative S := have := isMulCommutative_nonUnital_adjoin_pair hab; inferInstance
  have : IsClosed (S : Set A) := NonUnitalStarSubalgebra.isClosed_topologicalClosure _
  have h : a ∈ S ∧ b ∈ S := by constructor <;> exact subset_closure <| subset_adjoin _ _ <| by simp
  clear_value S
  lift a to S using h.1
  lift b to S using h.2
  have : (↑a⁺ : A) ≤ (↑b⁺ : A) := by simpa using CStarAlgebra.posPart_mono S hle
  simp only [← NonUnitalStarSubalgebraClass.subtype_apply, CFC.posPart_def] at this ⊢
  rwa [← NonUnitalStarAlgHomClass.map_cfcₙ .., ← NonUnitalStarAlgHomClass.map_cfcₙ ..]

/-- The negative part map `fun a ↦ a⁻` is antitone on commuting selfadjoint elements in
a C⋆-algebra -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e46a0447ea93d25a2f095ded5de6c98e071731a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
