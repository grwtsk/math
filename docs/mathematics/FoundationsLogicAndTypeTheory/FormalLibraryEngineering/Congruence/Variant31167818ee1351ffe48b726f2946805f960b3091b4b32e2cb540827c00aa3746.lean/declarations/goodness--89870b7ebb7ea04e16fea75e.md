# goodness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d724ef320b635f3292cd33de114b3032e57976c147858108dbaf19b5cdbdf191",
  "kind": "def",
  "lexical_name": "goodness",
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
  "slug": "goodness--89870b7ebb7ea04e16fea75e",
  "source": {
    "blob": "bc403ba71cda7183d54fd26b7e8deeacf7119877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 620,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89870b7ebb7ea04e16fea75e2c8b478c972c2b3ac98f9072ebc946b33129beba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d724ef320b635f3292cd33de114b3032e57976c147858108dbaf19b5cdbdf191`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def goodness {Γ : List (Expr S)} {M T : Expr S}
    (t : TypingTree P Γ M T) (σ : Nat → Expr S) : Prop × Prop :=
  match t with
  | .var _ _ _ => (True,baseGood Ω C M T σ True)
  | .sort _ _ _ => (True,True)
  | @TypingTree.product _ _ _ D E _ _ c _ _ d e _ _ =>
    let g := (Ω.profile (D.subst σ) ∈ C → (goodness d σ).2) ∧
      ∀ n, Ω.HasType n (D.subst σ) → Ω.profile (E.subst (Expr.consSub n σ)) ∈ C →
        (goodness e (Expr.consSub n σ)).2
    ((({c} : Set S) ∈ C ∧ Ω.profile (Expr.pi D E |>.subst σ) ∈ C) → g,
      Ω.profile (Expr.pi D E |>.subst σ) ∈ C → g)
  | @TypingTree.abstraction _ _ _ D m E _ _ _ _ _ b _ _ =>
    let g := ∀ n, Ω.HasType n (D.subst σ) → ActiveLayer P C (Ω.profile (E.subst (Expr.consSub
      n σ))) →
      (goodness b (Expr.consSub n σ)).1
    (g,baseGood Ω C M T σ g)
  | @TypingTree.application _ _ _ g n D E _ _ f a _ =>
    let v := if ActiveLayer P C (Ω.profile (Expr.pi D E |>.subst σ)) then
      (goodness f σ).1 ∧ (ActiveLayer P C (Ω.profile (D.subst σ)) → (goodness a σ).1)
      else Neutral (.app g n)
    (v,baseGood Ω C M T σ v)

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc403ba71cda7183d54fd26b7e8deeacf7119877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
