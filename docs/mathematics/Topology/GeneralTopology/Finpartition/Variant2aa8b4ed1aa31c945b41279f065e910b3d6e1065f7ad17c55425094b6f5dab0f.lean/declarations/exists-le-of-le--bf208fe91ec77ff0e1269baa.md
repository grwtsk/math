# exists_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75a9ead71e18f58cfbf6ffe811e2707e873b3ae4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c291f787-9ec0-b435-07ba-411b7adee1ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7adae976-04b1-cad0-b337-600748a823f3",
  "kind": "theorem",
  "lexical_name": "exists_le_of_le",
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
  "slug": "exists-le-of-le--bf208fe91ec77ff0e1269baa",
  "source": {
    "blob": "75a9ead71e18f58cfbf6ffe811e2707e873b3ae4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 337,
    "path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf208fe91ec77ff0e1269baa58fd5f44649255ced485a85e4d74bd10079fcf84",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7adae976-04b1-cad0-b337-600748a823f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_le_of_le {a b : α} {P Q : Finpartition a} (h : P ≤ Q) (hb : b ∈ Q.parts) :
    ∃ c ∈ P.parts, c ≤ b := by
  by_contra H
  refine Q.ne_bot hb (disjoint_self.1 <| Disjoint.mono_right (Q.le hb) ?_)
  rw [← P.sup_parts, Finset.disjoint_sup_right]
  rintro c hc
  obtain ⟨d, hd, hcd⟩ := h hc
  refine (Q.disjoint hb hd ?_).mono_right hcd
  rintro rfl
  simp only [not_exists, not_and] at H
  exact H _ hc hcd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a9ead71e18f58cfbf6ffe811e2707e873b3ae4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
