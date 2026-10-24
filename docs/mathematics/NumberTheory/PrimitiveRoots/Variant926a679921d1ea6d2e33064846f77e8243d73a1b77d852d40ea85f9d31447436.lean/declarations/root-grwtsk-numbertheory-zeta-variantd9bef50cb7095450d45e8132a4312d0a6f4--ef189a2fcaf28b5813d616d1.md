# _root_.GRWTSK.NumberTheory.Zeta.Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.IsPrimitiveRoot.lcm_totient_le_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f660950-2b38-49c0-8699-53e79d4a6a79",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.NumberTheory.Zeta.Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.IsPrimitiveRoot.lcm_totient_le_finrank",
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
  "slug": "root-grwtsk-numbertheory-zeta-variantd9bef50cb7095450d45e8132a4312d0a6f4--ef189a2fcaf28b5813d616d1",
  "source": {
    "blob": "fd476bc7d52c740056c02129b6f1bb179acf61a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 191,
    "path": "GRWTSK/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef189a2fcaf28b5813d616d1948973244022141f630f0a7d05edc8d3c61dbe86",
  "verification": {
    "reference": "docs/verification/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f660950-2b38-49c0-8699-53e79d4a6a79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.NumberTheory.Zeta.Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.IsPrimitiveRoot.lcm_totient_le_finrank [FiniteDimensional K L] {p q : ℕ} {x y : L}
    (hx : IsPrimitiveRoot x p) (hy : IsPrimitiveRoot y q)
    (hirr : Irreducible (cyclotomic (Nat.lcm p q) K)) :
    (Nat.lcm p q).totient ≤ Module.finrank K L := by
  rcases Nat.eq_zero_or_pos p with (rfl | hppos)
  · simp
  rcases Nat.eq_zero_or_pos q with (rfl | hqpos)
  · simp
  let z := x ^ (p / factorizationLCMLeft p q) * y ^ (q / factorizationLCMRight p q)
  let k := PNat.lcm ⟨p, hppos⟩ ⟨q, hqpos⟩
  have : IsPrimitiveRoot z k := hx.pow_mul_pow_lcm hy hppos.ne' hqpos.ne'
  haveI := IsPrimitiveRoot.adjoin_isCyclotomicExtension K this
  convert Submodule.finrank_le (Subalgebra.toSubmodule (adjoin K {z}))
  rw [show Nat.lcm p q = (k : ℕ) from rfl] at hirr
  simpa using (IsCyclotomicExtension.finrank (Algebra.adjoin K {z}) hirr).symm

end IsCyclotomicExtension

end NoOrder

section Norm

namespace IsPrimitiveRoot

section Field

variable {K} [Field K] [NumberField K]

variable (n) in
/-- If a `n`-th cyclotomic extension of `ℚ` contains a primitive `l`-th root of unity, then
`l ∣ 2 * n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd476bc7d52c740056c02129b6f1bb179acf61a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
