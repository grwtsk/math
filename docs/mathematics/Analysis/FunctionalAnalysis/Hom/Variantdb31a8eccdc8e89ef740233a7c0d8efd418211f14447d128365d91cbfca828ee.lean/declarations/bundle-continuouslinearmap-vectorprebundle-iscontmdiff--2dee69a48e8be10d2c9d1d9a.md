# Bundle.ContinuousLinearMap.vectorPrebundle.isContMDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:733b9dd32a927123da0c983b8e21805aa1243d5628c2fbb81fdeb9b8fc349b40",
  "kind": "instance",
  "lexical_name": "Bundle.ContinuousLinearMap.vectorPrebundle.isContMDiff",
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
  "slug": "bundle-continuouslinearmap-vectorprebundle-iscontmdiff--2dee69a48e8be10d2c9d1d9a",
  "source": {
    "blob": "3511a743fa95edbb31ad675ba427e9bcab7543b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 80,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dee69a48e8be10d2c9d1d9ae5552bbe76c56d16cb2e0008ff4e291a60fa73e7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:733b9dd32a927123da0c983b8e21805aa1243d5628c2fbb81fdeb9b8fc349b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Bundle.ContinuousLinearMap.vectorPrebundle.isContMDiff :
    (Bundle.ContinuousLinearMap.vectorPrebundle (RingHom.id 𝕜) F₁ E₁ F₂ E₂).IsContMDiff IB n where
  exists_contMDiffCoordChange := by
    rintro _ ⟨e₁, e₂, he₁, he₂, rfl⟩ _ ⟨e₁', e₂', he₁', he₂', rfl⟩
    exact ⟨continuousLinearMapCoordChange (RingHom.id 𝕜) e₁ e₁' e₂ e₂',
      contMDiffOn_continuousLinearMapCoordChange,
      continuousLinearMapCoordChange_apply (RingHom.id 𝕜) e₁ e₁' e₂ e₂'⟩

@[deprecated (since := "2025-01-09")]
alias Bundle.ContinuousLinearMap.vectorPrebundle.isSmooth :=
  Bundle.ContinuousLinearMap.vectorPrebundle.isContMDiff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantdb31a8eccdc8e89ef740233a7c0d8efd418211f14447d128365d91cbfca828ee.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3511a743fa95edbb31ad675ba427e9bcab7543b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
