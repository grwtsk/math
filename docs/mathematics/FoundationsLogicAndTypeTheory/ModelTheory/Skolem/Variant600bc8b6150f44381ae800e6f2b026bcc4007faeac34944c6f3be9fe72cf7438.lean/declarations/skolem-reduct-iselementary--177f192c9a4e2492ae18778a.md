# skolem₁_reduct_isElementary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e2910278fb18bb039a8b870dba203cf079fa837",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a56b44cc-91df-dff6-b9ef-861d487df253",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:774f0b08-29e7-f67d-2c74-4f48fe34c5ef",
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
  "slug": "skolem-reduct-iselementary--177f192c9a4e2492ae18778a",
  "source": {
    "blob": "7e2910278fb18bb039a8b870dba203cf079fa837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:177f192c9a4e2492ae18778a070085797ad4ed179d6956228e0b1db20b4124b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:774f0b08-29e7-f67d-2c74-4f48fe34c5ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem skolem₁_reduct_isElementary (S : (L.sum L.skolem₁).Substructure M) :
    (LHom.sumInl.substructureReduct S).IsElementary := by
  apply (LHom.sumInl.substructureReduct S).isElementary_of_exists
  intro n φ x a h
  let φ' : (L.sum L.skolem₁).Functions n := LHom.sumInr.onFunction φ
  exact
    ⟨⟨funMap φ' ((↑) ∘ x), S.fun_mem (LHom.sumInr.onFunction φ) ((↑) ∘ x) (by
      exact fun i => (x i).2)⟩,
      by exact Classical.epsilon_spec (p := fun a => BoundedFormula.Realize φ default
          (Fin.snoc (Subtype.val ∘ x) a)) ⟨a, h⟩⟩
#align first_order.language.substructure.skolem₁_reduct_is_elementary FirstOrder.Language.Substructure.skolem₁_reduct_isElementary

/-- Any `L.sum L.skolem₁`-substructure is an elementary `L`-substructure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2910278fb18bb039a8b870dba203cf079fa837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
