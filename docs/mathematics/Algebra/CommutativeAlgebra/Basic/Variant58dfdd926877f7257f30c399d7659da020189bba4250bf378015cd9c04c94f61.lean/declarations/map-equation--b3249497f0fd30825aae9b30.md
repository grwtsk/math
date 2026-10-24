# map_equation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:623ca025-97aa-bff5-abef-0e322b6090f2",
  "kind": "lemma",
  "lexical_name": "map_equation",
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
  "slug": "map-equation--b3249497f0fd30825aae9b30",
  "source": {
    "blob": "9b51827ba8d9d0821af06c83a0a9fcabf275eb91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 276,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3249497f0fd30825aae9b306545bcbfae0df4b8898da843debba2e0d03ab204",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:623ca025-97aa-bff5-abef-0e322b6090f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_equation (hf : Function.Injective f) :
    (W.map f).toAffine.Equation (f x) (f y) ↔ W.Equation x y := by
  simp only [Equation, map_polynomial, map_mapRingHom_evalEval, map_eq_zero_iff f hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b51827ba8d9d0821af06c83a0a9fcabf275eb91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
