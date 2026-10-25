# preEvaluate_read_base

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:280c3d5a-2657-9402-3728-b966fdc7013e",
  "kind": "theorem",
  "lexical_name": "preEvaluate_read_base",
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
  "slug": "preevaluate-read-base--c978b5cacd3905a26f0167ae",
  "source": {
    "blob": "bc403ba71cda7183d54fd26b7e8deeacf7119877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1277,
    "line": 1257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c978b5cacd3905a26f0167ae706642548c7a02d20f8be02fdc15b6d5f7dd2350",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:280c3d5a-2657-9402-3728-b966fdc7013e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1257–1277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preEvaluate_read_base {Γ : List (Expr S)} {M : Expr S} {s : S}
    (t : TypingTree P Γ M (.sort s)) (e : Environment (hw := hw) Ω C hno Γ)
    (hM : Ω.profile (M.subst e.images).normalForm ∈ C) (hs : ({s} : Set S) ∈ C)
    (ha : ActiveLayer P C (Ω.profile (Expr.sort s |>.subst e.images).normalForm)) :
    (preEvaluate Ω C hno t e).read.val =
      ((RawValue.base Ω C hno ((preEvaluate Ω C hno t e).val ha).val) (e.actualExpression
        t.typing)).val := by
  cases t with
  | var ht hd hc => exact PreResult.baseRead_eq ht _ hM hs ha
  | sort ht hax hc =>
      change (Candidates.Top Ω (Expr.sort _ |>.subst e.images).normalForm) = _
      rw [show ((preEvaluate Ω C hno (.sort ht hax hc) e).val ha).val =
        (distinguished Ω C hno (e.activeType ht ha)).val from rfl,distinguished_base]
      rfl
  | product ht d b hr hc =>
      exact PreResult.product_read_base ht d.typing b.typing hr hc _ _ e hM hs ha
  | abstraction ht d b hp hc => exact PreResult.baseRead_eq ht _ hM hs ha
  | application ht f a hc => exact PreResult.baseRead_eq ht _ hM hs ha

omit hno [Fintype S] in
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean#L1257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc403ba71cda7183d54fd26b7e8deeacf7119877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
