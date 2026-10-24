# unrestrictedResidualFactorization_is_inhabited

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6db4c82ae399dd166d3e694f4a895ba9e3bba599",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea9c9fbf-fab9-6a3e-f393-df11afa7cf03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea506834-f246-c75e-2ce1-e5985b152179",
  "kind": "theorem",
  "lexical_name": "unrestrictedResidualFactorization_is_inhabited",
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
  "slug": "unrestrictedresidualfactorization-is-inhabited--fe960985562a0f6fd3353c74",
  "source": {
    "blob": "6db4c82ae399dd166d3e694f4a895ba9e3bba599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 118,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FactorizationNonvacuity/Variant99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe960985562a0f6fd3353c749caf8fe757a3b3ecdc605080626561a342a7207e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FactorizationNonvacuity/Variant99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea506834-f246-c75e-2ce1-e5985b152179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unrestrictedResidualFactorization_is_inhabited
    {Left Right : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    (target : ℕ → Matrix Left Right ℂ) :
    Nonempty
      (UnrestrictedPacketResidualFactorization Left Right ℂ ℂ target) :=
  ⟨residualOnlyFactorization target⟩

/-- The first non-vacuity predicate rejects the zero-synthesis/full-residual
factorization. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FactorizationNonvacuity/Variant99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FactorizationNonvacuity/Variant99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6db4c82ae399dd166d3e694f4a895ba9e3bba599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
