# complete_nontrivial_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad2b5669-2857-d293-fea7-171835161ce4",
  "kind": "theorem",
  "lexical_name": "complete_nontrivial_reconstruction",
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
  "slug": "complete-nontrivial-reconstruction--329bb70923d2baa23a2bd847",
  "source": {
    "blob": "ba997b48a4d59ce1d47128081d0f743ed73d3e34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 81,
    "path": "GRWTSK/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:329bb70923d2baa23a2bd84759b3dcfc2c7419bf55c324da55943f8c7e24828f",
  "verification": {
    "reference": "docs/verification/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad2b5669-2857-d293-fea7-171835161ce4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_nontrivial_reconstruction {G : Type*} [AddCommGroup G] [Fintype G]
    (f : G → ℂ) (x : G) :
    (∑ psi ∈ Finset.univ.erase (0 : AddChar G ℂ), coefficient f psi * psi x) = centered f x := by
  classical
  have h := complete_character_reconstruction (centered f) x
  rw [← Finset.sum_erase_add _ _ (Finset.mem_univ (0 : AddChar G ℂ))] at h
  simp only [centered_principal_zero, zero_mul, add_zero] at h
  rw [← h]
  apply Finset.sum_congr rfl
  intro psi hpsi
  rw [nontrivial_coordinate_unchanged f (Finset.mem_erase.mp hpsi).1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba997b48a4d59ce1d47128081d0f743ed73d3e34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
