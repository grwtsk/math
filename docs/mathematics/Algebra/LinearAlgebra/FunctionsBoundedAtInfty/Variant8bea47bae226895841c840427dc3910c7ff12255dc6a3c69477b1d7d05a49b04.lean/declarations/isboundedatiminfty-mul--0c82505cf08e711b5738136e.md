# IsBoundedAtImInfty.mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdc40a71-60d8-fe3e-e0bd-d912eb667413",
  "kind": "theorem",
  "lexical_name": "IsBoundedAtImInfty.mul",
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
  "slug": "isboundedatiminfty-mul--0c82505cf08e711b5738136e",
  "source": {
    "blob": "3c6957b6a982f4bdb269979ea7ea7c765de4b697",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant8bea47bae226895841c840427dc3910c7ff12255dc6a3c69477b1d7d05a49b04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c82505cf08e711b5738136e17677429e8ee9412966c5cab8afcc7eee73376b5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant8bea47bae226895841c840427dc3910c7ff12255dc6a3c69477b1d7d05a49b04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdc40a71-60d8-fe3e-e0bd-d912eb667413`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem IsBoundedAtImInfty.mul {f g : ℍ → ℂ} (hf : IsBoundedAtImInfty f)
    (hg : IsBoundedAtImInfty g) : IsBoundedAtImInfty (f * g) := by
  simpa only [Pi.one_apply, mul_one, norm_eq_abs] using hf.mul hg
#align upper_half_plane.is_bounded_at_im_infty.mul UpperHalfPlane.IsBoundedAtImInfty.mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant8bea47bae226895841c840427dc3910c7ff12255dc6a3c69477b1d7d05a49b04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant8bea47bae226895841c840427dc3910c7ff12255dc6a3c69477b1d7d05a49b04.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c6957b6a982f4bdb269979ea7ea7c765de4b697` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
