# Iter.Equiv.forIn_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed8d2400-658e-2573-6aa2-81ff141ca50a",
  "kind": "theorem",
  "lexical_name": "Iter.Equiv.forIn_eq",
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
  "slug": "iter-equiv-forin-eq--27137ab41296a83b7712faf2",
  "source": {
    "blob": "6d29da3aaccb2bea6447baf9d04bc8d0912a4628",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantb13e6128c4defca707c0e6c6ed7ebcaf6c6d57a5a45141281494c946ecc936af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27137ab41296a83b7712faf2b8157f312297cb81aa9a3ab601473c24fac7b1c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantb13e6128c4defca707c0e6c6ed7ebcaf6c6d57a5a45141281494c946ecc936af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed8d2400-658e-2573-6aa2-81ff141ca50a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.Equiv.forIn_eq {α₁ α₂ β γ : Type w} {m : Type w → Type w'}
    [Iterator α₁ Id β] [Iterator α₂ Id β] [Finite α₁ Id] [Finite α₂ Id]
    [Monad m] [LawfulMonad m] [IteratorLoop α₁ Id m] [LawfulIteratorLoop α₁ Id m]
    [IteratorLoop α₂ Id m] [LawfulIteratorLoop α₂ Id m] {init : γ} {f : β → γ → m (ForInStep γ)}
    {ita : Iter (α := α₁) β} {itb : Iter (α := α₂) β} (h : Iter.Equiv ita itb) :
    ForIn.forIn (m := m) ita init f = ForIn.forIn (m := m) itb init f := by
  letI : MonadLift Id m := ⟨Std.Internal.idToMonad (α := _)⟩
  letI := Std.Internal.LawfulMonadLiftFunction.idToMonad (m := m)
  simp [Iter.forIn_eq_forIn_toIterM, h.toIterM.forIn_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantb13e6128c4defca707c0e6c6ed7ebcaf6c6d57a5a45141281494c946ecc936af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantb13e6128c4defca707c0e6c6ed7ebcaf6c6d57a5a45141281494c946ecc936af.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d29da3aaccb2bea6447baf9d04bc8d0912a4628` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
