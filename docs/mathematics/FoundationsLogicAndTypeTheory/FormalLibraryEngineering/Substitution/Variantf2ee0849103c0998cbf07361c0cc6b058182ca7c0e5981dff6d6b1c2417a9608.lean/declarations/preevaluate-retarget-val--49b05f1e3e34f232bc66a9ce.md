# preEvaluate_retarget_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a875617-6024-ba08-5ac3-e3a3799015ff",
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
  "slug": "preevaluate-retarget-val--49b05f1e3e34f232bc66a9ce",
  "source": {
    "blob": "38bfb1ca6249cfb327385cac6688e50254e395e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49b05f1e3e34f232bc66a9cea297e7f74e31fa61ee8730ef91debce35a61161b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a875617-6024-ba08-5ac3-e3a3799015ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–249.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38bfb1ca6249cfb327385cac6688e50254e395e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
