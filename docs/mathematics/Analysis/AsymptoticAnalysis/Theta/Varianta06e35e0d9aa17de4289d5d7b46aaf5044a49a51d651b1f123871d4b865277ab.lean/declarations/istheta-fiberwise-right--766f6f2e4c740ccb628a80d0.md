# IsTheta.fiberwise_right

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
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a06e35e0d9aa17de4289d5d7b46aaf5044a49a51d651b1f123871d4b865277ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6608be7-1f16-35da-f9dc-7ce2c584ebad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcfced79-0071-0e6f-35b7-d6420a019ed9",
  "kind": "theorem",
  "lexical_name": "IsTheta.fiberwise_right",
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
  "slug": "istheta-fiberwise-right--766f6f2e4c740ccb628a80d0",
  "source": {
    "blob": "2155a22bb6e5c5f04208e11ff842c5dddddc7aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 295,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Theta/Varianta06e35e0d9aa17de4289d5d7b46aaf5044a49a51d651b1f123871d4b865277ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:766f6f2e4c740ccb628a80d0c8090a8a2ae19c5d7da9759227419a5e07c227bf",
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

Occurrence: `result:bcfced79-0071-0e6f-35b7-d6420a019ed9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsTheta.fiberwise_right :
    f =Θ[l ×ˢ l'] g → ∀ᶠ x in l, (f ⟨x, ·⟩) =Θ[l'] (g ⟨x, ·⟩) := by
  simp only [IsTheta, eventually_and]
  exact fun ⟨h₁, h₂⟩ ↦ ⟨h₁.fiberwise_right, h₂.fiberwise_right⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Theta/Varianta06e35e0d9aa17de4289d5d7b46aaf5044a49a51d651b1f123871d4b865277ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Theta/Varianta06e35e0d9aa17de4289d5d7b46aaf5044a49a51d651b1f123871d4b865277ab.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2155a22bb6e5c5f04208e11ff842c5dddddc7aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
