# mem_C'_eq_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d98d68e2-718a-c6d4-6c72-27b160418871",
  "kind": "theorem",
  "lexical_name": "mem_C'_eq_false",
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
  "slug": "mem-c-eq-false--76095b9e21c028b0d6a4278d",
  "source": {
    "blob": "fa01c6e1852d49b0a223015a3ecbf0f081443f62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 418,
    "path": "GRWTSK/Topology/GeneralTopology/Successor/Varianta964b1c0fa9257af88a5d994c79b4c87aa3f87fc4a0fadc13098ba34807aaac7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76095b9e21c028b0d6a4278d4eaa75d1c3a868d25d2f4505d9b82133e6afc922",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Successor/Varianta964b1c0fa9257af88a5d994c79b4c87aa3f87fc4a0fadc13098ba34807aaac7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d98d68e2-718a-c6d4-6c72-27b160418871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_C'_eq_false : ∀ x, x ∈ C' C ho → x (term I ho) = false := by
  rintro x ⟨_, y, _, rfl⟩
  simp only [Proj, ord_term_aux, lt_self_iff_false, ite_false]

/-- `List.tail` as a `Products`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Successor/Varianta964b1c0fa9257af88a5d994c79b4c87aa3f87fc4a0fadc13098ba34807aaac7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Successor/Varianta964b1c0fa9257af88a5d994c79b4c87aa3f87fc4a0fadc13098ba34807aaac7.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa01c6e1852d49b0a223015a3ecbf0f081443f62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
