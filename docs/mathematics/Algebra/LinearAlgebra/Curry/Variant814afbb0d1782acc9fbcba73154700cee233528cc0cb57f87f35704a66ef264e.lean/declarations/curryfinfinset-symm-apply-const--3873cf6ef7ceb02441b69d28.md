# curryFinFinset_symm_apply_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90a49ef04a3004b7dc1f3b5f06c336cd4df90def",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f039db3-d461-fa84-a7a4-f902b02cfa93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cac07656-2e5f-ad6a-3038-42c2cf4e0656",
  "kind": "theorem",
  "lexical_name": "curryFinFinset_symm_apply_const",
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
  "slug": "curryfinfinset-symm-apply-const--3873cf6ef7ceb02441b69d28",
  "source": {
    "blob": "90a49ef04a3004b7dc1f3b5f06c336cd4df90def",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 389,
    "path": "GRWTSK/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3873cf6ef7ceb02441b69d28d616f31d01b2d7de667b6d8b303a97aa20fd5faf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cac07656-2e5f-ad6a-3038-42c2cf4e0656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curryFinFinset_symm_apply_const {k l n : ℕ} {s : Finset (Fin n)} (hk : #s = k)
    (hl : #sᶜ = l)
    (f : MultilinearMap R (fun _ : Fin k => M') (MultilinearMap R (fun _ : Fin l => M') M₂))
    (x : M') : ((curryFinFinset R M₂ M' hk hl).symm f fun _ => x) = f (fun _ => x) fun _ => x :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90a49ef04a3004b7dc1f3b5f06c336cd4df90def` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
