# of_nonneg_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf09bcb3-fa09-4a9e-ed7e-8d67b3e59c44",
  "kind": "lemma",
  "lexical_name": "of_nonneg_iff'",
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
  "slug": "of-nonneg-iff--09eb03abc2c8a9a984db8c7a",
  "source": {
    "blob": "2a8d109f8dec75d0bdb7e034b929bff83abe099f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 187,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09eb03abc2c8a9a984db8c7ad022b382d1252b6f8cb093a5695bce0c9ce16e6f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf09bcb3-fa09-4a9e-ed7e-8d67b3e59c44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_nonneg_iff' [NonUnitalRing R] [PartialOrder R] [StarRing R]
    (h_add : ∀ {x y : R}, x ≤ y → ∀ z, z + x ≤ z + y)
    (h_nonneg_iff : ∀ x : R, 0 ≤ x ↔ ∃ s, x = star s * s) : StarOrderedRing R :=
  of_le_iff <| by
    have : AddLeftMono R := ⟨fun _ _ _ h => h_add h _⟩
    simpa [sub_eq_iff_eq_add', sub_nonneg] using fun x y => h_nonneg_iff (y - x)

end StarOrderedRing

section NonUnitalSemiring

variable [NonUnitalSemiring R] [PartialOrder R] [StarRing R] [StarOrderedRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a8d109f8dec75d0bdb7e034b929bff83abe099f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
