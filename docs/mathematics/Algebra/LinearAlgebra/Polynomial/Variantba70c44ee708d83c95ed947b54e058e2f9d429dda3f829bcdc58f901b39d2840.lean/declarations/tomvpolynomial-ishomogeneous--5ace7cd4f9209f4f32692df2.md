# toMvPolynomial_isHomogeneous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65ba155a-a9e5-ccac-6645-207d4fb1a5e7",
  "kind": "lemma",
  "lexical_name": "toMvPolynomial_isHomogeneous",
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
  "slug": "tomvpolynomial-ishomogeneous--5ace7cd4f9209f4f32692df2",
  "source": {
    "blob": "76a447cf469c5e7d910e521b03394a20268c9d91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ace7cd4f9209f4f32692df28add25f35b9e9e3176b348afd90cff3847671801",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65ba155a-a9e5-ccac-6645-207d4fb1a5e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toMvPolynomial_isHomogeneous (M : Matrix m n R) (i : m) :
    (M.toMvPolynomial i).IsHomogeneous 1 := by
  apply MvPolynomial.IsHomogeneous.sum
  rintro j -
  apply MvPolynomial.isHomogeneous_monomial _ _
  simp [Finsupp.degree, Finsupp.support_single_ne_zero _ one_ne_zero, Finset.sum_singleton,
    Finsupp.single_eq_same]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantba70c44ee708d83c95ed947b54e058e2f9d429dda3f829bcdc58f901b39d2840.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76a447cf469c5e7d910e521b03394a20268c9d91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
