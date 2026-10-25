# R_weakening

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99c9118a-c649-6c30-781a-c5c93e152afd",
  "kind": "theorem",
  "lexical_name": "R_weakening",
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
  "slug": "r-weakening--fea3c14c4fed817e0b3a7b12",
  "source": {
    "blob": "03a59ae80cfd3670ac254fd0e2cbd8a54e4e0c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 325,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fea3c14c4fed817e0b3a7b125a7e3eaf5d85cb1d5490b47e5c95c20f08992de8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99c9118a-c649-6c30-781a-c5c93e152afd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem R_weakening {Γ : List (Expr S)} {D A n : Expr S} {s : S}
    {e : Environment Ω Γ} {f : Environment Ω (D :: Γ)}
    (hD : HasType P Γ D (.sort s)) (hA : Expected P Γ A) (he : e.Ext f n) :
    R Ω C (A.rename Nat.succ) f = R Ω C A e := by
  rcases hA with ⟨a,rfl⟩ | ⟨a,hA⟩
  · exact (R_sort Ω C a f).trans (R_sort Ω C a e).symm
  · rw [R,R,Expr.normalForm_rename (hA.weaklyNormalizing hw)]
    symm
    apply eval_rename Ω C hw (hA.normalForm hw) (.cons hD.valid hD) Nat.succ
      (TypingTree.DeclRenaming.weaken D)
    · rw [he.1]; rfl
    · exact funext (fun i => he.2 i)

end

section
universe u
open Candidates
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) (C : Set (Set S))
variable (hw : SystemWeaklyNormalizing P)
include hw

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03a59ae80cfd3670ac254fd0e2cbd8a54e4e0c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
