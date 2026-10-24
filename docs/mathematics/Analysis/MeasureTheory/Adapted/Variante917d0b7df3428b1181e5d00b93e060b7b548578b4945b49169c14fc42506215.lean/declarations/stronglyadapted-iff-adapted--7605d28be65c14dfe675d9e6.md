# stronglyAdapted_iff_adapted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35a2e2d5-5b50-20e7-c6fe-f69652614ccb",
  "kind": "theorem",
  "lexical_name": "stronglyAdapted_iff_adapted",
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
  "slug": "stronglyadapted-iff-adapted--7605d28be65c14dfe675d9e6",
  "source": {
    "blob": "2d3fb427b30bf62b245c78001a9adaa2162d531d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 158,
    "path": "GRWTSK/Analysis/MeasureTheory/Adapted/Variante917d0b7df3428b1181e5d00b93e060b7b548578b4945b49169c14fc42506215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7605d28be65c14dfe675d9e68a354d428270a49d484911932aa15046b205731c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Adapted/Variante917d0b7df3428b1181e5d00b93e060b7b548578b4945b49169c14fc42506215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35a2e2d5-5b50-20e7-c6fe-f69652614ccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stronglyAdapted_iff_adapted [mΒ : ∀ i, MeasurableSpace (β i)]
    [∀ i, BorelSpace (β i)] [∀ i, PseudoMetrizableSpace (β i)]
    [∀ i, SecondCountableTopology (β i)] :
    StronglyAdapted f u ↔ Adapted f u := ⟨fun h ↦ h.adapted, fun h ↦ h.stronglyAdapted⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Adapted/Variante917d0b7df3428b1181e5d00b93e060b7b548578b4945b49169c14fc42506215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Adapted/Variante917d0b7df3428b1181e5d00b93e060b7b548578b4945b49169c14fc42506215.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d3fb427b30bf62b245c78001a9adaa2162d531d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
