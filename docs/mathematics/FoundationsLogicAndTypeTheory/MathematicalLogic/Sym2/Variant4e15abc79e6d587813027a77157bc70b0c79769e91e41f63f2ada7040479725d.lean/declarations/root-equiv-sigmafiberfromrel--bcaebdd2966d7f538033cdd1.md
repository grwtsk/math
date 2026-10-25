# _root_.Equiv.sigmaFiberFromRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38e5b92bc903db5e2b487a2ed3e1cb3e2b60bd45a77f631e1f8ac9e6e64ec28b",
  "kind": "def",
  "lexical_name": "_root_.Equiv.sigmaFiberFromRel",
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
  "slug": "root-equiv-sigmafiberfromrel--bcaebdd2966d7f538033cdd1",
  "source": {
    "blob": "bc45b0ddd54bb415b2b927ec44300938cdbab63b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 677,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sym2/Variant4e15abc79e6d587813027a77157bc70b0c79769e91e41f63f2ada7040479725d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcaebdd2966d7f538033cdd1b6d56d694965de3d4a7f10c41291c4070c30ca95",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sym2/Variant4e15abc79e6d587813027a77157bc70b0c79769e91e41f63f2ada7040479725d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38e5b92bc903db5e2b487a2ed3e1cb3e2b60bd45a77f631e1f8ac9e6e64ec28b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Equiv.sigmaFiberFromRel (sym : Std.Symm r) {f : α → β} (hf : r ≤ Setoid.ker f) :
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sym2/Variant4e15abc79e6d587813027a77157bc70b0c79769e91e41f63f2ada7040479725d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sym2/Variant4e15abc79e6d587813027a77157bc70b0c79769e91e41f63f2ada7040479725d.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc45b0ddd54bb415b2b927ec44300938cdbab63b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
