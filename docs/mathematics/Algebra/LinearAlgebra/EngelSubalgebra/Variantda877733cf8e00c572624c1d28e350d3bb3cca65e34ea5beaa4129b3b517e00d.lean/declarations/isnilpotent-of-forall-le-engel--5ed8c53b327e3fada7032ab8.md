# isNilpotent_of_forall_le_engel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fff6e77-2d8a-6fd4-a0fc-8bbd930f1730",
  "kind": "lemma",
  "lexical_name": "isNilpotent_of_forall_le_engel",
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
  "slug": "isnilpotent-of-forall-le-engel--5ed8c53b327e3fada7032ab8",
  "source": {
    "blob": "e9230d9d69d43e324d4333f53089ac3833ae76f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 152,
    "path": "GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ed8c53b327e3fada7032ab8615bb19b34191a5c29998f8b2945cd18199d2f73",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fff6e77-2d8a-6fd4-a0fc-8bbd930f1730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNilpotent_of_forall_le_engel [IsNoetherian R L]
    (H : LieSubalgebra R L) (h : ∀ x ∈ H, H ≤ engel R x) :
    LieRing.IsNilpotent H := by
  rw [LieAlgebra.isNilpotent_iff_forall (R := R)]
  intro x
  let K : ℕ →o Submodule R H :=
    ⟨fun n ↦ LinearMap.ker ((ad R H x) ^ n), fun m n hmn ↦ ?mono⟩
  case mono =>
    intro y hy
    rw [LinearMap.mem_ker] at hy ⊢
    exact Module.End.pow_map_zero_of_le hmn hy
  obtain ⟨n, hn⟩ := monotone_stabilizes_iff_noetherian.mpr inferInstance K
  use n
  ext y
  rw [coe_ad_pow]
  specialize h x x.2 y.2
  rw [mem_engel_iff] at h
  obtain ⟨m, hm⟩ := h
  obtain (hmn|hmn) : m ≤ n ∨ n ≤ m := le_total m n
  · exact Module.End.pow_map_zero_of_le hmn hm
  · have : ∀ k : ℕ, ((ad R L) x ^ k) y = 0 ↔ y ∈ K k := by simp [K, Subtype.ext_iff, coe_ad_pow]
    rwa [this, ← hn m hmn, ← this] at hm

end LieSubalgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9230d9d69d43e324d4333f53089ac3833ae76f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
