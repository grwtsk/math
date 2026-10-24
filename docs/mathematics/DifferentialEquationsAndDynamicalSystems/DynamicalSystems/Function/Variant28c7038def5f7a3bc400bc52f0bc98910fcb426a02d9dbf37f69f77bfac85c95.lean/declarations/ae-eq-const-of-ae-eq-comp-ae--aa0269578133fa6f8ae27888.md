# ae_eq_const_of_ae_eq_comp_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "abced278e5d2bb2615b89b80714756d0e94c341c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecaa4c90-dc8f-ccc3-9600-1259337078cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:868ff07f-09e6-41f5-f38f-2dbdc895ce22",
  "kind": "theorem",
  "lexical_name": "ae_eq_const_of_ae_eq_comp_ae",
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
  "slug": "ae-eq-const-of-ae-eq-comp-ae--aa0269578133fa6f8ae27888",
  "source": {
    "blob": "abced278e5d2bb2615b89b80714756d0e94c341c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 77,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa0269578133fa6f8ae27888f2d6e010a5f8eefae62b42cbac33b4a219449694",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:868ff07f-09e6-41f5-f38f-2dbdc895ce22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eq_const_of_ae_eq_comp_ae {g : α → X} (h : QuasiErgodic f μ)
    (hgm : AEStronglyMeasurable g μ) (hg_eq : g ∘ f =ᵐ[μ] g) : ∃ c, g =ᵐ[μ] const α c := by
  borelize X
  rcases hgm.isSeparable_ae_range with ⟨t, ht, hgt⟩
  haveI := ht.secondCountableTopology
  exact h.ae_eq_const_of_ae_eq_comp_of_ae_range₀ hgt hgm.aemeasurable.nullMeasurable hg_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abced278e5d2bb2615b89b80714756d0e94c341c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
