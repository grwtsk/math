# analyzeAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:240443b0a7a9d1062008a47ae89548caf1c7063d2b3e279f6f3dcf709f3b17e5",
  "kind": "def",
  "lexical_name": "analyzeAtom",
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
  "slug": "analyzeatom--065894fd5d690aae815f242d",
  "source": {
    "blob": "74af59dfb59bc31e443ea60498d2ce7fe9c52c21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OmegaM/Variantb0970ff3adb9c0ad57a888134f1fa317580fc2b3412c27addcae3df2e70055b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:065894fd5d690aae815f242d02f3961e6518dd30a1a74b0b6001633242618f6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OmegaM/Variantb0970ff3adb9c0ad57a888134f1fa317580fc2b3412c27addcae3df2e70055b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:240443b0a7a9d1062008a47ae89548caf1c7063d2b3e279f6f3dcf709f3b17e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def analyzeAtom (e : Expr) : OmegaM (List Expr) := do
  match e.getAppFnArgs with
  | (``Nat.cast, #[.const ``Int [], _, e']) =>
    -- Casts of natural numbers are non-negative.
    let mut r := [Expr.app (.const ``Int.natCast_nonneg []) e']
    match (← cfg).splitNatSub, e'.getAppFnArgs with
      | true, (``HSub.hSub, #[_, _, _, _, a, b]) =>
        -- `((a - b : Nat) : Int)` gives a dichotomy
        r := r.insert (mkApp2 (.const ``Int.ofNat_sub_dichotomy []) a b)
      | _, (``Int.natAbs, #[x]) =>
        r := r.insert (mkApp (.const ``Int.le_natAbs []) x)
        r := r.insert (mkApp (.const ``Int.neg_le_natAbs []) x)
      | _, (``Fin.val, #[n, i]) =>
        r := r.insert (mkApp2 (.const ``Fin.isLt []) n i)
      | _, (``BitVec.toNat, #[n, x]) =>
        r := r.insert (mkApp2 (.const ``BitVec.isLt []) n x)
      | _, _ => pure ()
    return r
  | (``HDiv.hDiv, #[_, _, _, _, x, k]) => match natCast? k with
    | none
    | some 0 => pure ∅
    | some _ =>
      -- `k * x/k ≤ x < k * x/k + k`
      let ne_zero := mkApp3 (.const ``Ne [1]) (.const ``Int []) k (toExpr (0 : Int))
      let pos := mkApp4 (.const ``LT.lt [0]) (.const ``Int []) (.const ``Int.instLTInt [])
        (toExpr (0 : Int)) k
      pure [mkApp3 (.const ``Int.mul_ediv_self_le []) x k (← mkDecideProof ne_zero),
            mkApp3 (.const ``Int.lt_mul_ediv_self_add []) x k (← mkDecideProof pos)]
  | (``HMod.hMod, #[_, _, _, _, x, k]) =>
    match k.getAppFnArgs with
    | (``HPow.hPow, #[_, _, _, _, b, exp]) => match natCast? b with
      | none
      | some 0 => pure ∅
      | some _ =>
        let b_pos := mkApp4 (.const ``LT.lt [0]) (.const ``Int []) (.const ``Int.instLTInt [])
          (toExpr (0 : Int)) b
        let pow_pos := mkApp3 (.const ``Lean.Omega.Int.pos_pow_of_pos []) b exp (← mkDecideProof b_pos)
        pure [mkApp3 (.const ``Int.emod_nonneg []) x k
                (mkApp3 (.const ``Int.ne_of_gt []) k (toExpr (0 : Int)) pow_pos),
              mkApp3 (.const ``Int.emod_lt_of_pos []) x k pow_pos]
    | (``Nat.cast, #[.const ``Int [], _, k']) =>
      match k'.getAppFnArgs with
      | (``HPow.hPow, #[_, _, _, _, b, exp]) => match natCast? b with
        | none
        | some 0 => pure ∅
        | some _ =>
          let b_pos := mkApp4 (.const ``LT.lt [0]) (.const ``Nat []) (.const ``instLTNat [])
            (toExpr (0 : Nat)) b
          let pow_pos := mkApp3 (.const ``Nat.pow_pos []) b exp (← mkDecideProof b_pos)
          let cast_pos := mkApp2 (.const ``Int.ofNat_pos_of_pos []) k' pow_pos
          pure [mkApp3 (.const ``Int.emod_nonneg []) x k
                  (mkApp3 (.const ``Int.ne_of_gt []) k (toExpr (0 : Int)) cast_pos),
                mkApp3 (.const ``Int.emod_lt_of_pos []) x k cast_pos]
      | _ =>  match x.getAppFnArgs with
        | (``Nat.cast, #[.const ``Int [], _, x']) =>
          -- Since we push coercions inside `%`, we need to record here that
          -- `(x : Int) % (y : Int)` is non-negative.
          pure [mkApp2 (.const ``Int.emod_ofNat_nonneg []) x' k]
        | _ => pure ∅
    | _ => pure ∅
  | (``Min.min, #[_, _, x, y]) =>
    pure [mkApp2 (.const ``Int.min_le_left []) x y, mkApp2 (.const ``Int.min_le_right []) x y]
  | (``Max.max, #[_, _, x, y]) =>
    pure [mkApp2 (.const ``Int.le_max_left []) x y, mkApp2 (.const ``Int.le_max_right []) x y]
  | (``ite, #[α, i, dec, t, e]) =>
      if α == (.const ``Int []) then
        pure [mkApp5 (.const ``ite_disjunction [0]) α i dec t e]
      else
        pure []
  | _ => pure ∅

/--
Look up an expression in the atoms, recording it if it has not previously appeared.

Return its index, and, if it is new, a collection of interesting facts about the atom.
* for each new atom `a` of the form `((x : Nat) : Int)`, the fact that `0 ≤ a`
* for each new atom `a` of the form `x / k`, for `k` a positive numeral, the facts that
  `k * a ≤ x < k * a + k`
* for each new atom of the form `((a - b : Nat) : Int)`, the fact:
  `b ≤ a ∧ ((a - b : Nat) : Int) = a - b ∨ a < b ∧ ((a - b : Nat) : Int) = 0`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OmegaM/Variantb0970ff3adb9c0ad57a888134f1fa317580fc2b3412c27addcae3df2e70055b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OmegaM/Variantb0970ff3adb9c0ad57a888134f1fa317580fc2b3412c27addcae3df2e70055b3.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74af59dfb59bc31e443ea60498d2ce7fe9c52c21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
