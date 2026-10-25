# preEvaluate_retarget_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da5b3f78-b325-fae5-8351-6669a7086bf8",
  "kind": "theorem",
  "lexical_name": "preEvaluate_retarget_val",
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
  "slug": "preevaluate-retarget-val--505c2d7c452c69884fa74e2f",
  "source": {
    "blob": "30ab4fede61eaf4d948c331bc018521c2f9e9acd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 229,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:505c2d7c452c69884fa74e2f9003660a52b19d0d492955222e56ab89516d3c26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da5b3f78-b325-fae5-8351-6669a7086bf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preEvaluate_retarget_val {Γ : List (Expr S)} {M T U : Expr S} (t : TypingTree P Γ M T)
    (h : HasType P Γ M U) (hc : Converts U T) (e : Environment (hw := hw) Ω C hno Γ)
    (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm))
    (hb : ActiveLayer P C (Ω.profile (U.subst e.images).normalForm)) :
    ((preEvaluate Ω C hno t e).val ha).val =
      ((preEvaluate Ω C hno (t.retarget h hc) e).val hb).val := by
  have he := e.type_convert_eq t.typing h (.symm _ _ hc)
  cases t with
  | var ht hd ht' => exact PreResult.lookup_val_retarget ht h hd ht' (.trans _ _ _ hc ht') e ha hb
  | sort ht ht' htc =>
      exact PreResult.sort_val_retarget ht h ht' htc (.trans _ _ _ hc htc) e
        he ha hb
  | product ht d b hr htc =>
      exact PreResult.product_val_retarget ht h d.typing b.typing hr
        htc (.trans _ _ _ hc htc) _ _ e he ha hb
  | abstraction ht d b hp htc =>
      exact PreResult.abstraction_val_retarget ht h hp htc (.trans
        _ _ _ hc htc) _ e he ha hb
  | application ht f n htc =>
      exact PreResult.application_val_retarget ht h f.typing n.typing
        htc (.trans _ _ _ hc htc) _ _ e he ha hb
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30ab4fede61eaf4d948c331bc018521c2f9e9acd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
