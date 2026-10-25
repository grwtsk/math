# inventoryMap_not_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c0bfdde-1a21-8255-48f6-ce0f3d31a930",
  "kind": "theorem",
  "lexical_name": "inventoryMap_not_injective",
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
  "slug": "inventorymap-not-injective--12c94127c680deb07fa945d3",
  "source": {
    "blob": "13d3c126ce4a346594eedff9d3448e69c3941dd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationOrbitRefinement/Variant4e6058d6a0c3cf6b7d43ce0fc5b65ccff5f9b7ed8bdae5f7d828d58ba34bdfe6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12c94127c680deb07fa945d3d1dc984d58c2154e5c76e2ca36e979771ec8e920",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationOrbitRefinement/Variant4e6058d6a0c3cf6b7d43ce0fc5b65ccff5f9b7ed8bdae5f7d828d58ba34bdfe6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c0bfdde-1a21-8255-48f6-ce0f3d31a930`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inventoryMap_not_injective {I K : Finset ℕ} (hIK : I ⊆ K)
    (m : ℕ) (hmK : m ∈ K) (hmI : m ∉ I) :
    ¬ Function.Injective (inventoryMap hIK) := by
  classical
  let j : OrbitIndex K := (false, false, ⟨m, hmK⟩)
  have he : inventoryMap hIK (Pi.single j (1 : ℂ)) =
      inventoryMap hIK (fun _ => 0) := by
    funext i
    have hn : includeIndex hIK i ≠ j := by
      intro h
      have hm : (i.2.2 : ℕ) = m := by
        simpa [includeIndex, j] using congrArg (fun k : OrbitIndex K => (k.2.2 : ℕ)) h
      exact hmI (hm ▸ i.2.2.property)
    simp [inventoryMap_apply, hn]
  intro h
  have hv := congrFun (h he) j
  simp at hv

/-- Apply the existing native state reconstruction to this directed section. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationOrbitRefinement/Variant4e6058d6a0c3cf6b7d43ce0fc5b65ccff5f9b7ed8bdae5f7d828d58ba34bdfe6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationOrbitRefinement/Variant4e6058d6a0c3cf6b7d43ce0fc5b65ccff5f9b7ed8bdae5f7d828d58ba34bdfe6.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13d3c126ce4a346594eedff9d3448e69c3941dd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
