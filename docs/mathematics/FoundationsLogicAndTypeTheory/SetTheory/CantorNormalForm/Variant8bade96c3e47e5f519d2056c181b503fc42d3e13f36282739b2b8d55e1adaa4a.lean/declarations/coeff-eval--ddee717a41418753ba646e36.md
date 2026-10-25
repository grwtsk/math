# coeff_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87dcc817-5333-3e22-063f-4881a4704db6",
  "kind": "theorem",
  "lexical_name": "coeff_eval",
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
  "slug": "coeff-eval--ddee717a41418753ba646e36",
  "source": {
    "blob": "f3b3fdf8377288ea519e023720806b3892daafab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 353,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant8bade96c3e47e5f519d2056c181b503fc42d3e13f36282739b2b8d55e1adaa4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddee717a41418753ba646e366ea6718be711fdcc1fd011161d4584a3b5a3497f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant8bade96c3e47e5f519d2056c181b503fc42d3e13f36282739b2b8d55e1adaa4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87dcc817-5333-3e22-063f-4881a4704db6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_eval {b : Ordinal} (hb : 1 < b) {f : Ordinal →₀ Ordinal} (hf : ∀ e, f e < b) :
    coeff b (eval b f) = f := by
  induction f using Finsupp.induction_on_max with
  | zero => simp
  | single_add e x f hf' hx IH =>
    have IH' (e') : f e' < b := by
      by_cases he' : e' ∈ f.support
      · apply (hf e').trans_eq'
        rw [add_apply, single_eq_of_ne, zero_add]
        exact (hf' _ he').ne
      · rw [notMem_support_iff.1 he']
        exact hb.pos
    rw [eval_single_add' _ hf', coeff_opow_mul_add hb hx, IH IH']
    · apply (hf e).trans_eq'
      rw [add_apply, single_eq_same, notMem_support_iff.1, add_zero]
      exact fun h ↦ (hf' _ h).false
    · exact eval_lt IH' hf'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant8bade96c3e47e5f519d2056c181b503fc42d3e13f36282739b2b8d55e1adaa4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant8bade96c3e47e5f519d2056c181b503fc42d3e13f36282739b2b8d55e1adaa4a.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3b3fdf8377288ea519e023720806b3892daafab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
