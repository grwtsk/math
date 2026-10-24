# IsSemisimple.iSup_eigenspace_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8e3bc7c-a9ae-249d-9d16-0c203aeb30fa",
  "kind": "lemma",
  "lexical_name": "IsSemisimple.iSup_eigenspace_eq_top",
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
  "slug": "issemisimple-isup-eigenspace-eq-top--4dcdc56676d06aa232ac2a59",
  "source": {
    "blob": "8763f6e48519f6aa5d4bb205de3f5ab123ef2ce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dcdc56676d06aa232ac2a598f88de802a17fe7b28f9fb01e6f7ea638513ef51",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8e3bc7c-a9ae-249d-9d16-0c203aeb30fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSemisimple.iSup_eigenspace_eq_top (hf : f.IsSemisimple) :
    ⨆ μ : K, f.eigenspace μ = ⊤ := by
  simpa only [(isFinitelySemisimple_iff_isSemisimple.mpr hf).maxGenEigenspace_eq_eigenspace] using
    iSup_maxGenEigenspace_eq_top f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8763f6e48519f6aa5d4bb205de3f5ab123ef2ce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
