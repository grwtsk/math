# smul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc705471fe55fbf80a3f4580f1b9abc7b4a4fd29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4ba2d4d7418cf5d864f96cb2f726cafcabf61dae4f4426d4c83f251954af83b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75210ba3-aab5-9d80-1366-8d8349e76b53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44ea9868-8233-d4ea-dc75-1b0368e6e4b3",
  "kind": "theorem",
  "lexical_name": "smul_mem",
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
  "slug": "smul-mem--b66eb1bf9b71f4d2a7464dec",
  "source": {
    "blob": "dc705471fe55fbf80a3f4580f1b9abc7b4a4fd29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 91,
    "path": "GRWTSK/Algebra/Bimodule/Variant4ba2d4d7418cf5d864f96cb2f726cafcabf61dae4f4426d4c83f251954af83b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b66eb1bf9b71f4d2a7464deceda81e6655e087d1b3826f6759597d818494f613",
  "verification": {
    "reference": "docs/verification/Algebra/Bimodule/Variant4ba2d4d7418cf5d864f96cb2f726cafcabf61dae4f4426d4c83f251954af83b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44ea9868-8233-d4ea-dc75-1b0368e6e4b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_mem (p : Submodule (A ⊗[R] B) M) (a : A) {m : M} (hm : m ∈ p) : a • m ∈ p := by
  suffices a • m = a ⊗ₜ[R] (1 : B) • m by exact this.symm ▸ p.smul_mem _ hm
  simp [TensorProduct.Algebra.smul_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Bimodule/Variant4ba2d4d7418cf5d864f96cb2f726cafcabf61dae4f4426d4c83f251954af83b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Bimodule/Variant4ba2d4d7418cf5d864f96cb2f726cafcabf61dae4f4426d4c83f251954af83b6.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc705471fe55fbf80a3f4580f1b9abc7b4a4fd29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
