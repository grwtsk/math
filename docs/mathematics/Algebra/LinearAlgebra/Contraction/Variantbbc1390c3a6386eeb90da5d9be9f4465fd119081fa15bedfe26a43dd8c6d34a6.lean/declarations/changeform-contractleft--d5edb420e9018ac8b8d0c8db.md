# changeForm_contractLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a59fa14-264b-ae93-f14c-1c9f6a13412f",
  "kind": "theorem",
  "lexical_name": "changeForm_contractLeft",
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
  "slug": "changeform-contractleft--d5edb420e9018ac8b8d0c8db",
  "source": {
    "blob": "4f17774b147ab3e42edccb49d0c13489828b951d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 294,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variantbbc1390c3a6386eeb90da5d9be9f4465fd119081fa15bedfe26a43dd8c6d34a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5edb420e9018ac8b8d0c8db7625fa62e24430c92a7955748a14bed8203a85e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variantbbc1390c3a6386eeb90da5d9be9f4465fd119081fa15bedfe26a43dd8c6d34a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a59fa14-264b-ae93-f14c-1c9f6a13412f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem changeForm_contractLeft (d : Module.Dual R M) (x : CliffordAlgebra Q) :
    changeForm h (d⌋x) = d⌋(changeForm h x) := by
  induction x using CliffordAlgebra.left_induction with
  | algebraMap => simp only [contractLeft_algebraMap, changeForm_algebraMap, map_zero]
  | add _ _ hx hy => rw [map_add, map_add, map_add, map_add, hx, hy]
  | ι_mul _ _ hx =>
    simp only [contractLeft_ι_mul, changeForm_ι_mul, map_sub, LinearMap.map_smul]
    rw [← hx, contractLeft_comm, ← sub_add, sub_neg_eq_add, ← hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variantbbc1390c3a6386eeb90da5d9be9f4465fd119081fa15bedfe26a43dd8c6d34a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variantbbc1390c3a6386eeb90da5d9be9f4465fd119081fa15bedfe26a43dd8c6d34a6.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f17774b147ab3e42edccb49d0c13489828b951d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
