# recOnPosPrimePosCoprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd25a7742890997276c518306929f7314acbd1b0646fc25498208a61af0e26d4",
  "kind": "def",
  "lexical_name": "recOnPosPrimePosCoprime",
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
  "slug": "reconposprimeposcoprime--0eb35ccb1cca5646e9cf6658",
  "source": {
    "blob": "f76683c5ca2e6fa7651186e158a5ce2c7080c64a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 845,
    "line": 829,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0eb35ccb1cca5646e9cf6658041e054fba3bc2975f9f456cf60426c679d5585d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd25a7742890997276c518306929f7314acbd1b0646fc25498208a61af0e26d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 829–845.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recOnPosPrimePosCoprime {P : ℕ → Sort*} (hp : ∀ p n : ℕ, Prime p → 0 < n → P (p ^ n))
    (h0 : P 0) (h1 : P 1) (h : ∀ a b, 1 < a → 1 < b → coprime a b → P a → P b → P (a * b)) :
    ∀ a, P a :=
  recOnPrimePow h0 h1 <| by
    intro a p n hp' hpa hn hPa
    by_cases ha1 : a = 1
    · rw [ha1, mul_one]
      exact hp p n hp' hn
    refine' h (p ^ n) a (hp'.one_lt.trans_le (le_self_pow hn.ne' _)) _ _ (hp _ _ hp' hn) hPa
    · contrapose! hpa
      simp [lt_one_iff.1 (lt_of_le_of_ne hpa ha1)]
    simpa [hn, Prime.coprime_iff_not_dvd hp']
#align nat.rec_on_pos_prime_pos_coprime Nat.recOnPosPrimePosCoprime

/-- Given `P 0`, `P (p ^ n)` for all prime powers, and a way to extend `P a` and `P b` to
`P (a * b)` when `a, b` are positive coprime, we can define `P` for all natural numbers. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean#L829).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f76683c5ca2e6fa7651186e158a5ce2c7080c64a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
