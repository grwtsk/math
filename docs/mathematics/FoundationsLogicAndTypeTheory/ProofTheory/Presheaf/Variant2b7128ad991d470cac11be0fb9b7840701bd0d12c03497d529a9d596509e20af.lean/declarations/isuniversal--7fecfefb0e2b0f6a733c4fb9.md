# isUniversal'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c850af69f47d1415652736cc7028baf2b8bd1c8cbe6bae5cd6fbca74b9eb4cc",
  "kind": "def",
  "lexical_name": "isUniversal'",
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
  "slug": "isuniversal--7fecfefb0e2b0f6a733c4fb9",
  "source": {
    "blob": "ed557dc3b887a9a36952e4afe5f9423efd194b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 216,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant2b7128ad991d470cac11be0fb9b7840701bd0d12c03497d529a9d596509e20af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fecfefb0e2b0f6a733c4fb9acdb22a67e916a780c0e2c3e48f10c1e8d155d0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant2b7128ad991d470cac11be0fb9b7840701bd0d12c03497d529a9d596509e20af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c850af69f47d1415652736cc7028baf2b8bd1c8cbe6bae5cd6fbca74b9eb4cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isUniversal' : (derivation' φ').Universal :=
  Derivation'.Universal.mk
    (fun {M'} d' ↦
      homMk (fun X ↦ (d'.app X).desc)
        (fun f ↦ CommRingCat.KaehlerDifferential.ext (fun b ↦ by
          dsimp
          rw [ModuleCat.Derivation.desc_d, Derivation'.app_apply]
          erw [relativeDifferentials'_map_d φ' f]
          simp)))
    (fun {M'} d' ↦ by
      ext X b
      apply ModuleCat.Derivation.desc_d)
    (fun {M} α β h ↦ by
      ext1 X
      exact CommRingCat.KaehlerDifferential.ext (Derivation.congr_d h))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant2b7128ad991d470cac11be0fb9b7840701bd0d12c03497d529a9d596509e20af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant2b7128ad991d470cac11be0fb9b7840701bd0d12c03497d529a9d596509e20af.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed557dc3b887a9a36952e4afe5f9423efd194b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
