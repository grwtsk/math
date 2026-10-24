# exists_rat_eq_nth_convergent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:643c48ce-4336-24a2-6db3-2b6fa9006d22",
  "kind": "theorem",
  "lexical_name": "exists_rat_eq_nth_convergent",
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
  "slug": "exists-rat-eq-nth-convergent--1e6495d4b47302fec20f4a74",
  "source": {
    "blob": "eb5a3e3e8744b0ccc132946edfddaa0f628a0761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 128,
    "path": "GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e6495d4b47302fec20f4a74129a71cd3e14ceefc2aa46fea9793a0f4bccf637",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:643c48ce-4336-24a2-6db3-2b6fa9006d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rat_eq_nth_convergent : ∃ q : ℚ, (of v).convergents n = (q : K) := by
  rcases exists_rat_eq_nth_numerator v n with ⟨Aₙ, nth_num_eq⟩
  rcases exists_rat_eq_nth_denominator v n with ⟨Bₙ, nth_denom_eq⟩
  use Aₙ / Bₙ
  simp [nth_num_eq, nth_denom_eq, convergent_eq_num_div_denom]
#align generalized_continued_fraction.exists_rat_eq_nth_convergent GeneralizedContinuedFraction.exists_rat_eq_nth_convergent

variable {v}

/-- Every terminating continued fraction corresponds to a rational number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb5a3e3e8744b0ccc132946edfddaa0f628a0761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
