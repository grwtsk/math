# prod_coe_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d40af3c1fe472e2d9ebd5b8328795a4b85a17210",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 953,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65e05915-e901-0947-7afe-4418cbda3b76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f087aae9-a665-025c-d506-00c62454c612",
  "kind": "theorem",
  "lexical_name": "prod_coe_symm",
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
  "slug": "prod-coe-symm--0662a9d13a4f66667cca9439",
  "source": {
    "blob": "d40af3c1fe472e2d9ebd5b8328795a4b85a17210",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 958,
    "line": 953,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0662a9d13a4f66667cca94399f9a094806854e5591f30c74d1b611f2efb00f7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f087aae9-a665-025c-d506-00c62454c612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 953–958.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_coe_symm (e : LocalEquiv α β) (e' : LocalEquiv γ δ) :
    ((e.prod e').symm : β × δ → α × γ) = fun p => (e.symm p.1, e'.symm p.2) :=
  rfl
#align local_equiv.prod_coe_symm LocalEquiv.prod_coe_symm

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean#L953).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d40af3c1fe472e2d9ebd5b8328795a4b85a17210` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
