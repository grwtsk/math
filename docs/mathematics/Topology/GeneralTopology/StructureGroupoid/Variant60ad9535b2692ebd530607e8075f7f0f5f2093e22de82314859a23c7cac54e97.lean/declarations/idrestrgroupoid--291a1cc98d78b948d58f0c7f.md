# idRestrGroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b00ae5d43554b92e5ce5468c31ca8b36ae411cfcc50e2241149d9f6d1bf33d59",
  "kind": "def",
  "lexical_name": "idRestrGroupoid",
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
  "slug": "idrestrgroupoid--291a1cc98d78b948d58f0c7f",
  "source": {
    "blob": "aa88b98ac85accab9df7b4be012ac92bd37c4ca7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 405,
    "path": "GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:291a1cc98d78b948d58f0c7f6d00577136367aa3f289e5f165e639d084f8225d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b00ae5d43554b92e5ce5468c31ca8b36ae411cfcc50e2241149d9f6d1bf33d59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def idRestrGroupoid : StructureGroupoid H where
  members := { e | ∃ (s : Set H) (h : IsOpen s), e ≈ OpenPartialHomeomorph.ofSet s h }
  trans' := by
    rintro e e' ⟨s, hs, hse⟩ ⟨s', hs', hse'⟩
    refine ⟨s ∩ s', hs.inter hs', ?_⟩
    have := OpenPartialHomeomorph.EqOnSource.trans' hse hse'
    rwa [OpenPartialHomeomorph.ofSet_trans_ofSet] at this
  symm' := by
    rintro e ⟨s, hs, hse⟩
    refine ⟨s, hs, ?_⟩
    rw [← ofSet_symm]
    exact OpenPartialHomeomorph.EqOnSource.symm' hse
  id_mem' := ⟨univ, isOpen_univ, by simp only [mfld_simps, refl]⟩
  locality' := by
    intro e h
    refine ⟨e.source, e.open_source, by simp only [mfld_simps], ?_⟩
    intro x hx
    rcases h x hx with ⟨s, hs, hxs, s', hs', hes'⟩
    have hes : x ∈ (e.restr s).source := by
      rw [e.restr_source]
      refine ⟨hx, ?_⟩
      rw [hs.interior_eq]
      exact hxs
    simpa only [mfld_simps] using OpenPartialHomeomorph.EqOnSource.eqOn hes' hes
  mem_of_eqOnSource' := by
    rintro e e' ⟨s, hs, hse⟩ hee'
    exact ⟨s, hs, Setoid.trans hee' hse⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa88b98ac85accab9df7b4be012ac92bd37c4ca7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
