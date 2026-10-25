# uniformTypeIIMaximal_implies_arithmetic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba91d553-ce20-b8cc-dbf3-6c3f8be6f198",
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
  "slug": "uniformtypeiimaximal-implies-arithmetic--57e21b3661722ebf081a4d78",
  "source": {
    "blob": "6ff5fcd0f9b7bf92e0374976e7f6890c7deec68f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant9e6bd492c2bb85f14fe395a1c46a16c31435ea9bca998872bcdf5efffa265ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57e21b3661722ebf081a4d7867c5d30260406d91c432acb100c1db4d5811530f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant9e6bd492c2bb85f14fe395a1c46a16c31435ea9bca998872bcdf5efffa265ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba91d553-ce20-b8cc-dbf3-6c3f8be6f198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–155.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant9e6bd492c2bb85f14fe395a1c46a16c31435ea9bca998872bcdf5efffa265ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlTTStar/Variant9e6bd492c2bb85f14fe395a1c46a16c31435ea9bca998872bcdf5efffa265ee1.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ff5fcd0f9b7bf92e0374976e7f6890c7deec68f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
