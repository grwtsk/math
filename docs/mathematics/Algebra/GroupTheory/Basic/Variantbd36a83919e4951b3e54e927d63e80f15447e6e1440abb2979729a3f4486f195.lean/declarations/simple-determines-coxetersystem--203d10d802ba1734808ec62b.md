# simple_determines_coxeterSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "556b92e9135ec07d3437ab012daf6312c8563787",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 358,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c667488f-39d3-669d-bd9b-2863bf646963",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13a7d691-67b4-1859-5413-2707022dfb1f",
  "kind": "theorem",
  "lexical_name": "simple_determines_coxeterSystem",
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
  "slug": "simple-determines-coxetersystem--203d10d802ba1734808ec62b",
  "source": {
    "blob": "556b92e9135ec07d3437ab012daf6312c8563787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 358,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:203d10d802ba1734808ec62b7b48b26e6fa9e0c8ec9824af6cf0e105ea574c6e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13a7d691-67b4-1859-5413-2707022dfb1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simple_determines_coxeterSystem :
    Injective (simple : CoxeterSystem M W → B → W) := by
  intro cs1 cs2 h
  apply CoxeterSystem.ext
  apply MulEquiv.toMonoidHom_injective
  apply cs1.ext_simple
  nth_rw 2 [h]
  simp [simple]

/-! ### Words -/

/-- The product of the simple reflections of `W` corresponding to the indices in `ω`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantbd36a83919e4951b3e54e927d63e80f15447e6e1440abb2979729a3f4486f195.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `556b92e9135ec07d3437ab012daf6312c8563787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
