# iff_addMonoidHom_rangeRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b37d136-04a0-773e-8595-136cc7efb0d2",
  "kind": "lemma",
  "lexical_name": "iff_addMonoidHom_rangeRestrict",
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
  "slug": "iff-addmonoidhom-rangerestrict--17e74ef608ebc754a43bc75a",
  "source": {
    "blob": "87c5ac5d98da72e128ac79f7e5dec1c508397f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 198,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17e74ef608ebc754a43bc75a5c2c9da8fd9a8ddea3bea92ac67816a413bcabbb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b37d136-04a0-773e-8595-136cc7efb0d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_addMonoidHom_rangeRestrict :
    Exact f g ↔ Exact f.range.subtype g.rangeRestrict :=
  iff_rangeFactorization (zero_mem g.range)

alias ⟨addMonoidHom_rangeRestrict, _⟩ := iff_addMonoidHom_rangeRestrict

end Function.Exact

end AddMonoidHom

section LinearMap

open Function

variable [Semiring R] [AddCommMonoid M] [AddCommMonoid M'] [AddCommMonoid N]
  [AddCommMonoid N'] [AddCommMonoid P] [AddCommMonoid P'] [Module R M]
  [Module R M'] [Module R N] [Module R N'] [Module R P] [Module R P']

variable {f : M →ₗ[R] N} {g : N →ₗ[R] P}

namespace LinearMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exact/Variant9b7a31022e6a17320bfa838248a585898182df73c81c5866e70894498cef7c21.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87c5ac5d98da72e128ac79f7e5dec1c508397f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
