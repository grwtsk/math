# Ideal.index_pow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20191fdf-81e5-0f24-ca52-82ba48ab8bba",
  "kind": "lemma",
  "lexical_name": "Ideal.index_pow_le",
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
  "slug": "ideal-index-pow-le--955bc9146fc16a1d59ee287a",
  "source": {
    "blob": "cc61ea58c96a4ddf4582acd323f363820e078fbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 113,
    "path": "GRWTSK/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:955bc9146fc16a1d59ee287adb59234d012ec574d5ae2e6bcdba94f5ae656f9c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20191fdf-81e5-0f24-ca52-82ba48ab8bba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.index_pow_le
    (s : Finset R) (hs : Ideal.span s = I) [Finite (R ⧸ I)] (n) :
    (I ^ n).toAddSubgroup.index ≤ I.toAddSubgroup.index ^ ∑ i ∈ Finset.range n, s.card ^ i := by
  have := Ideal.finite_quotient_pow ⟨s, hs⟩
  induction n with
  | zero =>
    simp
  | succ n IH =>
    refine (Submodule.index_smul_le (I ^ n) s hs).trans ?_
    refine (Nat.mul_le_mul (Nat.pow_le_pow_left IH _) le_rfl).trans ?_
    rw [← pow_mul, ← pow_succ, geom_sum_succ, mul_comm]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc61ea58c96a4ddf4582acd323f363820e078fbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
