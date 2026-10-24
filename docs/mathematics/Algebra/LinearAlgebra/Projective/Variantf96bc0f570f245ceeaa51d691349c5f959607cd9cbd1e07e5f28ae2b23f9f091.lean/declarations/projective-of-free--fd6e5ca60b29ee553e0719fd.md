# projective_of_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "517a9997a3e5ed3a27654dc80e53166fbeac165c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9354ff13-837a-b28e-f64f-92dfa9ce7904",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9494b9bb-2154-58e0-5cb4-91e1aa9f27f5",
  "kind": "theorem",
  "lexical_name": "projective_of_free",
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
  "slug": "projective-of-free--fd6e5ca60b29ee553e0719fd",
  "source": {
    "blob": "517a9997a3e5ed3a27654dc80e53166fbeac165c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd6e5ca60b29ee553e0719fdccf078d0212cff8bcfc66ff8b9779ecb5b272b14",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9494b9bb-2154-58e0-5cb4-91e1aa9f27f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projective_of_free {ι : Type w} (b : Basis ι R M) : Projective M :=
  have : Module.Projective R M := Module.Projective.of_basis b
  M.projective_of_categoryTheory_projective

/-- The category of modules has enough projectives, since every module is a quotient of a free
  module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517a9997a3e5ed3a27654dc80e53166fbeac165c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
