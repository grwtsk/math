# exists_eq_mul_div_num_and_eq_mul_div_den

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66d5b4fd-fac4-2d4f-4bc8-c3a79ba7ee6b",
  "kind": "theorem",
  "lexical_name": "exists_eq_mul_div_num_and_eq_mul_div_den",
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
  "slug": "exists-eq-mul-div-num-and-eq-mul-div-den--d351e2109da6caf87858bb74",
  "source": {
    "blob": "b801c7bd42cb0b235e03f51057be1e2228cb16e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 125,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d351e2109da6caf87858bb74109a46e13f0aeeadeeddc89413d999f7148aa907",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66d5b4fd-fac4-2d4f-4bc8-c3a79ba7ee6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_mul_div_num_and_eq_mul_div_den (n : ℤ) {d : ℤ} (d_ne_zero : d ≠ 0) :
    ∃ c : ℤ, n = c * ((n : ℚ) / d).num ∧ (d : ℤ) = c * ((n : ℚ) / d).den :=
  haveI : (n : ℚ) / d = Rat.divInt n d := by rw [← Rat.divInt_eq_div]
  Rat.num_den_mk d_ne_zero this
#align rat.exists_eq_mul_div_num_and_eq_mul_div_denom Rat.exists_eq_mul_div_num_and_eq_mul_div_den

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b801c7bd42cb0b235e03f51057be1e2228cb16e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
