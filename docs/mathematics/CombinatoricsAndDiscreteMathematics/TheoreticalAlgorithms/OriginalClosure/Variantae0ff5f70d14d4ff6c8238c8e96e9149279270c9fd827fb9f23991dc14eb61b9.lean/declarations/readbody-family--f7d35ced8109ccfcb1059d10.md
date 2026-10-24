# readBody_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b996f1d-0244-6316-481d-9095002ddddc",
  "kind": "theorem",
  "lexical_name": "readBody_family",
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
  "slug": "readbody-family--f7d35ced8109ccfcb1059d10",
  "source": {
    "blob": "5e0d083ec1beb708a9e8efdc39363be16152f8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21330,
    "line": 21311,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7d35ced8109ccfcb1059d10cbee375b1b29495eb9fb2606f52e2a5b0f52d18d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b996f1d-0244-6316-481d-9095002ddddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21311–21330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readBody_family {A w : Expr S} (_ha : HasType P Γ A (.sort R.seed))
    (hw : HasType P Γ w (R.singleType A)) (mw : WellModed γ w .data) :
    L.Family (R.funType A) (R.readBody w) := by
  intro Δ δ e f hf mf
  have hh := h.rename e
  have hF : HasType P Δ f ((R.rename e.names).funType (A.rename e.names)) := by
    simpa only [funType_rename] using hf
  have hW : HasType P Δ (w.rename e.names) ((R.rename e.names).singleType (A.rename e.names)) := by
    simpa only [singleType_rename] using e.typing hw
  have hr := hh.tail.read_formula (hF.apply_arrow hW) (.app mf (e.moded mw))
  convert hr using 1
  simp only [readBody,DataTail.read_rename,DataTail.rename_comp,Expr.rename,Expr.rename_comp,
    Expr.liftRen,PureTypeSystem.Expr.liftRen,Function.comp_def,Expr.instantiate,
    DataTail.read_subst,Expr.subst,Expr.single,Expr.subst_rename]
  have he : (fun x => e.names x + 1) = Nat.succ ∘ e.names := rfl
  rw [he,← DataTail.rename_comp,DataTail.instantiate_raise]
  change (R.tail.rename e.names).read (.app .dd f (w.subst (Expr.var ∘ e.names))) = _
  rw [Expr.subst_var_rename]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean#L21311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0d083ec1beb708a9e8efdc39363be16152f8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
