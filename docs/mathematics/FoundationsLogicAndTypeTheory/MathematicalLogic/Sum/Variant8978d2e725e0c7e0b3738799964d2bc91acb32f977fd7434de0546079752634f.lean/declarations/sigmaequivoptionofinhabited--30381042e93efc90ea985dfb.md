# sigmaEquivOptionOfInhabited

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a69083b9062c518287fd3008e9dab934a1414b9cfabc2bdeb30c653542fddf38",
  "kind": "def",
  "lexical_name": "sigmaEquivOptionOfInhabited",
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
  "slug": "sigmaequivoptionofinhabited--30381042e93efc90ea985dfb",
  "source": {
    "blob": "95adf2cbab18720cff1f3382be244f611e2961e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant8978d2e725e0c7e0b3738799964d2bc91acb32f977fd7434de0546079752634f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30381042e93efc90ea985dfb5f76c59cdc8e2d0e59a82e3209a79704d81cbcec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant8978d2e725e0c7e0b3738799964d2bc91acb32f977fd7434de0546079752634f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a69083b9062c518287fd3008e9dab934a1414b9cfabc2bdeb30c653542fddf38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaEquivOptionOfInhabited (α : Type u) [Inhabited α] [DecidableEq α] :
    Σ β : Type u, α ≃ Option β where
  fst := {a // a ≠ default}
  snd.toFun a := if h : a = default then none else some ⟨a, h⟩
  snd.invFun := Option.elim' default (↑)
  snd.left_inv a := by dsimp only; split_ifs <;> simp [*]
  snd.right_inv
    | none => by simp
    | some ⟨_, ha⟩ => dite_eq_right ha

end

section sumCompl

/-- For any predicate `p` on `α`,
the sum of the two subtypes `{a // p a}` and its complement `{a // ¬ p a}`
is naturally equivalent to `α`.

See `subtypeOrEquiv` for sum types over subtypes `{x // p x}` and `{x // q x}`
that are not necessarily `IsCompl p q`. See also `Equiv.Set.sumCompl` for a version on sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant8978d2e725e0c7e0b3738799964d2bc91acb32f977fd7434de0546079752634f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant8978d2e725e0c7e0b3738799964d2bc91acb32f977fd7434de0546079752634f.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95adf2cbab18720cff1f3382be244f611e2961e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
