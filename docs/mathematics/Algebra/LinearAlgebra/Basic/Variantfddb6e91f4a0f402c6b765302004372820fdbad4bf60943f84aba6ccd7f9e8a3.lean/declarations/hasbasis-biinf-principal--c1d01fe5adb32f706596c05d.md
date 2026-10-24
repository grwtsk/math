# hasBasis_biInf_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49e02329-6573-882b-2fd2-4bbd9bb6e522",
  "kind": "theorem",
  "lexical_name": "hasBasis_biInf_principal",
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
  "slug": "hasbasis-biinf-principal--c1d01fe5adb32f706596c05d",
  "source": {
    "blob": "53f78b71a14b2402ff5f2c9292ca1b2613830be4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 588,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1d01fe5adb32f706596c05dafa0f137649c194934c94d989e0d012ccd63f951",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49e02329-6573-882b-2fd2-4bbd9bb6e522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_biInf_principal {s : β → Set α} {S : Set β} (h : DirectedOn (s ⁻¹'o (· ≥ ·)) S)
    (ne : S.Nonempty) : (⨅ i ∈ S, 𝓟 (s i)).HasBasis (fun i => i ∈ S) s :=
  ⟨fun t => by
    refine mem_biInf_of_directed ?_ ne
    rw [directedOn_iff_directed, ← directed_comp] at h ⊢
    refine h.mono_comp _ ?_
    exact fun _ _ => principal_mono.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f78b71a14b2402ff5f2c9292ca1b2613830be4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
