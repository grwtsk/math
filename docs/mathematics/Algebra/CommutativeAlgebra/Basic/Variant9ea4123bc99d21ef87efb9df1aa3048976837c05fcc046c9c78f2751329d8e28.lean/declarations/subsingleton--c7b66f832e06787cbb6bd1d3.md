# subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8547c702-ef9b-4959-8786-09b2e7c39926",
  "kind": "theorem",
  "lexical_name": "subsingleton",
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
  "slug": "subsingleton--c7b66f832e06787cbb6bd1d3",
  "source": {
    "blob": "79602d21069bd7859fad64eb6da406c2f5084c03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 168,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7b66f832e06787cbb6bd1d3ccd2166c9451b4dbfb383b253d5c00eef3623d52",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8547c702-ef9b-4959-8786-09b2e7c39926`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsingleton [Subsingleton B] : minpoly A x = 1 := by
  nontriviality A
  have := minpoly.min A x monic_one (Subsingleton.elim _ _)
  rw [degree_one] at this
  rcases le_or_lt (minpoly A x).degree 0 with h | h
  · rwa [(monic ⟨1, monic_one, by simp [eq_iff_true_of_subsingleton]⟩ :
           (minpoly A x).Monic).degree_le_zero_iff_eq_one] at h
  · exact (this.not_lt h).elim

end Ring

section CommRing

variable [CommRing A]

section Ring

variable [Ring B] [Algebra A B]
variable {x : B}

/-- The degree of a minimal polynomial, as a natural number, is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79602d21069bd7859fad64eb6da406c2f5084c03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
