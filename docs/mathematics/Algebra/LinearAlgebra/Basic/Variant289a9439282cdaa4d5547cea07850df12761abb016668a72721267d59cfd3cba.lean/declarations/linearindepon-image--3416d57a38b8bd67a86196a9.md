# LinearIndepOn.image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f6038fad7df16340a9cb7d7b33a2447e82809a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 507,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d93f6e0-5e28-c7e6-49d3-a3e009ba2134",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b7ec33a-2c07-8e99-7dea-931bb4bbd269",
  "kind": "theorem",
  "lexical_name": "LinearIndepOn.image",
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
  "slug": "linearindepon-image--3416d57a38b8bd67a86196a9",
  "source": {
    "blob": "6f6038fad7df16340a9cb7d7b33a2447e82809a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 507,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3416d57a38b8bd67a86196a90912d23ff452472363e7636c53628e1b26b34349",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b7ec33a-2c07-8e99-7dea-931bb4bbd269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIndepOn.image {s : Set M} {f : M →ₗ[R] M'}
    (hs : LinearIndepOn R id s) (hf_inj : Disjoint (span R s) (LinearMap.ker f)) :
    LinearIndepOn R id (f '' s) :=
  hs.id_imageₛ <| LinearMap.injOn_of_disjoint_ker le_rfl hf_inj

@[deprecated (since := "2025-02-15")] alias LinearIndependent.image_subtype :=
  LinearIndepOn.image

-- See, for example, Keith Conrad's note
--  <https://kconrad.math.uconn.edu/blurbs/galoistheory/linearchar.pdf>
/-- Dedekind's linear independence of characters -/
@[stacks 0CKL]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f6038fad7df16340a9cb7d7b33a2447e82809a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
