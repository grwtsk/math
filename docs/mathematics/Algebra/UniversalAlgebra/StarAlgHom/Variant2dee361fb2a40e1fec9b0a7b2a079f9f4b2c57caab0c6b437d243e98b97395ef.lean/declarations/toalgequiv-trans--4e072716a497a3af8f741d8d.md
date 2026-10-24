# toAlgEquiv_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4203d61448d030b91a70fa32dd8657854da11f01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 847,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2dee361fb2a40e1fec9b0a7b2a079f9f4b2c57caab0c6b437d243e98b97395ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2133d966-004b-bbe9-6152-2b10a44e3509",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f6c3291-99ef-7e47-7e9b-27463ae05e9d",
  "kind": "theorem",
  "lexical_name": "toAlgEquiv_trans",
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
  "slug": "toalgequiv-trans--4e072716a497a3af8f741d8d",
  "source": {
    "blob": "4203d61448d030b91a70fa32dd8657854da11f01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 849,
    "line": 847,
    "path": "GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant2dee361fb2a40e1fec9b0a7b2a079f9f4b2c57caab0c6b437d243e98b97395ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e072716a497a3af8f741d8df10a975c4c927f00aa4c3a895931f86a19f93c60",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/StarAlgHom/Variant2dee361fb2a40e1fec9b0a7b2a079f9f4b2c57caab0c6b437d243e98b97395ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f6c3291-99ef-7e47-7e9b-27463ae05e9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 847–849.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toAlgEquiv_trans {C : Type*} [Semiring C] [Algebra R C] [Star C] (f : A ≃⋆ₐ[R] B)
    (g : B ≃⋆ₐ[R] C) : (f.trans g).toAlgEquiv = f.toAlgEquiv.trans g.toAlgEquiv := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/StarAlgHom/Variant2dee361fb2a40e1fec9b0a7b2a079f9f4b2c57caab0c6b437d243e98b97395ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant2dee361fb2a40e1fec9b0a7b2a079f9f4b2c57caab0c6b437d243e98b97395ef.lean#L847).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4203d61448d030b91a70fa32dd8657854da11f01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
