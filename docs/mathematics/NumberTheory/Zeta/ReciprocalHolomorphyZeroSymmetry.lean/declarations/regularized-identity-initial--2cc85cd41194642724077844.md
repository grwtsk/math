# regularized_identity_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dff398c2e39a25893aef3976b7569f96cf479fda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88cac29c-0bd5-d6ac-7ee0-17d53a996b8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0793f858-59be-a851-831e-adde45b19468",
  "kind": "theorem",
  "lexical_name": "regularized_identity_initial",
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
  "slug": "regularized-identity-initial--2cc85cd41194642724077844",
  "source": {
    "blob": "dff398c2e39a25893aef3976b7569f96cf479fda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 50,
    "path": "GRWTSK/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cc85cd411946427240778449d26f0a2ccaa4180197ff98717c9d1dc4b2159d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0793f858-59be-a851-831e-adde45b19468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularized_identity_initial {L : ℂ → ℂ}
    (hinit : InitialReciprocalIdentity L) {z : ℂ} (hz : 1 / 2 < z.re) :
    z * (z + 1 / 2) * regularizedZeta (z + 1 / 2) * L z = z - 1 / 2 := by
  have hs : 1 < (z + 1 / 2).re := by norm_num; linarith
  have hsz := ne_zero_of_one_lt_re hs
  have hs1 : z + 1 / 2 ≠ 1 := by
    intro h
    have := congrArg Complex.re h
    norm_num at this
    linarith
  have hz0 : z ≠ 0 := ne_zero_of_re_pos (by linarith)
  have hζ := riemannZeta_ne_zero_of_one_lt_re hs
  rw [hinit z hz, regularizedZeta_eq hsz hs1]
  have harith : z + 1 / 2 - 1 = z - 1 / 2 := by ring
  rw [harith]
  have hd : z * (z + 1 / 2) * riemannZeta (z + 1 / 2) ≠ 0 :=
    mul_ne_zero (mul_ne_zero hz0 hsz) hζ
  calc
    _ = (z - 1 / 2) * (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) /
        (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) := by ring
    _ = _ := mul_div_cancel_right₀ _ hd

/-- Identity continuation needs only holomorphy of L and the unconditional right-line formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dff398c2e39a25893aef3976b7569f96cf479fda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
