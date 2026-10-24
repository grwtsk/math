# isSimpleGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be6eb1e2-b157-1f38-7594-f5207fb16230",
  "kind": "theorem",
  "lexical_name": "isSimpleGroup",
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
  "slug": "issimplegroup--48495f6336cf9567debf7853",
  "source": {
    "blob": "d23508aac9cd4d523afb15b1e0063a2f535c1f42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/Algebra/GroupTheory/Iwasawa/Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48495f6336cf9567debf7853f44e7287197d3a56c835b9b74a64453812994050",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Iwasawa/Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be6eb1e2-b157-1f38-7594-f5207fb16230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSimpleGroup [Nontrivial M] (is_perfect : commutator M = ⊤)
    [IsQuasiPreprimitive M α] (IwaS : IwasawaStructure M α) (is_faithful : FaithfulSMul M α) :
    IsSimpleGroup M := by
  apply IsSimpleGroup.mk
  intro N nN
  cases or_iff_not_imp_left.mpr (IwaS.commutator_le N) with
  | inl h =>
    refine Or.inl (N.eq_bot_iff_forall.mpr fun n hn => ?_)
    apply is_faithful.eq_of_smul_eq_smul
    intro x
    rw [one_smul]
    exact Set.eq_univ_iff_forall.mp h x ⟨n, hn⟩
   | inr h => exact Or.inr (top_le_iff.mp (le_trans (ge_of_eq is_perfect) h))

end MulAction.IwasawaStructure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Iwasawa/Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Iwasawa/Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d23508aac9cd4d523afb15b1e0063a2f535c1f42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
