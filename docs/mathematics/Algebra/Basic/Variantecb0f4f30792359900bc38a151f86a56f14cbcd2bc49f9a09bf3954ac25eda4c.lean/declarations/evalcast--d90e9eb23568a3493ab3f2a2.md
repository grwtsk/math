# evalCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc6ed6f0a74207c517024863d586066780d45107afa4855b77cf633cdcbfa26c",
  "kind": "def",
  "lexical_name": "evalCast",
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
  "slug": "evalcast--d90e9eb23568a3493ab3f2a2",
  "source": {
    "blob": "3f4e11fa8d49fd9de908d845bdffc55407fc5c49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 162,
    "path": "GRWTSK/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d90e9eb23568a3493ab3f2a243dd8cb7a5f2291299033daf2aaa579e372cdff4",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc6ed6f0a74207c517024863d586066780d45107afa4855b77cf633cdcbfa26c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalCast {α : Q(Type u)} (sα : Q(CommSemiring $α)) {e : Q($α)} :
    NormNum.Result e → Option (Result (ExSum sα) e)
  | .isNat _ (.lit (.natVal 0)) p => do
    assumeInstancesCommute
    pure ⟨_, .zero, q(cast_zero $p)⟩
  | .isNat _ lit p => do
    assumeInstancesCommute
    have ⟨e', s⟩ := ExProd.mkNat sα lit.natLit!
    have : $e' =Q ($lit).rawCast := ⟨⟩
    pure ⟨_, s.toSum, q(cast_pos $p)⟩
  /- In the following cases, Qq needs help identifying the `0` in the produced type with the `0`
  in the expected type, which arise from different instances. -/
  | .isNegNat rα lit p =>
    pure ⟨_, (ExProd.mkNegNat sα rα lit.natLit!).2.toSum, (q(cast_neg $p) : Expr)⟩
  | .isNNRat dsα q n d p =>
    pure ⟨_, (ExProd.mkNNRat sα dsα q n d q(IsNNRat.den_nz $p)).2.toSum, (q(cast_nnrat $p) : Expr)⟩
  | .isNegNNRat dα q n d p =>
    pure ⟨_, (ExProd.mkNegNNRat sα dα q n d q(IsRat.den_nz $p)).2.toSum, (q(cast_rat $p) : Expr)⟩
  | _ => none

section

variable {R : Type*} [CommSemiring R] {n : ℕ} {a₁ a₂ a₃ : ℕ} {b₁ b₂ b₃ : R}

/-! ### Scalar multiplication by `ℕ` -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f4e11fa8d49fd9de908d845bdffc55407fc5c49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
