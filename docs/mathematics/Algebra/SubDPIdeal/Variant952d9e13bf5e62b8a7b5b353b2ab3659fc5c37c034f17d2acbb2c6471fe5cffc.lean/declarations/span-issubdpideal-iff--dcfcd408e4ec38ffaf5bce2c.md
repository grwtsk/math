# span_isSubDPIdeal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04556f25-386d-6228-2942-1f717b6c8282",
  "kind": "theorem",
  "lexical_name": "span_isSubDPIdeal_iff",
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
  "slug": "span-issubdpideal-iff--dcfcd408e4ec38ffaf5bce2c",
  "source": {
    "blob": "d48853bce2d1873c7253498403051f12d1c18c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 160,
    "path": "GRWTSK/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcfcd408e4ec38ffaf5bce2c61f16d12cb1dfc7659fcde4de5fc62c8de47e7a7",
  "verification": {
    "reference": "docs/verification/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04556f25-386d-6228-2942-1f717b6c8282`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_isSubDPIdeal_iff {S : Set A} (hS : S ⊆ I) :
    IsSubDPIdeal hI (span S) ↔ ∀ {n : ℕ} (_ : n ≠ 0), ∀ s ∈ S, hI.dpow n s ∈ span S := by
  refine ⟨fun hhI n hn s hs ↦ hhI.dpow_mem n hn (subset_span hs), fun hhI ↦ ?_⟩
  · -- interesting direction
    have hSI := span_le.mpr hS
    apply IsSubDPIdeal.mk hSI
    intro m hm z hz
    induction hz using Submodule.span_induction generalizing m hm with
    | mem x h => exact hhI hm x h
    | zero =>
        rw [hI.dpow_eval_zero hm]
        exact (span S).zero_mem
    | add x y hxI hyI hx hy =>
        rw [hI.dpow_add' (hSI hxI) (hSI hyI)]
        apply Submodule.sum_mem (span S)
        intro m _
        by_cases hm0 : m = 0
        · exact hm0 ▸ mul_mem_left (span S) _ (hy _ hm)
        · exact mul_mem_right _ (span S) (hx _ hm0)
    | smul a x hxI hx =>
        rw [smul_eq_mul, hI.dpow_mul (hSI hxI)]
        exact mul_mem_left (span S) (a ^ m) (hx m hm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d48853bce2d1873c7253498403051f12d1c18c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
