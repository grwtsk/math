# denote_eq_eval_of_get?_eq_some_of_Inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42efbd36-dd1f-db92-714b-83ae9ba50030",
  "kind": "theorem",
  "lexical_name": "denote_eq_eval_of_get?_eq_some_of_Inv",
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
  "slug": "denote-eq-eval-of-get-eq-some-of-inv--0a8e1b3fcd600ad296ef3297",
  "source": {
    "blob": "3ea5178550fe77198884c1a12c87350cc8fe6ac4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a8e1b3fcd600ad296ef3297f7117b84924b9c504fd7892ea8b19b51c775f7db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42efbd36-dd1f-db92-714b-83ae9ba50030`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_eq_eval_of_get?_eq_some_of_Inv (cache : Cache aig) (expr : BVExpr w)
    (refs : AIG.RefVec aig w) (hsome : cache.get? expr = some refs) (hinv : Inv assign aig cache) :
    ∀ (i : Nat) (h : i < w),
      ⟦aig,  refs.get i h, assign.toAIGAssignment⟧ = (expr.eval assign).getLsbD i := by
  intro i h
  rcases refs with ⟨refs, _⟩
  rw [get?_eq_some_iff] at hsome
  have hmem : ⟨w, expr⟩ ∈ cache.map := by
    rw [Std.DHashMap.mem_iff_contains, Std.DHashMap.contains_eq_isSome_get?]
    simp [hsome]
  have : refs = cache.map.get ⟨w, expr⟩ hmem := by
    rw [Std.DHashMap.get?_eq_some_get (h := hmem)] at hsome
    simp only [Option.some.injEq] at hsome
    rw [hsome]
  specialize hinv ⟨w, expr⟩ hmem i h
  rw [← hinv]
  subst this
  congr

end Cache

namespace bitblast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea5178550fe77198884c1a12c87350cc8fe6ac4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
