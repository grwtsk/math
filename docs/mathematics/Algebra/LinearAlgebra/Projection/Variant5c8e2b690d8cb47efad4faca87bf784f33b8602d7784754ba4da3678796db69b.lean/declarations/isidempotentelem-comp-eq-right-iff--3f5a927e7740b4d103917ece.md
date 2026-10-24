# IsIdempotentElem.comp_eq_right_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b2833f9f5a66cc8997e70174bbca0935269ce23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 681,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1f9de01-34eb-e76c-2185-ec7b4df75697",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68863795-3638-52d9-9d27-197fe9c5544e",
  "kind": "theorem",
  "lexical_name": "IsIdempotentElem.comp_eq_right_iff",
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
  "slug": "isidempotentelem-comp-eq-right-iff--3f5a927e7740b4d103917ece",
  "source": {
    "blob": "7b2833f9f5a66cc8997e70174bbca0935269ce23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 681,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f5a927e7740b4d103917ece99f0ebed8d9571d90e42b66094b5e51e71759e02",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68863795-3638-52d9-9d27-197fe9c5544e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIdempotentElem.comp_eq_right_iff {q : M →ₗ[S] M} (hq : IsIdempotentElem q)
    {E : Type*} [AddCommMonoid E] [Module S E] (p : E →ₗ[S] M) :
    q.comp p = p ↔ range p ≤ range q := by
  simp_rw [LinearMap.ext_iff, comp_apply, ← hq.mem_range_iff,
    SetLike.le_def, mem_range, forall_exists_index, forall_apply_eq_imp_iff]

open LinearMap in
/-- Idempotent operators are equal iff their range and kernels are. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b2833f9f5a66cc8997e70174bbca0935269ce23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
