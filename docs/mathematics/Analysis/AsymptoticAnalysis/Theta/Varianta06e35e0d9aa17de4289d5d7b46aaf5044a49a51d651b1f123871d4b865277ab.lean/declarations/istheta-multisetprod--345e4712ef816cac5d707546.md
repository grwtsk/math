# IsTheta.multisetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2155a22bb6e5c5f04208e11ff842c5dddddc7aff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a06e35e0d9aa17de4289d5d7b46aaf5044a49a51d651b1f123871d4b865277ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e0169c5-8315-1fae-295f-86cd10b52be4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d649953-b270-4832-ed22-c84bc33c95f5",
  "kind": "theorem",
  "lexical_name": "IsTheta.multisetProd",
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
  "slug": "istheta-multisetprod--345e4712ef816cac5d707546",
  "source": {
    "blob": "2155a22bb6e5c5f04208e11ff842c5dddddc7aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 193,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Theta/Varianta06e35e0d9aa17de4289d5d7b46aaf5044a49a51d651b1f123871d4b865277ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:345e4712ef816cac5d707546520e14208bbd9c1652c25d1c44f61862cbce4d5d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Theta/Varianta06e35e0d9aa17de4289d5d7b46aaf5044a49a51d651b1f123871d4b865277ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d649953-b270-4832-ed22-c84bc33c95f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTheta.multisetProd {ι : Type*} {s : Multiset ι} {f : ι → α → 𝕜} {g : ι → α → 𝕜'}
    (h : ∀ i ∈ s, f i =Θ[l] g i) :
    (fun x ↦ (s.map (f · x)).prod) =Θ[l] (fun x ↦ (s.map (g · x)).prod) :=
  ⟨.multisetProd fun i hi ↦ (h i hi).isBigO, .multisetProd fun i hi ↦ (h i hi).symm.isBigO⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Theta/Varianta06e35e0d9aa17de4289d5d7b46aaf5044a49a51d651b1f123871d4b865277ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Theta/Varianta06e35e0d9aa17de4289d5d7b46aaf5044a49a51d651b1f123871d4b865277ab.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2155a22bb6e5c5f04208e11ff842c5dddddc7aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
