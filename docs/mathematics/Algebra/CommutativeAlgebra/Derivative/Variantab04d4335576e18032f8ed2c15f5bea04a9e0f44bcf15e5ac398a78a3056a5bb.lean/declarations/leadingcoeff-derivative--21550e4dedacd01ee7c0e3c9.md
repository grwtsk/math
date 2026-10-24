# leadingCoeff_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:899a8f66-7a32-344b-2458-c57f892457fa",
  "kind": "lemma",
  "lexical_name": "leadingCoeff_derivative",
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
  "slug": "leadingcoeff-derivative--21550e4dedacd01ee7c0e3c9",
  "source": {
    "blob": "c04bb40f40baafb24f12dae71deb15348241b4d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 445,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantab04d4335576e18032f8ed2c15f5bea04a9e0f44bcf15e5ac398a78a3056a5bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21550e4dedacd01ee7c0e3c98cf29e5b26ca6f71366640b91db8ec844c3acfa7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivative/Variantab04d4335576e18032f8ed2c15f5bea04a9e0f44bcf15e5ac398a78a3056a5bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:899a8f66-7a32-344b-2458-c57f892457fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma leadingCoeff_derivative (p : R[X]) :
    leadingCoeff (derivative p) = leadingCoeff p * p.natDegree := by
  by_cases hp : p.natDegree = 0
  · simp [hp]
  rw [leadingCoeff, leadingCoeff, coeff_derivative, natDegree_derivative]
  norm_cast
  congr <;> lia

@[deprecated (since := "2026-06-03")]
alias ⟨natDegree_eq_zero_of_derivative_eq_zero, _⟩ := derivative_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variantab04d4335576e18032f8ed2c15f5bea04a9e0f44bcf15e5ac398a78a3056a5bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantab04d4335576e18032f8ed2c15f5bea04a9e0f44bcf15e5ac398a78a3056a5bb.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04bb40f40baafb24f12dae71deb15348241b4d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
