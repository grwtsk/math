# IsLocalization.mk'_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c3c16c386e50b0680d9532b9006d119c6c60c874",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6b7530b-2feb-fcd2-4381-f30fb6f58330",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebafaf8e-f286-9d77-4e49-4ac0ff68469d",
  "kind": "lemma",
  "lexical_name": "IsLocalization.mk'_tmul",
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
  "slug": "islocalization-mk-tmul--c07dd54caddd25121a58a725",
  "source": {
    "blob": "c3c16c386e50b0680d9532b9006d119c6c60c874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 228,
    "path": "GRWTSK/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c07dd54caddd25121a58a725a6143f78e1fa7c1b5df62114fdd8f386cb52953f",
  "verification": {
    "reference": "docs/verification/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebafaf8e-f286-9d77-4e49-4ac0ff68469d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalization.mk'_tmul (M : Submonoid R) [IsLocalization M A] (s : S) (x : R) (y : M) :
    IsLocalization.mk' A x y ⊗ₜ s =
      IsLocalization.mk' (A ⊗[R] S) (algebraMap R S x * s)
        ⟨algebraMap R S y.1, Algebra.mem_algebraMapSubmonoid_of_mem _⟩ := by
  simp [IsLocalization.eq_mk'_iff_mul_eq, map_mul, ← IsScalarTower.algebraMap_apply,
    RingHom.algebraMap_toAlgebra]

namespace IsLocalization.Away

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c16c386e50b0680d9532b9006d119c6c60c874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
