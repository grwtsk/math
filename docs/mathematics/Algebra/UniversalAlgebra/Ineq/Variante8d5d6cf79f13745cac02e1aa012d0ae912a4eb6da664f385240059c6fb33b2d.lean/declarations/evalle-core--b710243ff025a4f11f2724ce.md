# evalLE.core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5a945f9ffdf7b9d0f87af2181e9b3726fa9e9e1c97566f2299a6279477b4641",
  "kind": "def",
  "lexical_name": "evalLE.core",
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
  "slug": "evalle-core--b710243ff025a4f11f2724ce",
  "source": {
    "blob": "64dfaf471d8c1178946c92984ad08874e6398a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 185,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ineq/Variante8d5d6cf79f13745cac02e1aa012d0ae912a4eb6da664f385240059c6fb33b2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b710243ff025a4f11f2724cef7c77fa11d12fb112c152db32aa63f2176dbee21",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ineq/Variante8d5d6cf79f13745cac02e1aa012d0ae912a4eb6da664f385240059c6fb33b2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5a945f9ffdf7b9d0f87af2181e9b3726fa9e9e1c97566f2299a6279477b4641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalLE.core {u : Level} {α : Q(Type u)} (lα : Q(LE $α)) {a b : Q($α)}
    (ra : NormNum.Result a) (rb : NormNum.Result b) : MetaM (NormNum.Result q($a ≤ $b)) := do
  let e := q($a ≤ $b)
  let rec intArm : MetaM (Result e) := do
    let ⟨_ir, _, _i⟩ ← inferOrderedRing α
    haveI' : $e =Q ($a ≤ $b) := ⟨⟩
    let ⟨za, na, pa⟩ ← ra.toInt q($_ir)
    let ⟨zb, nb, pb⟩ ← rb.toInt q($_ir)
    assumeInstancesCommute
    if decide (za ≤ zb) then
      let r : Q(decide ($na ≤ $nb) = true) := (q(Eq.refl true) : Expr)
      return .isTrue q(isInt_le_true $pa $pb $r)
    else if let .some _i ← trySynthInstanceQ q(Nontrivial $α) then
      let r : Q(decide ($nb < $na) = true) := (q(Eq.refl true) : Expr)
      return .isFalse q(isInt_le_false $pa $pb $r)
    else
      failure
  let rec ratArm : MetaM (Result e) := do
    let ⟨_if, _, _i⟩ ← inferLinearOrderedField α
    haveI' : $e =Q ($a ≤ $b) := ⟨⟩
    let ⟨qa, na, da, pa⟩ ← ra.toRat' q(Field.toDivisionRing)
    let ⟨qb, nb, db, pb⟩ ← rb.toRat' q(Field.toDivisionRing)
    assumeInstancesCommute
    if decide (qa ≤ qb) then
      let r : Q(decide ($na * $db ≤ $nb * $da) = true) := (q(Eq.refl true) : Expr)
      return (.isTrue q(isRat_le_true $pa $pb $r))
    else
      let _i : Q(Nontrivial $α) := q(IsStrictOrderedRing.toNontrivial)
      let r : Q(decide ($nb * $da < $na * $db) = true) := (q(Eq.refl true) : Expr)
      return .isFalse q(isRat_le_false $pa $pb $r)
  match ra, rb with
  | .isBool .., _ | _, .isBool .. => failure
  | .isNNRat _ .., _ | _, .isNNRat _ .. => ratArm
  | .isNegNNRat _ .., _ | _, .isNegNNRat _ .. => ratArm
  | .isNegNat _ .., _ | _, .isNegNat _ .. => intArm
  | .isNat ra na pa, .isNat rb nb pb =>
    let ⟨_, _, _i⟩ ← inferOrderedSemiring α
    haveI' : $ra =Q by clear! $ra $rb; infer_instance := ⟨⟩
    haveI' : $rb =Q by clear! $ra $rb; infer_instance := ⟨⟩
    haveI' : $e =Q ($a ≤ $b) := ⟨⟩
    assumeInstancesCommute
    if na.natLit! ≤ nb.natLit! then
      let r : Q(Nat.ble $na $nb = true) := (q(Eq.refl true) : Expr)
      return .isTrue q(isNat_le_true $pa $pb $r)
    else if let .some _i ← trySynthInstanceQ q(CharZero $α) then
      let r : Q(Nat.ble $na $nb = false) := (q(Eq.refl false) : Expr)
      return .isFalse q(isNat_le_false $pa $pb $r)
    else -- Nats can appear in an ordered ring without `CharZero`.
      intArm

/-- The `norm_num` extension which identifies expressions of the form `a ≤ b`,
such that `norm_num` successfully recognises both `a` and `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ineq/Variante8d5d6cf79f13745cac02e1aa012d0ae912a4eb6da664f385240059c6fb33b2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ineq/Variante8d5d6cf79f13745cac02e1aa012d0ae912a4eb6da664f385240059c6fb33b2d.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64dfaf471d8c1178946c92984ad08874e6398a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
