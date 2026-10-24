# isRoot_of_isRoot_of_dvd_derivative_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e829e1e-37bc-feaa-cdcc-fc3960bb7416",
  "kind": "theorem",
  "lexical_name": "isRoot_of_isRoot_of_dvd_derivative_mul",
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
  "slug": "isroot-of-isroot-of-dvd-derivative-mul--a2a918a327dcb95c6c4e3760",
  "source": {
    "blob": "dbc692ff8d7ef4ee8629d8b434fc334e119b8211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 186,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variant51c3b4783ced08e231f1b208a7d081d96c542c9d4791c9251b490a5a747884fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2a918a327dcb95c6c4e376022c1b3a121a6ec5b2a9a13014e503ac7e5faa6db",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FieldDivision/Variant51c3b4783ced08e231f1b208a7d081d96c542c9d4791c9251b490a5a747884fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e829e1e-37bc-feaa-cdcc-fc3960bb7416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRoot_of_isRoot_of_dvd_derivative_mul [CharZero R] {f g : R[X]} (hf0 : f ≠ 0)
    (hfd : f ∣ f.derivative * g) {a : R} (haf : f.IsRoot a) : g.IsRoot a := by
  rcases hfd with ⟨r, hr⟩
  have hdf0 : derivative f ≠ 0 := by
    contrapose! haf
    rw [eq_C_of_derivative_eq_zero haf] at hf0 ⊢
    exact not_isRoot_C _ _ <| C_ne_zero.mp hf0
  by_contra hg
  have hdfg0 : f.derivative * g ≠ 0 := mul_ne_zero hdf0 (by rintro rfl; simp at hg)
  have hr' := congr_arg (rootMultiplicity a) hr
  rw [rootMultiplicity_mul hdfg0, derivative_rootMultiplicity_of_root haf,
    rootMultiplicity_eq_zero hg, add_zero, rootMultiplicity_mul (hr ▸ hdfg0), add_comm,
    Nat.sub_eq_iff_eq_add (Nat.succ_le_iff.2 ((rootMultiplicity_pos hf0).2 haf))] at hr'
  omega

section NormalizationMonoid

variable [NormalizationMonoid R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FieldDivision/Variant51c3b4783ced08e231f1b208a7d081d96c542c9d4791c9251b490a5a747884fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variant51c3b4783ced08e231f1b208a7d081d96c542c9d4791c9251b490a5a747884fa.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbc692ff8d7ef4ee8629d8b434fc334e119b8211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
