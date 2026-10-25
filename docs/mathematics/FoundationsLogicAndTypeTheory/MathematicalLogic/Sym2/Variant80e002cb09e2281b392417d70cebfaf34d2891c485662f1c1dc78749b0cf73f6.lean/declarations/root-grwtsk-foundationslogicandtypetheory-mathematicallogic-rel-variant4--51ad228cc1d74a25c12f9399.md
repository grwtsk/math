# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Rel.Variant4e15abc79e6d587813027a77157bc70b0c79769e91e41f63f2ada7040479725d.Equiv.sigmaFiberFromRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:813e3f497625a329ee17e636e041d5ae55055d457ee55f8761d7adef16013633",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Rel.Variant4e15abc79e6d587813027a77157bc70b0c79769e91e41f63f2ada7040479725d.Equiv.sigmaFiberFromRel",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-rel-variant4--51ad228cc1d74a25c12f9399",
  "source": {
    "blob": "8f197dcc788141cea6021e66b1c934785e90b0bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 685,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sym2/Variant80e002cb09e2281b392417d70cebfaf34d2891c485662f1c1dc78749b0cf73f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51ad228cc1d74a25c12f9399d9f6fbc64e92d2db79d9b3ba95d224b7a6756a2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sym2/Variant80e002cb09e2281b392417d70cebfaf34d2891c485662f1c1dc78749b0cf73f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:813e3f497625a329ee17e636e041d5ae55055d457ee55f8761d7adef16013633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 685–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Rel.Variant4e15abc79e6d587813027a77157bc70b0c79769e91e41f63f2ada7040479725d.Equiv.sigmaFiberFromRel (sym : Std.Symm r) {f : α → β} (hf : r ≤ Setoid.ker f) :
    fromRel sym ≃ Σ b : β, fromRel (α := { a // f a = b }) <| sym.comap (↑) where
  toFun z := z.val.fromRelNdrec z.prop
    (fun a₁ a₂ h ↦ ⟨f a₁, s(⟨a₁, rfl⟩, ⟨a₂, hf a₁ a₂ h |>.symm⟩), h⟩)
    fun a₁ a₂ h ↦ by
      rw! [hf a₁ a₂ h, eq_swap]
      rfl
  invFun z := ⟨z.snd.val.map (↑), mem_fromRel_comap sym .. |>.mp z.snd.prop⟩
  left_inv z := by
    rcases z with ⟨⟨a₁, a₂⟩, h⟩
    rfl
  right_inv z := by
    rcases z with ⟨b, ⟨⟨a₁, rfl⟩, ⟨a₂, ha₂⟩⟩, h⟩
    rfl

/-- For a relation homomorphism `r →r r'` where `r` is symmetric, the `fromRel` set of `r` is
equivalent to summing that set restricted to equivalence classes of `r'` using a `Subtype`,
`Quot` version -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sym2/Variant80e002cb09e2281b392417d70cebfaf34d2891c485662f1c1dc78749b0cf73f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sym2/Variant80e002cb09e2281b392417d70cebfaf34d2891c485662f1c1dc78749b0cf73f6.lean#L685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f197dcc788141cea6021e66b1c934785e90b0bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
