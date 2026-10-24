# lucas_lehmer_necessity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93318704-4b45-263e-8b41-6daf3d99c85a",
  "kind": "theorem",
  "lexical_name": "lucas_lehmer_necessity",
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
  "slug": "lucas-lehmer-necessity--4e97f5070c5587388b69c3e2",
  "source": {
    "blob": "849399954f3d8406be775591d95ea7a7e5ef9c83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 603,
    "path": "GRWTSK/Algebra/LucasLehmer/Variant1b2fec371b0e9dd3a45a2fc101d1a9c758822307e55788209155cf9b2ca0e419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e97f5070c5587388b69c3e2b5a3dc5076c9ba75eb01e6797e7fecbfb10f8e9d",
  "verification": {
    "reference": "docs/verification/Algebra/LucasLehmer/Variant1b2fec371b0e9dd3a45a2fc101d1a9c758822307e55788209155cf9b2ca0e419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93318704-4b45-263e-8b41-6daf3d99c85a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lucas_lehmer_necessity (p : ℕ) (w : 3 ≤ p) (hp : (mersenne p).Prime) :
    LucasLehmerTest p := by
  have : Fact (mersenne p).Prime := ⟨‹_›⟩
  set p' := p - 2 with hp'
  clear_value p'
  obtain rfl : p = p' + 2 := by lia
  dsimp [LucasLehmerTest, lucasLehmerResidue]
  rw [sZMod_eq_s p', ← X.fst_intCast, X.closed_form, add_tsub_cancel_right]
  have := X.ω_pow_trace (q := mersenne (p' + 2)) (by simp)
    (legendreSym_mersenne_three w <| hp.of_mersenne.odd_of_ne_two (by lia))
    (legendreSym_mersenne_two w) (by simp [pow_add])
  rw [succ_mersenne, pow_add, show 2 ^ 2 = 4 by norm_num, mul_div_cancel_right₀ _ (by norm_num)]
    at this
  simp [this]

namespace LucasLehmer

/-!
### `norm_num` extension

Next we define a `norm_num` extension that calculates `LucasLehmerTest p` for `1 < p`.
It makes use of a version of `sMod` that is specifically written to be reducible by the
Lean 4 kernel, which has the capability of efficiently reducing natural number expressions.
With this reduction in hand, it's a simple matter of applying the lemma
`LucasLehmer.residue_eq_zero_iff_sMod_eq_zero`.

See `Archive/Examples/MersennePrimes.lean` for certifications of all Mersenne primes
up through `mersenne 4423`.
-/

namespace norm_num_ext
open Qq Lean Elab.Tactic Mathlib.Meta.NormNum

/-- Version of `sMod` that is `ℕ`-valued. One should have `q = 2 ^ p - 1`.
This can be reduced by the kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LucasLehmer/Variant1b2fec371b0e9dd3a45a2fc101d1a9c758822307e55788209155cf9b2ca0e419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LucasLehmer/Variant1b2fec371b0e9dd3a45a2fc101d1a9c758822307e55788209155cf9b2ca0e419.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849399954f3d8406be775591d95ea7a7e5ef9c83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
