# xi_eq_completed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d332f5f-6e3c-6db1-a2d6-18d2fdab9d00",
  "kind": "theorem",
  "lexical_name": "xi_eq_completed",
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
  "slug": "xi-eq-completed--287fba7f5fa9c620600acf15",
  "source": {
    "blob": "a4f740dd681e865af1ce6146ed95d8880c130408",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 35,
    "path": "GRWTSK/Algebra/LinearAlgebra/CompletedQuotientSource/Variant17eedc9d89af4b335878dae3237a9d4671f783d0a7ec23a6cf29c424e32311c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:287fba7f5fa9c620600acf158d4853f4164131043c17f797668b79c194cf0764",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CompletedQuotientSource/Variant17eedc9d89af4b335878dae3237a9d4671f783d0a7ec23a6cf29c424e32311c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d332f5f-6e3c-6db1-a2d6-18d2fdab9d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_eq_completed (s : ℂ) (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    xi s=(1/2:ℂ)*s*(s-1)*completedRiemannZeta s := by
  rw [completedRiemannZeta_eq]
  unfold xi
  have hn : 1-s ≠ 0 := sub_ne_zero.mpr (Ne.symm hs1)
  field_simp [hs0, hn]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CompletedQuotientSource/Variant17eedc9d89af4b335878dae3237a9d4671f783d0a7ec23a6cf29c424e32311c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CompletedQuotientSource/Variant17eedc9d89af4b335878dae3237a9d4671f783d0a7ec23a6cf29c424e32311c1.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4f740dd681e865af1ce6146ed95d8880c130408` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
