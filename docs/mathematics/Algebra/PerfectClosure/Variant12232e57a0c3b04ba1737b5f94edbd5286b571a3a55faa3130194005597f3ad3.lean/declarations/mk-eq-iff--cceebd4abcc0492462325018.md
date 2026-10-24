# mk_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2280043f-f13c-4d36-2c6e-4035de0400bb",
  "kind": "theorem",
  "lexical_name": "mk_eq_iff",
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
  "slug": "mk-eq-iff--cceebd4abcc0492462325018",
  "source": {
    "blob": "9e2c3a45e4a6356d1feb76bc8bfb787e7690b655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 320,
    "path": "GRWTSK/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cceebd4abcc0492462325018e7bbf06bb256a087fd5accc915aea828165c6125",
  "verification": {
    "reference": "docs/verification/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2280043f-f13c-4d36-2c6e-4035de0400bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_eq_iff (x y : ℕ × K) :
    mk K p x = mk K p y ↔ ∃ z, (frobenius K p)^[y.1 + z] x.2 = (frobenius K p)^[x.1 + z] y.2 := by
  constructor
  · intro H
    replace H := Quot.eqvGen_exact H
    induction H with
    | rel x y H => obtain ⟨n, x⟩ := H; exact ⟨0, rfl⟩
    | refl H => exact ⟨0, rfl⟩
    | symm x y H ih => obtain ⟨w, ih⟩ := ih; exact ⟨w, ih.symm⟩
    | trans x y z H1 H2 ih1 ih2 =>
      obtain ⟨z1, ih1⟩ := ih1
      obtain ⟨z2, ih2⟩ := ih2
      exists z2 + (y.1 + z1)
      rw [← add_assoc, iterate_add_apply, ih1]
      rw [← iterate_add_apply, add_comm, iterate_add_apply, ih2]
      rw [← iterate_add_apply]
      simp only [add_comm, add_left_comm]
  intro H
  obtain ⟨m, x⟩ := x
  obtain ⟨n, y⟩ := y
  obtain ⟨z, H⟩ := H; dsimp only at H
  rw [R.sound K p (n + z) m x _ rfl, R.sound K p (m + z) n y _ rfl, H]
  rw [add_assoc, add_comm, add_comm z]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e2c3a45e4a6356d1feb76bc8bfb787e7690b655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
