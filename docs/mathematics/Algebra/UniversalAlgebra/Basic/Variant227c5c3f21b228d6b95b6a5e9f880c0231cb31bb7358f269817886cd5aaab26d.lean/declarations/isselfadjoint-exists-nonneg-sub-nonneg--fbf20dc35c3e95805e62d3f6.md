# IsSelfAdjoint.exists_nonneg_sub_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2734e9ba-92b5-40a2-a21e-fe47c3653f60",
  "kind": "lemma",
  "lexical_name": "IsSelfAdjoint.exists_nonneg_sub_nonneg",
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
  "slug": "isselfadjoint-exists-nonneg-sub-nonneg--fbf20dc35c3e95805e62d3f6",
  "source": {
    "blob": "2a8d109f8dec75d0bdb7e034b929bff83abe099f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 105,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbf20dc35c3e95805e62d3f6e73327873915865a4052db878d77c67dcda796a5",
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

Occurrence: `result:2734e9ba-92b5-40a2-a21e-fe47c3653f60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSelfAdjoint.exists_nonneg_sub_nonneg {R : Type*} [AddGroup R] [Star R]
    [PartialOrder R] [SelfAdjointDecompose R] {a : R} (ha : IsSelfAdjoint a) :
    ∃ (b c : R), 0 ≤ b ∧ 0 ≤ c ∧ a = b - c :=
  SelfAdjointDecompose.exists_nonneg_sub_nonneg ha

namespace StarOrderedRing
section NonUnitalSemiring
variable [NonUnitalSemiring R] [PartialOrder R] [StarRing R]

/-- To construct a `StarOrderedRing` instance it suffices to show that `x ≤ y` if and only if
`y = x + star s * s` for some `s : R`.

This is provided for convenience because it holds in some common scenarios (e.g.,`ℝ≥0`, `C(X, ℝ≥0)`)
and obviates the hassle of `AddSubmonoid.closure_induction` when creating those instances.

If you are working with a `NonUnitalRing` and not a `NonUnitalSemiring`, see
`StarOrderedRing.of_nonneg_iff` for a more convenient version.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant227c5c3f21b228d6b95b6a5e9f880c0231cb31bb7358f269817886cd5aaab26d.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a8d109f8dec75d0bdb7e034b929bff83abe099f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
