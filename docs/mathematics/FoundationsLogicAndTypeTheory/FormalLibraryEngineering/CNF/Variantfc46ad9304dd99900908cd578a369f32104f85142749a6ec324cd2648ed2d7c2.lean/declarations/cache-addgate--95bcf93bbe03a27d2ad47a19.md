# Cache.addGate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3fba59db13aabc50998cfb39bc7adf42fe14ab4521d65e4d53d80f53acd7b73",
  "kind": "def",
  "lexical_name": "Cache.addGate",
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
  "slug": "cache-addgate--95bcf93bbe03a27d2ad47a19",
  "source": {
    "blob": "76c1c8241c3d94a1f8a2730d04846045dc7af272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 317,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantfc46ad9304dd99900908cd578a369f32104f85142749a6ec324cd2648ed2d7c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95bcf93bbe03a27d2ad47a1935bda19a250a2b49492edd77cd0bf04e3ca5e4dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantfc46ad9304dd99900908cd578a369f32104f85142749a6ec324cd2648ed2d7c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3fba59db13aabc50998cfb39bc7adf42fe14ab4521d65e4d53d80f53acd7b73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cache.addGate (cache : Cache aig cnf) {hlb} {hrb} (idx : Nat) (h : idx < aig.decls.size)
    (htip : aig.decls[idx]'h = .gate lhs rhs) (hl : cache.marks[lhs.gate]'hlb = true)
    (hr : cache.marks[rhs.gate]'hrb = true) :
    {
      out : Cache aig (cnf ++ Decl.gateToCNF idx lhs.gate rhs.gate lhs.invert rhs.invert)
        //
      Cache.IsExtensionBy cache out idx h
    } :=
  have := aig.hdag h htip
  have hmarkbound : idx < cache.marks.size := by have := cache.hmarks; omega
  let out :=
    { cache with
      marks := cache.marks.set idx true
      hmarks := by simp [cache.hmarks]
      inv := by
        intro assign heval idx hbound hmarked
        rw [Array.getElem_set] at hmarked
        split at hmarked
        next heq =>
          simp only [heq, CNF.eval_append, Decl.gateToCNF_eval, Bool.and_eq_true, beq_iff_eq]
            at htip heval
          have hleval := cache.inv assign heval.left lhs.gate (by omega) hl
          have hreval := cache.inv assign heval.left rhs.gate (by omega) hr
          simp only [denote_idx_gate htip, Bool.bne_false, projectRightAssign_property, heval]
          generalize lhs.invert = linv
          generalize rhs.invert = rinv
          cases linv <;> cases rinv <;> simp [hleval, hreval]
        next heq =>
          simp only [CNF.eval_append, Decl.gateToCNF_eval, Bool.and_eq_true, beq_iff_eq] at heval
          have := cache.inv assign heval.left idx hbound hmarked
          rw [this]
    }
  ⟨out, IsExtensionBy_set cache out idx hmarkbound (by simp [out])⟩

/--
The key invariant about the `State` itself (without cache): The CNF we produce is always satisfiable
at `cnfSatAssignment`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantfc46ad9304dd99900908cd578a369f32104f85142749a6ec324cd2648ed2d7c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantfc46ad9304dd99900908cd578a369f32104f85142749a6ec324cd2648ed2d7c2.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76c1c8241c3d94a1f8a2730d04846045dc7af272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
