# count_span_normalizedFactors_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:209b70e7-3f7d-9efc-3954-929a78c4be63",
  "kind": "theorem",
  "lexical_name": "count_span_normalizedFactors_eq",
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
  "slug": "count-span-normalizedfactors-eq--bed39e7bf7c07134fe4f4fe7",
  "source": {
    "blob": "94d5ba1be47343d644ff4e3215a178968a16025e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1141,
    "line": 1128,
    "path": "GRWTSK/Algebra/Lemmas/Variant2c1e27e9064121451c668f3185da834d18c50c24608e263355fdfc6e7acd025b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bed39e7bf7c07134fe4f4fe735f744a5374322d0a35ecc94c3a6361cd0d7abca",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variant2c1e27e9064121451c668f3185da834d18c50c24608e263355fdfc6e7acd025b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:209b70e7-3f7d-9efc-3954-929a78c4be63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1128–1141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_span_normalizedFactors_eq {r X : R} (hr : r ≠ 0) (hX : Prime X) :
    Multiset.count (span {X} : Ideal R) (normalizedFactors (span {r})) =
        Multiset.count (normalize X) (normalizedFactors r) := by
  have := emultiplicity_span_eq_emultiplicity (R := R) (a := X) (b := r)
  rw [emultiplicity_eq_count_normalizedFactors (Prime.irreducible hX) hr,
    emultiplicity_eq_count_normalizedFactors (Prime.irreducible ?_), normalize_apply,
    normUnit_eq_one, Units.val_one, one_eq_top, mul_top, Nat.cast_inj] at this
  · simp only [normalize_apply, this]
  · simp only [Submodule.zero_eq_bot, ne_eq, span_singleton_eq_bot, hr, not_false_eq_true]
  · simpa only [prime_span_singleton_iff]

@[deprecated (since := "2026-04-16")]
alias _root_.count_span_normalizedFactors_eq := count_span_normalizedFactors_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variant2c1e27e9064121451c668f3185da834d18c50c24608e263355fdfc6e7acd025b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variant2c1e27e9064121451c668f3185da834d18c50c24608e263355fdfc6e7acd025b.lean#L1128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94d5ba1be47343d644ff4e3215a178968a16025e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
