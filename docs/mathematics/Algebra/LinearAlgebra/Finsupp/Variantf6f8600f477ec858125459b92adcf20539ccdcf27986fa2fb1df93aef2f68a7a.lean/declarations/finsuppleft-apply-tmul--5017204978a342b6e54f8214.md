# finsuppLeft_apply_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:064976e9-adef-0984-126a-d09431ea8403",
  "kind": "lemma",
  "lexical_name": "finsuppLeft_apply_tmul",
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
  "slug": "finsuppleft-apply-tmul--5017204978a342b6e54f8214",
  "source": {
    "blob": "e5277b8c2087769d46f17dcf5f5bc715b445c1fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5017204978a342b6e54f8214071c281eac2c2ec9d6b01849f2da0015a0f6059a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:064976e9-adef-0984-126a-d09431ea8403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finsuppLeft_apply_tmul (p : ι →₀ M) (n : N) :
    finsuppLeft R M N ι (p ⊗ₜ[R] n) = p.sum fun i m ↦ Finsupp.single i (m ⊗ₜ[R] n) := by
  induction p using Finsupp.induction_linear with
  | zero => simp
  | add f g hf hg => simp [add_tmul, map_add, hf, hg, Finsupp.sum_add_index]
  | single => simp [finsuppLeft]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5277b8c2087769d46f17dcf5f5bc715b445c1fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
