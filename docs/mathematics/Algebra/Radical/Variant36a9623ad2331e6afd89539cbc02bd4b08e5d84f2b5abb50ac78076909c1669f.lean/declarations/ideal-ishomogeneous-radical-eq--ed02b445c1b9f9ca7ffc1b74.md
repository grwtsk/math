# Ideal.IsHomogeneous.radical_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a823b7f2-a2ab-397c-1209-ea821cca5a30",
  "kind": "theorem",
  "lexical_name": "Ideal.IsHomogeneous.radical_eq",
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
  "slug": "ideal-ishomogeneous-radical-eq--ed02b445c1b9f9ca7ffc1b74",
  "source": {
    "blob": "d75b8869c469ef3246b15f82ae619532c430e312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 163,
    "path": "GRWTSK/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed02b445c1b9f9ca7ffc1b7485a039bf5d3c51ccefb14760ef2b8d8d5df34a5a",
  "verification": {
    "reference": "docs/verification/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a823b7f2-a2ab-397c-1209-ea821cca5a30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.IsHomogeneous.radical_eq {I : Ideal A} (hI : I.IsHomogeneous 𝒜) :
    I.radical = InfSet.sInf { J | Ideal.IsHomogeneous 𝒜 J ∧ I ≤ J ∧ J.IsPrime } := by
  rw [Ideal.radical_eq_sInf]
  apply le_antisymm
  · exact sInf_le_sInf fun J => And.right
  · refine sInf_le_sInf_of_forall_exists_le ?_
    rintro J ⟨HJ₁, HJ₂⟩
    refine ⟨(J.homogeneousCore 𝒜).toIdeal, ?_, J.toIdeal_homogeneousCore_le _⟩
    refine ⟨HomogeneousIdeal.isHomogeneous _, ?_, HJ₂.homogeneousCore⟩
    exact hI.toIdeal_homogeneousCore_eq_self.symm.trans_le (Ideal.homogeneousCore_mono _ HJ₁)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d75b8869c469ef3246b15f82ae619532c430e312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
