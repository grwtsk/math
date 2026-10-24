# KaehlerDifferential.kerTotal_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:885339b2-1555-a9e1-b919-7f06137779e2",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.kerTotal_eq",
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
  "slug": "kaehlerdifferential-kertotal-eq--5e1cd42e4f54f94b3c2df2bb",
  "source": {
    "blob": "1c1fe70d47bb7cdccaadf34cbb0f82c0fe688d3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 576,
    "path": "GRWTSK/Algebra/Basic/Variant9ca39f931c528b0affd29501b2cdcf5edd51fdee8c768b92bde58c035686840d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e1cd42e4f54f94b3c2df2bb2a17182dd7c58397ffe0c5228512565584859bbb",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant9ca39f931c528b0affd29501b2cdcf5edd51fdee8c768b92bde58c035686840d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:885339b2-1555-a9e1-b919-7f06137779e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 576–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.kerTotal_eq :
    LinearMap.ker (Finsupp.linearCombination S (KaehlerDifferential.D R S)) =
      KaehlerDifferential.kerTotal R S := by
  apply le_antisymm
  · conv_rhs => rw [← (KaehlerDifferential.kerTotal R S).ker_mkQ]
    rw [← KaehlerDifferential.derivationQuotKerTotal_lift_comp_linearCombination]
    exact LinearMap.ker_le_ker_comp _ _
  · rw [KaehlerDifferential.kerTotal, Submodule.span_le]
    rintro _ ((⟨⟨x, y⟩, rfl⟩ | ⟨⟨x, y⟩, rfl⟩) | ⟨x, rfl⟩) <;> dsimp <;> simp [LinearMap.mem_ker]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant9ca39f931c528b0affd29501b2cdcf5edd51fdee8c768b92bde58c035686840d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant9ca39f931c528b0affd29501b2cdcf5edd51fdee8c768b92bde58c035686840d.lean#L576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1fe70d47bb7cdccaadf34cbb0f82c0fe688d3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
