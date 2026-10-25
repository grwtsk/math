# minimal_explanations_form_antichain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "609f64fe9b4fad8b13f0b0f0c26a2d836ba098dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35f6b30f200dfd7768bce10d977b76c4309a7fbcbbf046dde30f8f3457da74b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa681731-76e1-542c-a080-60d68463bdf2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b316a695-4547-3a8c-dd8b-c7011ac5b819",
  "kind": "theorem",
  "lexical_name": "minimal_explanations_form_antichain",
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
  "slug": "minimal-explanations-form-antichain--31036bc19916c98475717d77",
  "source": {
    "blob": "609f64fe9b4fad8b13f0b0f0c26a2d836ba098dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant35f6b30f200dfd7768bce10d977b76c4309a7fbcbbf046dde30f8f3457da74b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31036bc19916c98475717d774fe67445ef2cbd58c3166d510d02d3c07810db58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant35f6b30f200dfd7768bce10d977b76c4309a7fbcbbf046dde30f8f3457da74b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b316a695-4547-3a8c-dd8b-c7011ac5b819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimal_explanations_form_antichain
    (family : ExplanationFamily)
    (left : Explanation)
    (leftMember : left ∈ minimalExplanations family)
    (right : Explanation)
    (rightMember : right ∈ minimalExplanations family)
    (leftSubset : left ⊆ right) :
    right ⊆ left := by
  classical
  change left ∈ normalizeFrontier family at leftMember
  change right ∈ normalizeFrontier family at rightMember
  simp only [normalizeFrontier, Finset.mem_filter] at leftMember rightMember
  exact rightMember.2.2 left leftMember.1 leftSubset

end Mathematics.Mutation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant35f6b30f200dfd7768bce10d977b76c4309a7fbcbbf046dde30f8f3457da74b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant35f6b30f200dfd7768bce10d977b76c4309a7fbcbbf046dde30f8f3457da74b0.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `609f64fe9b4fad8b13f0b0f0c26a2d836ba098dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
