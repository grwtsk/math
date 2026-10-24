# of_restrictScalars_finiteType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeddf119-ec8e-f9ea-a2ba-74eebb3c1c4b",
  "kind": "theorem",
  "lexical_name": "of_restrictScalars_finiteType",
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
  "slug": "of-restrictscalars-finitetype--0652d7efb2e4d916b2bbdf6b",
  "source": {
    "blob": "1dda6c9206e6187b9b13d614c8cda4b511f625ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 104,
    "path": "GRWTSK/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0652d7efb2e4d916b2bbdf6ba36db7a04c5b92a70b82ce3ee44a6793ca7056c1",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeddf119-ec8e-f9ea-a2ba-74eebb3c1c4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_restrictScalars_finiteType [Algebra S A] [IsScalarTower R S A] [hA : FiniteType R A] :
    FiniteType S A := by
  obtain ⟨s, hS⟩ := hA.out
  refine' ⟨⟨s, eq_top_iff.2 fun b => _⟩⟩
  have le : adjoin R (s : Set A) ≤ Subalgebra.restrictScalars R (adjoin S s) := by
    apply (Algebra.adjoin_le _ : adjoin R (s : Set A) ≤ Subalgebra.restrictScalars R (adjoin S ↑s))
    simp only [Subalgebra.coe_restrictScalars]
    exact Algebra.subset_adjoin
  exact le (eq_top_iff.1 hS b)
#align algebra.finite_type.of_restrict_scalars_finite_type Algebra.FiniteType.of_restrictScalars_finiteType

variable {R S A B}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dda6c9206e6187b9b13d614c8cda4b511f625ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
