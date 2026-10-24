# coeffs_lc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7ac4a782a0ec4f00ac238d7374fec354278cc8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70fd2af1-a880-9151-a796-fa9c8e0606c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:966f5eb8-f59c-e81f-d478-5d751e606530",
  "kind": "theorem",
  "lexical_name": "coeffs_lc",
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
  "slug": "coeffs-lc--15c2101cff715c24df1a1d0d",
  "source": {
    "blob": "d7ac4a782a0ec4f00ac238d7374fec354278cc8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 277,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15c2101cff715c24df1a1d0dffb4265e9e0e9744c088252e6cab68ea5dc49f42",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:966f5eb8-f59c-e81f-d478-5d751e606530`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeffs_lc (l : ι →₀ R) : h.coeffs (DualBases.lc e l) = l := by
  ext i
  rw [h.coeffs_apply, h.dual_lc]

/-- For any m : M n, \sum_{p ∈ Q n} (ε p m) • e p = m -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7ac4a782a0ec4f00ac238d7374fec354278cc8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
