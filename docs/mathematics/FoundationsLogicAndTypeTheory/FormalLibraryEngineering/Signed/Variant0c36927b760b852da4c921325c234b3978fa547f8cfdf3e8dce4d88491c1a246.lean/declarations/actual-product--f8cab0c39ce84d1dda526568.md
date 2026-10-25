# actual_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f61f4868-c8ac-8982-e0ff-147ac88ed738",
  "kind": "theorem",
  "lexical_name": "actual_product",
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
  "slug": "actual-product--f8cab0c39ce84d1dda526568",
  "source": {
    "blob": "1b6033037edc19791e7690cd2604c9b5ab22a55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant0c36927b760b852da4c921325c234b3978fa547f8cfdf3e8dce4d88491c1a246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8cab0c39ce84d1dda526568e9aa3c3b34179295bb28e1c6e489f2578955912a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant0c36927b760b852da4c921325c234b3978fa547f8cfdf3e8dce4d88491c1a246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f61f4868-c8ac-8982-e0ff-147ac88ed738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_product {D E : Expr S} {s : S} (hn : Normal (.pi D E))
    (ht : Ω.HasType (.pi D E) (.sort s)) (hc : Ω.profile (.pi D E) ∈ C) :
    actual Ω hC hw hno (.pi D E) =
      ProductTest Ω D E (actual Ω hC hw hno D) (fun n => {actual Ω hC hw hno (E.instantiate
        n).normalForm}) := by
  have he := congrArg (fun v : Vector Ω hC => (v (.pi D E)).set) (operator Ω hC hw hno).map_lfp
  change (step Ω hC hw (fixed Ω hC hw hno) (.pi D E)).set = _ at he
  dsimp only [step,SignedCandidate.set_wrap,stepCandidate] at he
  rw [if_pos (show Normal (.pi D E) ∧ (∃ s, Ω.HasType (.pi D E) (.sort s)) ∧
    Ω.profile (.pi D E) ∈ C from ⟨hn,⟨s,ht⟩,hc⟩)] at he
  simpa only [actual,value,hc,ite_true,SignedCandidate.set_wrap,fixed] using he.symm
end

universe u
open Candidates
variable {S : Type u} {P : Specification S} (Ω : ContextTower P)
variable {C : Set (Set S)} (hC : IsComponent (PrimaryEdge P) C)
variable (hw : SystemWeaklyNormalizing P)
variable (hno : ∀ I ∈ C, ¬ SignedPath (PrimaryEdge P) I I true)

open Classical in
/-- A simultaneous substitution certified as typed in the context tower. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant0c36927b760b852da4c921325c234b3978fa547f8cfdf3e8dce4d88491c1a246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant0c36927b760b852da4c921325c234b3978fa547f8cfdf3e8dce4d88491c1a246.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b6033037edc19791e7690cd2604c9b5ab22a55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
