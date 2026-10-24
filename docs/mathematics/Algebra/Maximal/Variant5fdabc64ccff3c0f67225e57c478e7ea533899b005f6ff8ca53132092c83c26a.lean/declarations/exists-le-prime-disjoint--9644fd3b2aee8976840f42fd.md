# exists_le_prime_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e1aa76d-1eb8-825c-9c73-0e67af6479df",
  "kind": "theorem",
  "lexical_name": "exists_le_prime_disjoint",
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
  "slug": "exists-le-prime-disjoint--9644fd3b2aee8976840f42fd",
  "source": {
    "blob": "61f8b83b2aa0bd2bde236ef781cb3dcc3e6fd1ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 218,
    "path": "GRWTSK/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9644fd3b2aee8976840f42fd8e03ea8115402d208cae6a3d8e8d1e2fe87d1028",
  "verification": {
    "reference": "docs/verification/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e1aa76d-1eb8-825c-9c73-0e67af6479df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_le_prime_disjoint (S : Submonoid α) (disjoint : Disjoint (I : Set α) S) :
    ∃ p : Ideal α, p.IsPrime ∧ I ≤ p ∧ Disjoint (p : Set α) S := by
  have ⟨p, hIp, hp⟩ := zorn_le_nonempty₀ {p : Ideal α | Disjoint (p : Set α) S}
    (fun c hc hc' x hx ↦ ?_) I disjoint
  · exact ⟨p, isPrime_of_maximally_disjoint _ _ hp.1 (fun _ ↦ hp.not_prop_of_gt), hIp, hp.1⟩
  cases isEmpty_or_nonempty c
  · exact ⟨I, disjoint, fun J hJ ↦ isEmptyElim (⟨J, hJ⟩ : c)⟩
  refine ⟨sSup c, Set.disjoint_left.mpr fun x hx ↦ ?_, fun _ ↦ le_sSup⟩
  have ⟨p, hp⟩ := (Submodule.mem_iSup_of_directed _ hc'.directed).mp (sSup_eq_iSup' c ▸ hx)
  exact Set.disjoint_left.mp (hc p.2) hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61f8b83b2aa0bd2bde236ef781cb3dcc3e6fd1ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
