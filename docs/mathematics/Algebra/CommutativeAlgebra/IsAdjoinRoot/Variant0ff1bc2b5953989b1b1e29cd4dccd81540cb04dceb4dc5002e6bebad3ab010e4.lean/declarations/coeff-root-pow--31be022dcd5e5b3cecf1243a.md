# coeff_root_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0dc249a-5c32-85c2-0b6b-d8dcccac78e3",
  "kind": "theorem",
  "lexical_name": "coeff_root_pow",
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
  "slug": "coeff-root-pow--31be022dcd5e5b3cecf1243a",
  "source": {
    "blob": "132ca4c2668a0947fba63b69460c42efe153803b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 556,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31be022dcd5e5b3cecf1243a580c1357c2991250bb20d169970f8e7159f67a33",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0dc249a-5c32-85c2-0b6b-d8dcccac78e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_root_pow (h : IsAdjoinRootMonic S f) {n} (hn : n < natDegree f) :
    h.coeff (h.root ^ n) = Pi.single n 1 := by
  ext i
  rw [coeff_apply]
  split_ifs with hi
  · calc
      h.basis.repr (h.root ^ n) ⟨i, _⟩ = h.basis.repr (h.basis ⟨n, hn⟩) ⟨i, hi⟩ := by
        rw [h.basis_apply, Fin.val_mk]
      _ = Pi.single (f := fun _ => R) ((⟨n, hn⟩ : Fin _) : ℕ) (1 : (fun _ => R) n)
        ↑(⟨i, _⟩ : Fin _) := by
        rw [h.basis.repr_self, ← Finsupp.single_eq_pi_single,
          Finsupp.single_apply_left Fin.val_injective]
      _ = Pi.single (f:= fun _ => R) n 1 i := by rw [Fin.val_mk, Fin.val_mk]
  · refine (Pi.single_eq_of_ne (f := fun _ => R) ?_ (1 : (fun _ => R) n)).symm
    rintro rfl
    simp [hi] at hn
#align is_adjoin_root_monic.coeff_root_pow IsAdjoinRootMonic.coeff_root_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `132ca4c2668a0947fba63b69460c42efe153803b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
