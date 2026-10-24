# IsLittleO.listProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff65382f1fd509a1dc86799efd426e02d0795ccd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce36fc4009930be4995bc78c934824191da5a6dc241573de143b53779a444606.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad6f4786-6bea-2cd6-c760-576fab6ff1e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79666876-d940-ad66-0da1-4f7574e8cf9a",
  "kind": "theorem",
  "lexical_name": "IsLittleO.listProd",
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
  "slug": "islittleo-listprod--026bc627ae1e882379f59f10",
  "source": {
    "blob": "ff65382f1fd509a1dc86799efd426e02d0795ccd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 323,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variantce36fc4009930be4995bc78c934824191da5a6dc241573de143b53779a444606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:026bc627ae1e882379f59f10ac5f59b892709e98a658c2e4424143a69555626c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Lemmas/Variantce36fc4009930be4995bc78c934824191da5a6dc241573de143b53779a444606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79666876-d940-ad66-0da1-4f7574e8cf9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLittleO.listProd {L : List ι} {f : ι → α → R} {g : ι → α → 𝕜}
    (h₁ : ∀ i ∈ L, f i =O[l] g i) (h₂ : ∃ i ∈ L, f i =o[l] g i) :
    (fun x ↦ (L.map (f · x)).prod) =o[l] (fun x ↦ (L.map (g · x)).prod) := by
  induction L with
  | nil => simp at h₂
  | cons i L ihL =>
    simp only [List.map_cons, List.prod_cons, List.forall_mem_cons, List.exists_mem_cons_iff]
      at h₁ h₂ ⊢
    cases h₂ with
    | inl hi => exact hi.mul_isBigO <| .listProd h₁.2
    | inr hL => exact h₁.1.mul_isLittleO <| ihL h₁.2 hL

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Lemmas/Variantce36fc4009930be4995bc78c934824191da5a6dc241573de143b53779a444606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variantce36fc4009930be4995bc78c934824191da5a6dc241573de143b53779a444606.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff65382f1fd509a1dc86799efd426e02d0795ccd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
