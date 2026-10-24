# padicValNat_add_le_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09e4fe43670b683a56a386ff184228b0894fe2d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 515,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61a830f2-9e2a-0725-f954-8d1a90275292",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:548dfe52-d138-1b4c-9f54-851ecd66cf26",
  "kind": "lemma",
  "lexical_name": "padicValNat_add_le_self",
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
  "slug": "padicvalnat-add-le-self--cf9941733517d56ce22eaf77",
  "source": {
    "blob": "09e4fe43670b683a56a386ff184228b0894fe2d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 515,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf9941733517d56ce22eaf77c0752a7a794337ab4cb829f63d17dbd99a971e01",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:548dfe52-d138-1b4c-9f54-851ecd66cf26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma padicValNat_add_le_self {a : ℕ} [hp : Fact p.Prime] (ha : p < a) :
    padicValNat p a + p ≤ a := by
  by_cases dvd : p ∣ a
  · rcases dvd with ⟨k, hk⟩
    have : padicValNat p k < k := by calc
      _ ≤ log p k := padicValNat_le_nat_log k
      _ < _ := log_lt_self p (by lia)
    rw [hk, padicValNat.mul (by lia) (by lia), padicValNat_self]
    calc
      _ ≤ p + k := by lia
      _ ≤ _ := Nat.add_le_mul hp.out.two_le (by lia)
  · rw [padicValNat.eq_zero_of_not_dvd dvd]
    lia

/-- The p-adic valuation of `n` is equal to the logarithm w.r.t. `p` iff
`n` is less than `p` raised to one plus the p-adic valuation of `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09e4fe43670b683a56a386ff184228b0894fe2d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
