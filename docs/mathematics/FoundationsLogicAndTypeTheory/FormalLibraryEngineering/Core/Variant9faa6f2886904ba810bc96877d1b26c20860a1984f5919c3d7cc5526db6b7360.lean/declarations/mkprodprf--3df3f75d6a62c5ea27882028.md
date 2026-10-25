# mkProdPrf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32aed9efff24755c742b5fef83196d5a2470e74784c1a34774c8aed22bb1e0de",
  "kind": "def",
  "lexical_name": "mkProdPrf",
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
  "slug": "mkprodprf--3df3f75d6a62c5ea27882028",
  "source": {
    "blob": "7a1a62f94cd062f0bdabca519ce410bd1fb23d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9faa6f2886904ba810bc96877d1b26c20860a1984f5919c3d7cc5526db6b7360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3df3f75d6a62c5ea27882028ce013da588af7cfa6762c7b2ebc3a818dab1fbe4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9faa6f2886904ba810bc96877d1b26c20860a1984f5919c3d7cc5526db6b7360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32aed9efff24755c742b5fef83196d5a2470e74784c1a34774c8aed22bb1e0de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkProdPrf {u : Level} (α : Q(Type u)) (sα : Q(Field $α)) (v : ℕ) (v' : Q($α))
    (t : BinaryTree ℕ) (e : Q($α)) : MetaM (CancelResult q(inferInstance) e v') := do
  let amwo : Q(AddMonoidWithOne $α) := q(inferInstance)
  trace[CancelDenoms] "mkProdPrf {e} {v}"
  match t, e with
  | .node _ lhs rhs, ~q($e1 + $e2) => do
    let ⟨v1, hv1⟩ ← mkProdPrf α sα v v' lhs e1
    let ⟨v2, hv2⟩ ← mkProdPrf α sα v v' rhs e2
    return ⟨q($v1 + $v2), q(CancelDenoms.add_subst $hv1 $hv2)⟩
  | .node _ lhs rhs, ~q($e1 - $e2) => do
    let ⟨v1, hv1⟩ ← mkProdPrf α sα v v' lhs e1
    let ⟨v2, hv2⟩ ← mkProdPrf α sα v v' rhs e2
    return ⟨q($v1 - $v2), q(CancelDenoms.sub_subst $hv1 $hv2)⟩
  | .node _ lhs@(.node ln _ _) rhs, ~q($e1 * $e2) => do
    trace[CancelDenoms] "recursing into mul"
    have ln' := (← mkOfNat α amwo <| mkRawNatLit ln).1
    have vln' := (← mkOfNat α amwo <| mkRawNatLit (v/ln)).1
    let ⟨v1, hv1⟩ ← mkProdPrf α sα ln ln' lhs e1
    let ⟨v2, hv2⟩ ← mkProdPrf α sα (v / ln) vln' rhs e2
    let npf ← synthesizeUsingNormNum q($ln' * $vln' = $v')
    return ⟨q($v1 * $v2), q(CancelDenoms.mul_subst $hv1 $hv2 $npf)⟩
  | .node _ lhs (.node rn _ _), ~q($e1 / $e2) => do
    -- Invariant: e2 is equal to the natural number rn
    have rn' := (← mkOfNat α amwo <| mkRawNatLit rn).1
    have vrn' := (← mkOfNat α amwo <| mkRawNatLit <| v / rn).1
    let ⟨v1, hv1⟩ ← mkProdPrf α sα (v / rn) vrn' lhs e1
    let npf ← synthesizeUsingNormNum q($rn' / $e2 = 1)
    let npf2 ← synthesizeUsingNormNum q($vrn' * $rn' = $v')
    return ⟨q($v1), q(CancelDenoms.div_subst $hv1 $npf $npf2)⟩
  | t, ~q(-$e) => do
    let ⟨v, hv⟩ ← mkProdPrf α sα v v' t e
    return ⟨q(-$v), q(CancelDenoms.neg_subst $hv)⟩
  | .node _ lhs@(.node k1 _ _) (.node k2 .nil .nil), ~q($e1 ^ $e2) => do
    have k1' := (← mkOfNat α amwo <| mkRawNatLit k1).1
    let ⟨v1, hv1⟩ ← mkProdPrf α sα k1 k1' lhs e1
    have l : ℕ := v / (k1 ^ k2)
    have l' := (← mkOfNat α amwo <| mkRawNatLit l).1
    let npf ← synthesizeUsingNormNum q($l' * $k1' ^ $e2 = $v')
    return ⟨q($l' * $v1 ^ $e2), q(CancelDenoms.pow_subst $hv1 $npf)⟩
  | .node _ .nil (.node rn _ _), ~q($ei ⁻¹) => do
    have rn' := (← mkOfNat α amwo <| mkRawNatLit rn).1
    have vrn' := (← mkOfNat α amwo <| mkRawNatLit <| v / rn).1
    have _ : $rn' =Q $ei := ⟨⟩
    let npf ← synthesizeUsingNormNum q($rn' ≠ 0)
    let npf2 ← synthesizeUsingNormNum q($vrn' * $rn' = $v')
    return ⟨q($vrn'), q(CancelDenoms.inv_subst $npf $npf2)⟩
  | _, _ => do
    return ⟨q($v' * $e), q(rfl)⟩

/-- Theorems to get expression into a form that `findCancelFactor` and `mkProdPrf`
can more easily handle. These are important for dividing by rationals and negative integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9faa6f2886904ba810bc96877d1b26c20860a1984f5919c3d7cc5526db6b7360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9faa6f2886904ba810bc96877d1b26c20860a1984f5919c3d7cc5526db6b7360.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a1a62f94cd062f0bdabca519ce410bd1fb23d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
