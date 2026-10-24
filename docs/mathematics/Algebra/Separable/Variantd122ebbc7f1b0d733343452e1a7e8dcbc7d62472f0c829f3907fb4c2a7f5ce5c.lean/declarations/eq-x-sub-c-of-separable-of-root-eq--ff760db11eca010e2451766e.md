# eq_X_sub_C_of_separable_of_root_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:046f6a87-f750-828c-bb14-55134c1ebb71",
  "kind": "theorem",
  "lexical_name": "eq_X_sub_C_of_separable_of_root_eq",
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
  "slug": "eq-x-sub-c-of-separable-of-root-eq--ff760db11eca010e2451766e",
  "source": {
    "blob": "bea99b75a7a74dfd1384b24093c889e4b8ff43b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 485,
    "path": "GRWTSK/Algebra/Separable/Variantd122ebbc7f1b0d733343452e1a7e8dcbc7d62472f0c829f3907fb4c2a7f5ce5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff760db11eca010e2451766ecd520b245d984d3b0c06a69b2263292445145422",
  "verification": {
    "reference": "docs/verification/Algebra/Separable/Variantd122ebbc7f1b0d733343452e1a7e8dcbc7d62472f0c829f3907fb4c2a7f5ce5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:046f6a87-f750-828c-bb14-55134c1ebb71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_X_sub_C_of_separable_of_root_eq {x : F} {h : F[X]} (h_sep : h.Separable)
    (h_root : h.eval x = 0) (h_splits : Splits (h.map i))
    (h_roots : ∀ y ∈ (h.map i).roots, y = i x) : h = C (leadingCoeff h) * (X - C x) := by
  have h_ne_zero : h ≠ 0 := by
    rintro rfl
    exact not_separable_zero h_sep
  suffices (map i h).roots = {i x} from
    map_injective i i.injective (by simpa using h_splits.eq_X_sub_C_of_single_root this)
  apply Finset.mk.inj
  · change _ = {i x}
    rw [Finset.eq_singleton_iff_unique_mem]
    constructor
    · apply Finset.mem_mk.mpr
      · rw [mem_roots (show h.map i ≠ 0 from map_ne_zero h_ne_zero)]
        rw [IsRoot.def, ← eval₂_eq_eval_map, eval₂_hom, h_root]
        exact map_zero i
      · exact nodup_roots (Separable.map h_sep)
    · exact h_roots

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Separable/Variantd122ebbc7f1b0d733343452e1a7e8dcbc7d62472f0c829f3907fb4c2a7f5ce5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Separable/Variantd122ebbc7f1b0d733343452e1a7e8dcbc7d62472f0c829f3907fb4c2a7f5ce5c.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bea99b75a7a74dfd1384b24093c889e4b8ff43b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
