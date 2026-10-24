# centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1674d60-e568-7834-a3b2-32af2d5d550e",
  "kind": "theorem",
  "lexical_name": "centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt",
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
  "slug": "centeredmobiuslogdivisorindexsum-eq-centeredvonmangoldt--02fa8ca9bbf03e93bf3caaac",
  "source": {
    "blob": "4c49cb92706e9dcc393cb39773a6a1d1d84bdeb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02fa8ca9bbf03e93bf3caaac82cf6e96d7d40d113c9dfc732427ca71f70d7405",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1674d60-e568-7834-a3b2-32af2d5d550e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt (n : ℕ) :
    centeredMobiusLogDivisorIndexSum n = centeredVonMangoldtAtom n := by
  unfold centeredMobiusLogDivisorIndexSum centeredMobiusLogDivisorIndexSet
  have hnone : (none : Option ℕ) ∉ n.divisors.image (fun d : ℕ => some d) := by simp
  rw [Finset.sum_insert hnone]
  rw [Finset.sum_image]
  · simp only [centeredMobiusLogDivisorTerm_none, centeredMobiusLogDivisorTerm_some]
    have h := congrArg (fun f : ArithmeticFunction ℝ => f n)
      ArithmeticFunction.moebius_mul_log_eq_vonMangoldt
    simp only [ArithmeticFunction.mul_apply, ArithmeticFunction.log_apply,
      ArithmeticFunction.intCoe_apply] at h
    rw [Nat.sum_divisorsAntidiagonal
      (fun d a => ((ArithmeticFunction.moebius d : ℤ) : ℝ) * Real.log a)] at h
    unfold mobiusReal centeredVonMangoldtAtom
    rw [← h]
    ring
  · intro a _ b _ hab
    exact Option.some.inj hab
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c49cb92706e9dcc393cb39773a6a1d1d84bdeb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
