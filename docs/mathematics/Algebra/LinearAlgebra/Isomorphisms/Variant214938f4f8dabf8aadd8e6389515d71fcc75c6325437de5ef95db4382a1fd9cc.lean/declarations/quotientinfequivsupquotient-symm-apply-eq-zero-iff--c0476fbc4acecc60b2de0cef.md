# quotientInfEquivSupQuotient_symm_apply_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d25cae708421e6f80e10c9306fa22ded434831d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddd0ec0f-aab8-2203-f084-49604d51d699",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:670d700c-0112-33cc-d2d4-943b9b4fa960",
  "kind": "theorem",
  "lexical_name": "quotientInfEquivSupQuotient_symm_apply_eq_zero_iff",
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
  "slug": "quotientinfequivsupquotient-symm-apply-eq-zero-iff--c0476fbc4acecc60b2de0cef",
  "source": {
    "blob": "3d25cae708421e6f80e10c9306fa22ded434831d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0476fbc4acecc60b2de0cef8f5c40e6e328cd33ac9ff057460eabbb3282b9c4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:670d700c-0112-33cc-d2d4-943b9b4fa960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotientInfEquivSupQuotient_symm_apply_eq_zero_iff {p p' : Submodule R M} {x : ↥(p ⊔ p')} :
    (quotientInfEquivSupQuotient p p').symm (Submodule.Quotient.mk x) = 0 ↔ (x : M) ∈ p' :=
  (LinearEquiv.symm_apply_eq _).trans <| by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d25cae708421e6f80e10c9306fa22ded434831d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
