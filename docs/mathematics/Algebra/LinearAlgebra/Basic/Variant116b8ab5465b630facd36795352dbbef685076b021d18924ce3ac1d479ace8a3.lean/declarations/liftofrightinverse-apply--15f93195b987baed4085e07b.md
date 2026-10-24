# liftOfRightInverse_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0050329530bc00d6ac2907eeaa18c942ec9d96f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/116b8ab5465b630facd36795352dbbef685076b021d18924ce3ac1d479ace8a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d43c9975-c99c-8513-03ab-b17805266801",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a51070b-b37c-8672-aa62-04a36b53f31d",
  "kind": "lemma",
  "lexical_name": "liftOfRightInverse_apply",
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
  "slug": "liftofrightinverse-apply--15f93195b987baed4085e07b",
  "source": {
    "blob": "d0050329530bc00d6ac2907eeaa18c942ec9d96f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 409,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant116b8ab5465b630facd36795352dbbef685076b021d18924ce3ac1d479ace8a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15f93195b987baed4085e07bdac2f076d6ab81ce4ccacc953265de7900f59bcd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant116b8ab5465b630facd36795352dbbef685076b021d18924ce3ac1d479ace8a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a51070b-b37c-8672-aa62-04a36b53f31d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma liftOfRightInverse_apply {f : F} {f_inv : M → A} (hf : Function.RightInverse f_inv f)
    {d : Derivation R A A} (hd : ∀ x, f x = 0 → f (d x) = 0) (x : A) :
    Derivation.liftOfRightInverse hf hd (f x) = f (d x) := by
  suffices f (d (f_inv (f x) - x)) = 0 by simpa [sub_eq_zero]
  apply hd
  simp [hf _]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant116b8ab5465b630facd36795352dbbef685076b021d18924ce3ac1d479ace8a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant116b8ab5465b630facd36795352dbbef685076b021d18924ce3ac1d479ace8a3.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0050329530bc00d6ac2907eeaa18c942ec9d96f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
