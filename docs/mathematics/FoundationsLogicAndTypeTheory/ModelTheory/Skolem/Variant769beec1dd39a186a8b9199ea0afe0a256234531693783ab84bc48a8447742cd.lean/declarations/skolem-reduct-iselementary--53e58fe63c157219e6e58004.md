# skolem₁_reduct_isElementary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ff7aa3c3c2b8b2bf872480de04605093834acf6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:521510e3-c2d1-d959-fd4b-1dcce092ceaa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:289390f7-a8e9-f294-f52c-64df75af4218",
  "kind": "theorem",
  "lexical_name": "skolem₁_reduct_isElementary",
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
  "slug": "skolem-reduct-iselementary--53e58fe63c157219e6e58004",
  "source": {
    "blob": "0ff7aa3c3c2b8b2bf872480de04605093834acf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53e58fe63c157219e6e58004c34620610019427290e52948e5eaef5895cfa2fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:289390f7-a8e9-f294-f52c-64df75af4218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem skolem₁_reduct_isElementary (S : (L.sum L.skolem₁).Substructure M) :
    (LHom.sumInl.substructureReduct S).IsElementary := by
  apply (LHom.sumInl.substructureReduct S).isElementary_of_exists
  intro n φ x a h
  let φ' : (L.sum L.skolem₁).Functions n := LHom.sumInr.onFunction φ
  use ⟨funMap φ' ((↑) ∘ x), ?_⟩
  · exact Classical.epsilon_spec (p := fun a => BoundedFormula.Realize φ default
          (Fin.snoc (Subtype.val ∘ x) a)) ⟨a, h⟩
  · exact S.fun_mem (LHom.sumInr.onFunction φ) ((↑) ∘ x) (by
      exact fun i => (x i).2)

/-- Any `L.sum L.skolem₁`-substructure is an elementary `L`-substructure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ff7aa3c3c2b8b2bf872480de04605093834acf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
