# hasBasis_nhds_zero_of_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06c7b89c-56a5-554f-24ca-26c5457602ec",
  "kind": "theorem",
  "lexical_name": "hasBasis_nhds_zero_of_basis",
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
  "slug": "hasbasis-nhds-zero-of-basis--e92daa27496f6c0b5f5a97c3",
  "source": {
    "blob": "360f251c122bc58349a4de4fd10b69e16028234a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e92daa27496f6c0b5f5a97c39c63ee566f19c9c77c5c4dbe58364ad080755229",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06c7b89c-56a5-554f-24ca-26c5457602ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_nhds_zero_of_basis {ι' : Type*} {p : ι' → Prop} {b : ι' → Set F}
    (h : (𝓝 (0 : F)).HasBasis p b) :
    (𝓝 (0 : E [⋀^ι]→L[𝕜] F)).HasBasis
      (fun Si : Set (ι → E) × ι' => IsVonNBounded 𝕜 Si.1 ∧ p Si.2)
      fun Si => { f | MapsTo f Si.1 (b Si.2) } := by
  rw [nhds_induced]
  exact (ContinuousMultilinearMap.hasBasis_nhds_zero_of_basis h).comap _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `360f251c122bc58349a4de4fd10b69e16028234a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
