# continuousLinearMap_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49e34ef6-7fa2-947b-4ece-c82ebbed8c5e",
  "kind": "theorem",
  "lexical_name": "continuousLinearMap_apply",
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
  "slug": "continuouslinearmap-apply--7df82893cca3f0cd2f33c124",
  "source": {
    "blob": "bb69b3d9ddd5ba8ce6fb3fee212d0de9eaa41ce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 179,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7df82893cca3f0cd2f33c124de7a9876def0aebe4bfda8b28b2f62e6dbf8d788",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49e34ef6-7fa2-947b-4ece-c82ebbed8c5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousLinearMap_apply (p : TotalSpace (F₁ →SL[σ] F₂) fun x => E₁ x →SL[σ] E₂ x) :
    (continuousLinearMap σ e₁ e₂) p =
      ⟨p.1, .comp (e₂.continuousLinearMapAt 𝕜₂ p.1) (p.2.comp (e₁.symmL 𝕜₁ p.1))⟩ :=
  rfl
#align pretrivialization.continuous_linear_map_apply Pretrivialization.continuousLinearMap_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb69b3d9ddd5ba8ce6fb3fee212d0de9eaa41ce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
