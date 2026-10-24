# idempotent_comp_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5eceb2760097c2678555b22ec9f672b61f587ea3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86b949df-b0d2-8ea8-0466-ed7956a013d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abc2d369-8feb-200b-ff67-ed347dd7251f",
  "kind": "theorem",
  "lexical_name": "idempotent_comp_of_commute",
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
  "slug": "idempotent-comp-of-commute--e0a4e9ea6f7da93a8c90eee7",
  "source": {
    "blob": "5eceb2760097c2678555b22ec9f672b61f587ea3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 189,
    "path": "GRWTSK/Algebra/LinearAlgebra/C512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420cCommutingNoComme/Variantc512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0a4e9ea6f7da93a8c90eee7db76c977b0321242526187e5c89ae7fd0ba26349",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/C512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420cCommutingNoComme/Variantc512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abc2d369-8feb-200b-ff67-ed347dd7251f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem idempotent_comp_of_commute
    (P Q : V →ₗ[ℝ] V)
    (hP : ∀ x, P (P x) = P x)
    (hQ : ∀ x, Q (Q x) = Q x)
    (hPQ : ∀ x, P (Q x) = Q (P x)) :
    ∀ x, P (Q (P (Q x))) = P (Q x) := by
  intro x
  rw [← hPQ (Q x), hP (Q (Q x)), hQ x]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/C512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420cCommutingNoComme/Variantc512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/C512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420cCommutingNoComme/Variantc512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420c.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eceb2760097c2678555b22ec9f672b61f587ea3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
