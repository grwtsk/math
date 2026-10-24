# orthogonalComplement_iSup_eigenspaces_eq_bot'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55bd07c555f5b5119fd18487f58083e2747588b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4fe99b0-53d8-8829-cb56-778a22e2710a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79e6eae1-00e2-58b1-ac8f-cab06c8d72fa",
  "kind": "theorem",
  "lexical_name": "orthogonalComplement_iSup_eigenspaces_eq_bot'",
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
  "slug": "orthogonalcomplement-isup-eigenspaces-eq-bot--bc288316e1a6185ffb614b2f",
  "source": {
    "blob": "55bd07c555f5b5119fd18487f58083e2747588b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc288316e1a6185ffb614b2f6204641cfe1e2719f63d0ec70032349b08f00712",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79e6eae1-00e2-58b1-ac8f-cab06c8d72fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalComplement_iSup_eigenspaces_eq_bot' (hT : T.IsSymmetric) :
    (⨆ μ : Eigenvalues T, eigenspace T μ)ᗮ = ⊥ :=
  show (⨆ μ : { μ // eigenspace T μ ≠ ⊥ }, eigenspace T μ)ᗮ = ⊥ by
    rw [iSup_ne_bot_subtype, hT.orthogonalComplement_iSup_eigenspaces_eq_bot]

/-- The eigenspaces of a self-adjoint operator on a finite-dimensional inner product space `E` gives
an internal direct sum decomposition of `E`.

Note this takes `hT` as a `Fact` to allow it to be an instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant1173532baaaa74dba19e2e4be00bfba18cf4c7fb522133f1f1b00e5300bb211b.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55bd07c555f5b5119fd18487f58083e2747588b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
