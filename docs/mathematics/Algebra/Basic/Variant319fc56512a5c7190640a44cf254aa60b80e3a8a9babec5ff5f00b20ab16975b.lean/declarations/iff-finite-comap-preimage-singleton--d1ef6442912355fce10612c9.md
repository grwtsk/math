# iff_finite_comap_preimage_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e2088df-590e-af4d-dac7-8ed9b29562a5",
  "kind": "lemma",
  "lexical_name": "iff_finite_comap_preimage_singleton",
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
  "slug": "iff-finite-comap-preimage-singleton--d1ef6442912355fce10612c9",
  "source": {
    "blob": "9ed1801f1080a895155a326863bbcc599715c411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 306,
    "path": "GRWTSK/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1ef6442912355fce10612c93b25bf2306a98638151fd800a2037b92570df1d7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e2088df-590e-af4d-dac7-8ed9b29562a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_finite_comap_preimage_singleton [FiniteType R S] :
    QuasiFinite R S ↔ ∀ x, (PrimeSpectrum.comap (algebraMap R S) ⁻¹' {x}).Finite := by
  refine ⟨fun H _ ↦ finite_comap_preimage_singleton _, fun H ↦ ⟨fun P _ ↦ ?_⟩⟩
  rw [Module.finite_iff_isArtinianRing, isArtinianRing_iff_isNoetherianRing_krullDimLE_zero]
  have : IsJacobsonRing (P.Fiber S) := isJacobsonRing_of_finiteType (A := P.ResidueField)
  have : Finite (PrimeSpectrum (P.Fiber S)) :=
    (PrimeSpectrum.preimageEquivFiber R S ⟨P, ‹_›⟩).finite_iff.mp (H ⟨P, ‹_›⟩)
  exact ⟨Algebra.FiniteType.isNoetherianRing P.ResidueField _,
    (PrimeSpectrum.discreteTopology_iff_finite_and_krullDimLE_zero.mp inferInstance).right⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ed1801f1080a895155a326863bbcc599715c411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
