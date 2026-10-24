# factorization_le_iff_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec81346b-1aff-bb5c-0642-a21db4388d89",
  "kind": "theorem",
  "lexical_name": "factorization_le_iff_dvd",
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
  "slug": "factorization-le-iff-dvd--810e9b8ea331e59767fd0f8e",
  "source": {
    "blob": "083e01712b4ff4005135b80928b7b11e5245b218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 168,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:810e9b8ea331e59767fd0f8e05adc7975c5c20c62a2d8e452229013ef39fb761",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec81346b-1aff-bb5c-0642-a21db4388d89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_le_iff_dvd {d n : ℕ} (hd : d ≠ 0) (hn : n ≠ 0) :
    d.factorization ≤ n.factorization ↔ d ∣ n := by
  refine ⟨fun hdn ↦ ?_, fun ⟨c, h⟩ ↦ ?_⟩
  · rw [← prod_factorization_pow_eq_self hn, ← prod_factorization_pow_eq_self hd]
    exact prod_dvd_prod_of_subset_of_dvd (support_mono hdn) fun a _ ↦ pow_dvd_pow a (hdn a)
  · subst h
    rw [factorization_mul hd <| right_ne_zero_of_mul hn]
    apply self_le_add_right

/-- For any `p : ℕ` and any function `g : α → ℕ` that's non-zero on `S : Finset α`,
the power of `p` in `S.prod g` equals the sum over `x ∈ S` of the powers of `p` in `g x`.
Generalises `factorization_mul`, which is the special case where `#S = 2` and `g = id`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `083e01712b4ff4005135b80928b7b11e5245b218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
