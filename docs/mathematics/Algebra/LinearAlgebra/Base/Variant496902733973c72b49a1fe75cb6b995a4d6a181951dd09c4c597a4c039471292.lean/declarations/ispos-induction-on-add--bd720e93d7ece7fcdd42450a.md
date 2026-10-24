# IsPos.induction_on_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77e95b084476d1b16dd82d35a3bed2517c25b1a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 647,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84ff2ae0-ec84-6569-c62c-c695c2991643",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4dc5e3be-cb91-fb01-4484-e1ba6bcae04a",
  "kind": "lemma",
  "lexical_name": "IsPos.induction_on_add",
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
  "slug": "ispos-induction-on-add--bd720e93d7ece7fcdd42450a",
  "source": {
    "blob": "77e95b084476d1b16dd82d35a3bed2517c25b1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 647,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd720e93d7ece7fcdd42450a2e581ed29546e556506ea0756ba8c1cc193e787c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dc5e3be-cb91-fb01-4484-e1ba6bcae04a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPos.induction_on_add
    {i : ι} (h₀ : b.IsPos i)
    {p : ι → Prop}
    (h₁ : ∀ i ∈ b.support, p i)
    (h₂ : ∀ i j k, P.root k = P.root i + P.root j → p i → j ∈ b.support → p k) :
    p i := by
  generalize hN : b.height i = N
  induction N using Int.induction_on generalizing i with
  | zero => exact False.elim <| b.height_ne_zero i hN
  | succ n ih =>
    obtain ⟨j, hj, hj'⟩ := h₀.exists_mem_support_pos_pairingIn
    rw [P.zero_lt_pairingIn_iff'] at hj'
    rcases eq_or_ne i j with rfl | hij; · exact h₁ i hj
    obtain ⟨k, hk⟩ := P.root_sub_root_mem_of_pairingIn_pos hj' hij
    have hkn : b.height k = n := by rw [b.height_sub hk, height_one_of_mem_support hj]; lia
    have hkpos : b.IsPos k := by rw [isPos_iff']; lia
    exact h₂ k j i (by rw [hk]; module) (ih hkpos hkn) hj
  | pred n ih =>
    rw [isPos_iff] at h₀
    lia

omit [P.IsReduced] in
/-- This lemma is included mostly for comparison with the informal literature. Usually
`RootPairing.Base.IsPos.induction_on_add` will be more useful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e95b084476d1b16dd82d35a3bed2517c25b1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
