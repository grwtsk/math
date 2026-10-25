# uniformTypeIIMaximal_implies_arithmetic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa9bf99951fab2068b68651d0dd9462e3d1cbae2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5c00699-2048-f316-2441-9c07c06186bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50bd68c0-6bd1-5ecd-ab80-336bd52f3574",
  "kind": "theorem",
  "lexical_name": "uniformTypeIIMaximal_implies_arithmetic",
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
  "slug": "uniformtypeiimaximal-implies-arithmetic--c35b6596253d8d9513d29580",
  "source": {
    "blob": "aa9bf99951fab2068b68651d0dd9462e3d1cbae2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c35b6596253d8d9513d29580e1c74e6ed8077e515f85d6e1aeb9916ea4e14a9c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50bd68c0-6bd1-5ecd-ab80-336bd52f3574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformTypeIIMaximal_implies_arithmetic
    (route : ConductorThreeVaughanPacketRoute)
    (hII : UniformConductorThreeTypeIIMaximal route) :
    ∀ epsilon : ℝ, 0 < epsilon →
      ∃ C : ℝ, 0 ≤ C ∧
        ∀ N : ℕ, 2 ≤ N →
          ∀ x : ℕ, x ≤ 2 * N →
            |conductorThreeVaughanTypeIIPrefix N x| ≤
              C * (N : ℝ) ^ (1 / 2 + epsilon) := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hbound⟩ := hII epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N hN x hx
  have h := hbound N hN x hx
  rw [route.typeIISignedPairing_eq N x hx] at h
  simpa [Complex.norm_real, Real.norm_eq_abs] using h

end

end Surface.Core.ConductorThreeWangZahlTTStar
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa9bf99951fab2068b68651d0dd9462e3d1cbae2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
