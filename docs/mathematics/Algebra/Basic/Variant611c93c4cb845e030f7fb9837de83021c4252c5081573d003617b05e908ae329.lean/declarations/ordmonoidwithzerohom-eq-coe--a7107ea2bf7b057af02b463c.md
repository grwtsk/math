# ordMonoidWithZeroHom_eq_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f63802a-a9ae-9715-6bb8-777959225baf",
  "kind": "lemma",
  "lexical_name": "ordMonoidWithZeroHom_eq_coe",
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
  "slug": "ordmonoidwithzerohom-eq-coe--a7107ea2bf7b057af02b463c",
  "source": {
    "blob": "ec6bc9b0fb7ccfc7c048d6fa7f7260d8164a7559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 283,
    "path": "GRWTSK/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7107ea2bf7b057af02b463ca04b33963d17b2b67e5e9f4fe7201394d78f863c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f63802a-a9ae-9715-6bb8-777959225baf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ordMonoidWithZeroHom_eq_coe
    [Nontrivial R] {x : R} (hx : x ∈ nonZeroDivisors R) {n : ℕ} (hn : Ring.ord R x = n) :
    ordMonoidWithZeroHom R x = Multiplicative.ofAdd (n : ℤ) := by
  simp [ordMonoidWithZeroHom_eq_ord hx, hn]

variable {R} in
/--
If `x` is not a non zero divisor, `ordMonoidWithZeroHom` is equal to `0`.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec6bc9b0fb7ccfc7c048d6fa7f7260d8164a7559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
