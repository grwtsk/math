# coe_int_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46ebe6d1-8b9c-8026-469b-1364d2e85582",
  "kind": "theorem",
  "lexical_name": "coe_int_div",
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
  "slug": "coe-int-div--048beb9536aabac5437b02fa",
  "source": {
    "blob": "b801c7bd42cb0b235e03f51057be1e2228cb16e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 251,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:048beb9536aabac5437b02fa7c07a5b9fbf4cde2bc06f44f0b2971f4b2b17d8f",
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

Occurrence: `result:46ebe6d1-8b9c-8026-469b-1364d2e85582`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_int_div (a b : ℤ) (h : b ∣ a) : ((a / b : ℤ) : ℚ) = a / b := by
  rcases h with ⟨c, rfl⟩
  rw [mul_comm b, Int.mul_ediv_assoc c (dvd_refl b), Int.cast_mul,
    coe_int_div_self, Int.cast_mul, mul_div_assoc]
#align rat.coe_int_div Rat.coe_int_div

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b801c7bd42cb0b235e03f51057be1e2228cb16e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
