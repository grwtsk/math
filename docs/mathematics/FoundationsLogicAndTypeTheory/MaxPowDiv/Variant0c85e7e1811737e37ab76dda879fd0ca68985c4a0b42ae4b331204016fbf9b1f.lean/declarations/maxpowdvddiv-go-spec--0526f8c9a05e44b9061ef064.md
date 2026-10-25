# maxPowDvdDiv.go_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a0ab8a7-1013-01b4-bf41-6e9755986dee",
  "kind": "theorem",
  "lexical_name": "maxPowDvdDiv.go_spec",
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
  "slug": "maxpowdvddiv-go-spec--0526f8c9a05e44b9061ef064",
  "source": {
    "blob": "8d7ccf9d32983e2815e638acb9e760bc106e53bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0526f8c9a05e44b9061ef06456f15055437d6e21eb631fb9770a1b41fce33c14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a0ab8a7-1013-01b4-bf41-6e9755986dee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maxPowDvdDiv.go_spec {n p : ℕ} (hnp) :
    (go n p hnp).2 * p ^ (go n p hnp).1 = n ∧ ¬p ∣ (go n p hnp).2 := by
  fun_induction go with
  | case1 p hp hmod e q heq hqp ih =>
    rw [heq] at ih
    rcases ih with ⟨rfl, hdvd⟩
    have hp₀ : 0 < p := Nat.lt_trans Nat.one_pos hp.1
    simp_all [← Nat.dvd_iff_mod_eq_zero, Nat.pow_add', ← Nat.mul_assoc, Nat.div_mul_cancel,
      Nat.two_mul, Nat.mul_pow]
  | case2 p hp hmod e q heq hqp ih =>
    rw [heq] at ih
    rcases ih with ⟨rfl, hdvd⟩
    simp_all [Nat.dvd_iff_mod_eq_zero, Nat.two_mul, Nat.mul_pow, Nat.pow_add]
  | case3 =>
    simp_all [Nat.dvd_iff_mod_eq_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d7ccf9d32983e2815e638acb9e760bc106e53bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
