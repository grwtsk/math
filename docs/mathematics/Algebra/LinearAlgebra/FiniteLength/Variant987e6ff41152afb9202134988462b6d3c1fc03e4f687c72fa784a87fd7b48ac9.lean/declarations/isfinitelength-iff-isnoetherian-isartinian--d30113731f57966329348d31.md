# isFiniteLength_iff_isNoetherian_isArtinian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:958ffb14-cb4b-0f20-8157-5d46d4729031",
  "kind": "theorem",
  "lexical_name": "isFiniteLength_iff_isNoetherian_isArtinian",
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
  "slug": "isfinitelength-iff-isnoetherian-isartinian--d30113731f57966329348d31",
  "source": {
    "blob": "0b074388e4ebd8dc73d013260c072203e0878386",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d30113731f57966329348d31ae913b5c8f292c684b466d0a606ecc1ef21e43d6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:958ffb14-cb4b-0f20-8157-5d46d4729031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFiniteLength_iff_isNoetherian_isArtinian :
    IsFiniteLength R M ↔ IsNoetherian R M ∧ IsArtinian R M :=
  ⟨fun h ↦ h.rec (fun {M} _ _ _ ↦ ⟨inferInstance, inferInstance⟩) fun M _ _ {N} _ _ ⟨_, _⟩ ↦
    ⟨(isNoetherian_iff_submodule_quotient N).mpr ⟨‹_›, isNoetherian_iff'.mpr inferInstance⟩,
      (isArtinian_iff_submodule_quotient N).mpr ⟨‹_›, inferInstance⟩⟩,
    fun ⟨_, _⟩ ↦ isFiniteLength_of_exists_compositionSeries
      (exists_compositionSeries_of_isNoetherian_isArtinian R M)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b074388e4ebd8dc73d013260c072203e0878386` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
