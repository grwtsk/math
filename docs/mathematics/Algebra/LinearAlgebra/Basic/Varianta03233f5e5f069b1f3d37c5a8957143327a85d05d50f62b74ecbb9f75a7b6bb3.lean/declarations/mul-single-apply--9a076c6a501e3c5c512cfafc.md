# mul_single_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebd36d80-76a4-b384-7134-5d1a23890aee",
  "kind": "theorem",
  "lexical_name": "mul_single_apply",
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
  "slug": "mul-single-apply--9a076c6a501e3c5c512cfafc",
  "source": {
    "blob": "505163d603c369fd89805cdd652c5a9491856b5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1697,
    "line": 1693,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a076c6a501e3c5c512cfafc7431f0551f968ab0bfb9839d0d4f35b3940dcb41",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebd36d80-76a4-b384-7134-5d1a23890aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1693–1697.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_single_apply [AddGroup G] (f : AddMonoidAlgebra k G) (r : k) (x y : G) :
    (f * single x r) y = f (y - x) * r :=
  (sub_eq_add_neg y x).symm ▸ @MonoidAlgebra.mul_single_apply k (Multiplicative G) _ _ _ _ _ _
#align add_monoid_algebra.mul_single_apply AddMonoidAlgebra.mul_single_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean#L1693).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `505163d603c369fd89805cdd652c5a9491856b5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
