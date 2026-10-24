# prime_composite_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c08909cd-e560-74cf-2f42-387f24f694ad",
  "kind": "lemma",
  "lexical_name": "prime_composite_induction",
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
  "slug": "prime-composite-induction--1ede773f36318e0aaa644c0c",
  "source": {
    "blob": "2801c6419578eed4c6880c1a0ca852e8101b81f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 102,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ede773f36318e0aaa644c0c3965fa44ad432249ce6351fba8509c75b35f8fb8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c08909cd-e560-74cf-2f42-387f24f694ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prime_composite_induction {motive : ℕ → Prop} (zero : motive 0) (one : motive 1)
    (prime : ∀ p : ℕ, p.Prime → motive p)
    (composite : ∀ a, 2 ≤ a → motive a → ∀ b, 2 ≤ b → motive b → motive (a * b))
    (n : ℕ) : motive n := by
  refine induction_on_primes zero one ?_ _
  rintro p (_ | _ | a) hp ha
  · simpa
  · simpa using prime _ hp
  · exact composite _ hp.two_le (prime _ hp) _ a.one_lt_succ_succ ha

/-! ## Lemmas on multiplicative functions -/

/-- For any multiplicative function `f` with `f 1 = 1` and any `n ≠ 0`,
we can evaluate `f n` by evaluating `f` at `p ^ k` over the factorization of `n` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2801c6419578eed4c6880c1a0ca852e8101b81f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
