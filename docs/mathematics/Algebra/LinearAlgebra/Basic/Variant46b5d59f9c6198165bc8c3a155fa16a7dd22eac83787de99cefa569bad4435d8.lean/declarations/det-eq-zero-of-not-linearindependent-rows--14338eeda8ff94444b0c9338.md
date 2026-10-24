# det_eq_zero_of_not_linearIndependent_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a602e80-be6b-2c2e-e77a-e5ac4af002ba",
  "kind": "theorem",
  "lexical_name": "det_eq_zero_of_not_linearIndependent_rows",
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
  "slug": "det-eq-zero-of-not-linearindependent-rows--14338eeda8ff94444b0c9338",
  "source": {
    "blob": "9a48d379588e5a15f8ee4e4b298dce465309787d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 499,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant46b5d59f9c6198165bc8c3a155fa16a7dd22eac83787de99cefa569bad4435d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14338eeda8ff94444b0c9338083717b80a4a109c4b81291764aabdd26a8982d9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant46b5d59f9c6198165bc8c3a155fa16a7dd22eac83787de99cefa569bad4435d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a602e80-be6b-2c2e-e77a-e5ac4af002ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_eq_zero_of_not_linearIndependent_rows [IsDomain R] {A : Matrix m m R}
    (hA : ¬ LinearIndependent R (fun i ↦ A i)) :
    det A = 0 := by
  obtain ⟨c, hc0, i, hci⟩ := Fintype.not_linearIndependent_iff.1 hA
  have h0 := A.det_updateRow_sum i c
  rwa [det_eq_zero_of_row_eq_zero (i := i) (fun j ↦ by simp [hc0]), smul_eq_mul, eq_comm,
    mul_eq_zero_iff_left hci] at h0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant46b5d59f9c6198165bc8c3a155fa16a7dd22eac83787de99cefa569bad4435d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant46b5d59f9c6198165bc8c3a155fa16a7dd22eac83787de99cefa569bad4435d8.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a48d379588e5a15f8ee4e4b298dce465309787d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
