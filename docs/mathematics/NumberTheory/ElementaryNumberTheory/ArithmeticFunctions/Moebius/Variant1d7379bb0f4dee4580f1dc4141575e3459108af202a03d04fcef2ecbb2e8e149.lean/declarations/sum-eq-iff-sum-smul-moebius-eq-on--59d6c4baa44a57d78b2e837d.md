# sum_eq_iff_sum_smul_moebius_eq_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05f76c89adb09318abbec6ada574be955267b03d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9303e43d-49e3-cea0-a56a-27b2a3526a7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dac7787-6ed4-91ee-2955-803707e0825e",
  "kind": "theorem",
  "lexical_name": "sum_eq_iff_sum_smul_moebius_eq_on",
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
  "slug": "sum-eq-iff-sum-smul-moebius-eq-on--59d6c4baa44a57d78b2e837d",
  "source": {
    "blob": "05f76c89adb09318abbec6ada574be955267b03d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 275,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59d6c4baa44a57d78b2e837df287c446f7a964576881afece7607231223e9c40",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dac7787-6ed4-91ee-2955-803707e0825e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_eq_iff_sum_smul_moebius_eq_on [AddCommGroup R] {f g : ℕ → R}
    (s : Set ℕ) (hs : ∀ m n, m ∣ n → n ∈ s → m ∈ s) :
    (∀ n > 0, n ∈ s → (∑ i ∈ n.divisors, f i) = g n) ↔
      ∀ n > 0, n ∈ s → (∑ x ∈ n.divisorsAntidiagonal, μ x.fst • g x.snd) = f n := by
  constructor
  · intro h
    let G := fun (n : ℕ) => (∑ i ∈ n.divisors, f i)
    intro n hn hnP
    suffices ∑ d ∈ n.divisors, μ (n / d) • G d = f n by
      rw [sum_divisorsAntidiagonal' (f := fun x y => μ x • g y), ← this, sum_congr rfl]
      intro d hd
      rw [← h d (pos_of_mem_divisors hd) <| hs d n (dvd_of_mem_divisors hd) hnP]
    rw [← sum_divisorsAntidiagonal' (f := fun x y => μ x • G y)]
    apply sum_eq_iff_sum_smul_moebius_eq.mp _ n hn
    intro _ _; rfl
  · intro h
    let F := fun (n : ℕ) => ∑ x ∈ n.divisorsAntidiagonal, μ x.fst • g x.snd
    intro n hn hnP
    suffices ∑ d ∈ n.divisors, F d = g n by
      rw [← this, sum_congr rfl]
      intro d hd
      rw [← h d (pos_of_mem_divisors hd) <| hs d n (dvd_of_mem_divisors hd) hnP]
    apply sum_eq_iff_sum_smul_moebius_eq.mpr _ n hn
    intro _ _; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05f76c89adb09318abbec6ada574be955267b03d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
