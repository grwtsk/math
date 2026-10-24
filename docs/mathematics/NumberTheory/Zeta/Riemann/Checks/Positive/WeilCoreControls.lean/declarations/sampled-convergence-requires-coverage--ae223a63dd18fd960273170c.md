# sampled_convergence_requires_coverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3aa4bb3b-de90-185e-6717-70b8a44e9938",
  "kind": "theorem",
  "lexical_name": "sampled_convergence_requires_coverage",
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
  "slug": "sampled-convergence-requires-coverage--ae223a63dd18fd960273170c",
  "source": {
    "blob": "8eb9cfe936450fd4276dcd2ddc38d5d7b8357429",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 118,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae223a63dd18fd960273170c67b80aac5a5c544230be8caeaa2086a365ce0000",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aa4bb3b-de90-185e-6717-70b8a44e9938`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampled_convergence_requires_coverage
    (family : PositiveGramFamily space H) (selected : Set space.Vector)
    (sampled : ∀ f, f ∈ selected →
      Tendsto (fun n => family.diagonal n f) atTop (𝓝 (form.diagonal f)))
    (covers : ∀ f, f ∈ selected)
    (revision : form.sourceRevision = space.revision)
    (normalization : form.normalizationId = space.normalizationId) : True := by
  fail_if_success
    -- C06 REJECT BEGIN
    have _trial : DiagonalPositiveGramLimit form H :=
      { family := family
        comparisonId := "paired-selected-set-control"
        form_revision_eq := revision
        form_normalization_eq := normalization
        tendsto_diagonal := sampled }
    -- C06 REJECT END
  -- C06 ACCEPT BEGIN
  have _trial : DiagonalPositiveGramLimit form H :=
    { family := family
      comparisonId := "paired-selected-set-control"
      form_revision_eq := revision
      form_normalization_eq := normalization
      tendsto_diagonal := fun f => sampled f (covers f) }
  -- C06 ACCEPT END
  exact True.intro

/-- C07: no implicit record coercion substitutes for the explicit polarization
bridge. The bridge is valid at this exact all-vector Hermitian scope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eb9cfe936450fd4276dcd2ddc38d5d7b8357429` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
