# cancelDenominatorsInType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4b430e960bc081dcfdea58717148980a2a1446f7d58076f6e9183c0cc0233a6",
  "kind": "def",
  "lexical_name": "cancelDenominatorsInType",
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
  "slug": "canceldenominatorsintype--150955f3ddc6bfdb935826df",
  "source": {
    "blob": "7a1a62f94cd062f0bdabca519ce410bd1fb23d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9faa6f2886904ba810bc96877d1b26c20860a1984f5919c3d7cc5526db6b7360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:150955f3ddc6bfdb935826df2afd8c38bc42cbc9713b204d4b78cd9bf79e8db3",
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

Occurrence: `declaration:d4b430e960bc081dcfdea58717148980a2a1446f7d58076f6e9183c0cc0233a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def cancelDenominatorsInType (h : Expr) : MetaM (Expr × Expr) := do
  let some (lhs, rhs, lem, ord) ← findCompLemma h | throwError m!"cannot kill factors"
  let (al, lhs_p) ← derive lhs
  let ⟨u, α, _⟩ ← inferTypeQ' lhs
  let amwo ← synthInstanceQ q(AddMonoidWithOne $α)
  let (ar, rhs_p) ← derive rhs
  let gcd := al.gcd ar
  have al := (← mkOfNat α amwo <| mkRawNatLit al).1
  have ar := (← mkOfNat α amwo <| mkRawNatLit ar).1
  have gcd := (← mkOfNat α amwo <| mkRawNatLit gcd).1
  let (al_cond, ar_cond, gcd_cond) ← if ord then do
      let _ ← synthInstanceQ q(Field $α)
      let _ ← synthInstanceQ q(LinearOrder $α)
      let _ ← synthInstanceQ q(IsStrictOrderedRing $α)
      let al_pos : Q(Prop) := q(0 < $al)
      let ar_pos : Q(Prop) := q(0 < $ar)
      let gcd_pos : Q(Prop) := q(0 < $gcd)
      pure (al_pos, ar_pos, gcd_pos)
    else do
      let _ ← synthInstanceQ q(Field $α)
      let al_ne : Q(Prop) := q($al ≠ 0)
      let ar_ne : Q(Prop) := q($ar ≠ 0)
      let gcd_ne : Q(Prop) := q($gcd ≠ 0)
      pure (al_ne, ar_ne, gcd_ne)
  let al_cond ← synthesizeUsingNormNum al_cond
  let ar_cond ← synthesizeUsingNormNum ar_cond
  let gcd_cond ← synthesizeUsingNormNum gcd_cond
  let pf ← mkAppM lem #[lhs_p, rhs_p, al_cond, ar_cond, gcd_cond]
  let pf_tp ← inferType pf
  return ((← findCompLemma pf_tp).elim default (Prod.fst ∘ Prod.snd), pf)

end CancelDenoms

/--
`cancel_denoms` attempts to remove numerals from the denominators of fractions.
It works on propositions that are field-valued inequalities.

```lean
variable [LinearOrderedField α] (a b c : α)

example (h : a / 5 + b / 4 < c) : 4*a + 5*b < 20*c := by
  cancel_denoms at h
  exact h

example (h : a > 0) : a / 5 > 0 := by
  cancel_denoms
  exact h
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9faa6f2886904ba810bc96877d1b26c20860a1984f5919c3d7cc5526db6b7360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9faa6f2886904ba810bc96877d1b26c20860a1984f5919c3d7cc5526db6b7360.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a1a62f94cd062f0bdabca519ce410bd1fb23d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
