# coeff_mul_add_eq_of_natDegree_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "623f20234c7a64952bb08eabf297e4ec75cf1b31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 446,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a710c4645713c0edfbc29215f0501ef6907b1fe00c01371b6ae770982f710e8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f95d334-9c56-9db0-0455-22bf6b85df0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd828c30-60ca-bdde-8da4-04ef69f66127",
  "kind": "theorem",
  "lexical_name": "coeff_mul_add_eq_of_natDegree_le",
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
  "slug": "coeff-mul-add-eq-of-natdegree-le--3fcc2db16b2578cb07fc1d07",
  "source": {
    "blob": "623f20234c7a64952bb08eabf297e4ec75cf1b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 446,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Operations/Varianta710c4645713c0edfbc29215f0501ef6907b1fe00c01371b6ae770982f710e8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fcc2db16b2578cb07fc1d079157c790320717f2faa4284f16530cd5e0b2bad3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Operations/Varianta710c4645713c0edfbc29215f0501ef6907b1fe00c01371b6ae770982f710e8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd828c30-60ca-bdde-8da4-04ef69f66127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_mul_add_eq_of_natDegree_le {df dg : ℕ} {f g : R[X]}
    (hdf : natDegree f ≤ df) (hdg : natDegree g ≤ dg) :
    (f * g).coeff (df + dg) = f.coeff df * g.coeff dg := by
  rw [coeff_mul, Finset.sum_eq_single_of_mem (df, dg)]
  · rw [mem_antidiagonal]
  rintro ⟨df', dg'⟩ hmem hne
  obtain h | hdf' := lt_or_ge df df'
  · rw [coeff_eq_zero_of_natDegree_lt (hdf.trans_lt h), zero_mul]
  obtain h | hdg' := lt_or_ge dg dg'
  · rw [coeff_eq_zero_of_natDegree_lt (hdg.trans_lt h), mul_zero]
  obtain ⟨rfl, rfl⟩ :=
    (add_eq_add_iff_eq_and_eq hdf' hdg').mp (mem_antidiagonal.1 hmem)
  exact (hne rfl).elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Operations/Varianta710c4645713c0edfbc29215f0501ef6907b1fe00c01371b6ae770982f710e8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Operations/Varianta710c4645713c0edfbc29215f0501ef6907b1fe00c01371b6ae770982f710e8b.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `623f20234c7a64952bb08eabf297e4ec75cf1b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
