# mk_comp_liftRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca97dd5f734a58b632a3d0c973775ea8741b1450",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0a2601e-f796-4e69-c19b-64ebb28ff902",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02441026-5c08-96c9-f865-77d16ce751fb",
  "kind": "theorem",
  "lexical_name": "mk_comp_liftRingHom",
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
  "slug": "mk-comp-liftringhom--19272fa04ca12879f9e126e7",
  "source": {
    "blob": "ca97dd5f734a58b632a3d0c973775ea8741b1450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 75,
    "path": "GRWTSK/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19272fa04ca12879f9e126e7ca30430af12cbcd9f2cc23368be6a209823e6c0b",
  "verification": {
    "reference": "docs/verification/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02441026-5c08-96c9-f865-77d16ce751fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem mk_comp_liftRingHom (n : ℕ) :
    (Ideal.Quotient.mk (I ^ n)).comp (liftRingHom I f hf) = f n := by
  ext; simp

/--
Uniqueness of the lift.
Given a compatible family of linear maps `f n : R →ₗ[R] S ⧸ (I ^ n)`.
If `F : R →+* S` makes the following diagram commute
```
  R
  | \
 F|  \ f n
  |   \
  v    v
  S --> S ⧸ (I ^ n)
```
Then it is the map `IsAdicComplete.lift`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca97dd5f734a58b632a3d0c973775ea8741b1450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
