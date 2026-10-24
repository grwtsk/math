# IsSelfAdjoint.commute_of_mul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac1d0020-7c8b-8829-693e-dda2044b6114",
  "kind": "lemma",
  "lexical_name": "IsSelfAdjoint.commute_of_mul_eq_zero",
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
  "slug": "isselfadjoint-commute-of-mul-eq-zero--4cd07248f4cfb4b0b5ec13b9",
  "source": {
    "blob": "b2e450b9a8721f9879b088d8e80f6150d5500827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 734,
    "line": 726,
    "path": "GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cd07248f4cfb4b0b5ec13b9e3f160dd12937cdf7215e419ea5d9cb50537a969",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac1d0020-7c8b-8829-693e-dda2044b6114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 726–734.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSelfAdjoint.commute_of_mul_eq_zero [NonUnitalNonAssocRing R] [StarRing R]
    {a b : R} (ha : IsSelfAdjoint a) (hb : IsSelfAdjoint b) (hab : a * b = 0) :
    Commute a b := by
  have : b * a = 0 := by simpa [ha.star_eq, hb.star_eq] using congr(star $hab)
  grind [commute_iff_eq]

namespace Pi
variable {ι : Type*} {α : ι → Type*} [∀ i, Star (α i)] {f : ∀ i, α i}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean#L726).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2e450b9a8721f9879b088d8e80f6150d5500827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
