# commRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c509b5ce062157667d5d842cfe49e2c37bc9bfa0c908bff8d877b4a0b5d0559a",
  "kind": "instance",
  "lexical_name": "commRing",
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
  "slug": "commring--a628f2a1f1e8b45bb1233ef1",
  "source": {
    "blob": "2b9f95d8b66860209ee85e2f9cca44a5b1e3b413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a628f2a1f1e8b45bb1233ef17095bacdcaecd22c4f36a5f4931b613a0447084d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c509b5ce062157667d5d842cfe49e2c37bc9bfa0c908bff8d877b4a0b5d0559a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commRing (n : ℕ) : CommRing (ZMod n) where
  add := Nat.casesOn n (@Add.add Int _) fun n => @Add.add (Fin n.succ) _
  add_assoc := Nat.casesOn n (@add_assoc Int _) fun n => @add_assoc (Fin n.succ) _
  zero := Nat.casesOn n (0 : Int) fun n => (0 : Fin n.succ)
  zero_add := Nat.casesOn n (@zero_add Int _) fun n => @zero_add (Fin n.succ) _
  add_zero := Nat.casesOn n (@add_zero Int _) fun n => @add_zero (Fin n.succ) _
  neg := Nat.casesOn n (@Neg.neg Int _) fun n => @Neg.neg (Fin n.succ) _
  sub := Nat.casesOn n (@Sub.sub Int _) fun n => @Sub.sub (Fin n.succ) _
  sub_eq_add_neg := Nat.casesOn n (@sub_eq_add_neg Int _) fun n => @sub_eq_add_neg (Fin n.succ) _
  zsmul := Nat.casesOn n
    (inferInstanceAs (CommRing ℤ)).zsmul fun n => (inferInstanceAs (CommRing (Fin n.succ))).zsmul
  zsmul_zero' := Nat.casesOn n
    (inferInstanceAs (CommRing ℤ)).zsmul_zero'
    fun n => (inferInstanceAs (CommRing (Fin n.succ))).zsmul_zero'
  zsmul_succ' := Nat.casesOn n
    (inferInstanceAs (CommRing ℤ)).zsmul_succ'
    fun n => (inferInstanceAs (CommRing (Fin n.succ))).zsmul_succ'
  zsmul_neg' := Nat.casesOn n
    (inferInstanceAs (CommRing ℤ)).zsmul_neg'
    fun n => (inferInstanceAs (CommRing (Fin n.succ))).zsmul_neg'
  nsmul := Nat.casesOn n
    (inferInstanceAs (CommRing ℤ)).nsmul fun n => (inferInstanceAs (CommRing (Fin n.succ))).nsmul
  nsmul_zero := Nat.casesOn n
    (inferInstanceAs (CommRing ℤ)).nsmul_zero
    fun n => (inferInstanceAs (CommRing (Fin n.succ))).nsmul_zero
  nsmul_succ := Nat.casesOn n
    (inferInstanceAs (CommRing ℤ)).nsmul_succ
    fun n => (inferInstanceAs (CommRing (Fin n.succ))).nsmul_succ
  neg_add_cancel := Nat.casesOn n (@neg_add_cancel Int _) fun n => @neg_add_cancel (Fin n.succ) _
  add_comm := Nat.casesOn n (@add_comm Int _) fun n => @add_comm (Fin n.succ) _
  mul := Nat.casesOn n (@Mul.mul Int _) fun n => @Mul.mul (Fin n.succ) _
  mul_assoc := Nat.casesOn n (@mul_assoc Int _) fun n => @mul_assoc (Fin n.succ) _
  one := Nat.casesOn n (1 : Int) fun n => (1 : Fin n.succ)
  one_mul := Nat.casesOn n (@one_mul Int _) fun n => @one_mul (Fin n.succ) _
  mul_one := Nat.casesOn n (@mul_one Int _) fun n => @mul_one (Fin n.succ) _
  natCast := Nat.casesOn n ((↑) : ℕ → ℤ) fun n => ((↑) : ℕ → Fin n.succ)
  natCast_zero := Nat.casesOn n (@Nat.cast_zero Int _) fun n => @Nat.cast_zero (Fin n.succ) _
  natCast_succ := Nat.casesOn n (@Nat.cast_succ Int _) fun n => @Nat.cast_succ (Fin n.succ) _
  intCast := Nat.casesOn n ((↑) : ℤ → ℤ) fun n => ((↑) : ℤ → Fin n.succ)
  intCast_ofNat := Nat.casesOn n (@Int.cast_natCast Int _) fun n => @Int.cast_natCast (Fin n.succ) _
  intCast_negSucc :=
    Nat.casesOn n (@Int.cast_negSucc Int _) fun n => @Int.cast_negSucc (Fin n.succ) _
  left_distrib := Nat.casesOn n (@left_distrib Int _ _ _) fun n => @left_distrib (Fin n.succ) _ _ _
  right_distrib :=
    Nat.casesOn n (@right_distrib Int _ _ _) fun n => @right_distrib (Fin n.succ) _ _ _
  mul_comm := Nat.casesOn n (@mul_comm Int _) fun n => @mul_comm (Fin n.succ) _
  zero_mul := Nat.casesOn n (@zero_mul Int _) fun n => @zero_mul (Fin n.succ) _
  mul_zero := Nat.casesOn n (@mul_zero Int _) fun n => @mul_zero (Fin n.succ) _
  npow := Nat.casesOn n
    (inferInstanceAs (CommRing ℤ)).npow fun n => (inferInstanceAs (CommRing (Fin n.succ))).npow
  npow_zero := Nat.casesOn n
    (inferInstanceAs (CommRing ℤ)).npow_zero
    fun n => (inferInstanceAs (CommRing (Fin n.succ))).npow_zero
  npow_succ := Nat.casesOn n
    (inferInstanceAs (CommRing ℤ)).npow_succ
    fun n => (inferInstanceAs (CommRing (Fin n.succ))).npow_succ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant11a671e8f569fb39de9edeba9aab93a34a8fce6dc90cdf587dad5ffba4591d2e.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b9f95d8b66860209ee85e2f9cca44a5b1e3b413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
