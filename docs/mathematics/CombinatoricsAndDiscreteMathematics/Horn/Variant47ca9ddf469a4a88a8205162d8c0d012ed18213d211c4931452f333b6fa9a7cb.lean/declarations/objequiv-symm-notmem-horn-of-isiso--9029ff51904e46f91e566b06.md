# objEquiv_symm_notMem_horn_of_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23595f7c-fc60-0caa-7a87-b88066c76a9e",
  "kind": "lemma",
  "lexical_name": "objEquiv_symm_notMem_horn_of_isIso",
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
  "slug": "objequiv-symm-notmem-horn-of-isiso--9029ff51904e46f91e566b06",
  "source": {
    "blob": "05d769156b768ed948a890cea00003ef6e23dbb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 153,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variant47ca9ddf469a4a88a8205162d8c0d012ed18213d211c4931452f333b6fa9a7cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9029ff51904e46f91e566b0606018c1f739022a17da20b51a996ea7bcbf2cba7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Horn/Variant47ca9ddf469a4a88a8205162d8c0d012ed18213d211c4931452f333b6fa9a7cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23595f7c-fc60-0caa-7a87-b88066c76a9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma objEquiv_symm_notMem_horn_of_isIso {n : ℕ} (i : Fin (n + 1))
    {d : SimplexCategory} (f : d ⟶ ⦋n⦌) [IsIso f] :
    stdSimplex.objEquiv.{u}.symm f ∉ Λ[n, i].obj (op d) := by
  rw [mem_horn_iff, ne_eq, not_not]
  ext i
  simpa using Or.inr ⟨inv f i, by simp [stdSimplex.coe_asOrderHom_objEquiv_symm.{u}]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Horn/Variant47ca9ddf469a4a88a8205162d8c0d012ed18213d211c4931452f333b6fa9a7cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variant47ca9ddf469a4a88a8205162d8c0d012ed18213d211c4931452f333b6fa9a7cb.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05d769156b768ed948a890cea00003ef6e23dbb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
