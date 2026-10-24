# val_smul_eq_evalₐ_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ac04212-3d05-fe7f-f785-e1e36babb440",
  "kind": "theorem",
  "lexical_name": "val_smul_eq_evalₐ_smul",
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
  "slug": "val-smul-eq-eval-smul--28859e6157115f44481eae15",
  "source": {
    "blob": "630a366189f782862a8a46c889828f52f4b221cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 230,
    "path": "GRWTSK/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28859e6157115f44481eae15c807db3fe95403543815c8f5c3cce1a643ac88cc",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ac04212-3d05-fe7f-f785-e1e36babb440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem val_smul_eq_evalₐ_smul (n : ℕ) (r : AdicCompletion I R)
    (x : M ⧸ (I ^ n • ⊤ : Submodule R M)) : r.val n • x = evalₐ I n r • x := by
  apply induction_on I R r (fun r ↦ ?_)
  exact Quotient.inductionOn' x (fun x ↦ rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `630a366189f782862a8a46c889828f52f4b221cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
