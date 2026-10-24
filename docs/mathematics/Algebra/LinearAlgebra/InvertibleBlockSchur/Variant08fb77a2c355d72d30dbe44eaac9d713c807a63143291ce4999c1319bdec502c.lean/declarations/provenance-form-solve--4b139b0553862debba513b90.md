# provenance_form_solve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12aaf426-41db-c6ad-145e-fa5f6f191aea",
  "kind": "theorem",
  "lexical_name": "provenance_form_solve",
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
  "slug": "provenance-form-solve--4b139b0553862debba513b90",
  "source": {
    "blob": "d678bbada417d305a83d20390b5589757dd01ee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 93,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b139b0553862debba513b902d5e531da36cb304b1f129656d3378a8e9245df3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12aaf426-41db-c6ad-145e-fa5f6f191aea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem provenance_form_solve (I : InvertibleProvenanceBlock G) (p : P) (u : U) :
    G.form (provenanceInclusion p) (provenanceInclusion (I.solve u)) =
      G.form (provenanceInclusion p) (autonomousInclusion u) := by
  calc
    G.form (provenanceInclusion p) (provenanceInclusion (I.solve u)) =
        I.gramEquiv (I.solve u) p := by
          symm
          exact I.gramEquiv_apply (I.solve u) p
    _ = provenanceCrossMap G u p := by
          rw [I.gramEquiv_solve]
    _ = G.form (provenanceInclusion p) (autonomousInclusion u) := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d678bbada417d305a83d20390b5589757dd01ee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
