# iteratedWreathToPermHomInj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f8e2905bb716db4982dca5d7a59f0f4ab8053fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e8ec2cf-26ca-572a-fa18-cf627880b234",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f3d8537-585f-9ee4-2a76-fcf4c04b6f03",
  "kind": "lemma",
  "lexical_name": "iteratedWreathToPermHomInj",
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
  "slug": "iteratedwreathtopermhominj--667dae90ee02a3851ce67f0d",
  "source": {
    "blob": "8f8e2905bb716db4982dca5d7a59f0f4ab8053fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 229,
    "path": "GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:667dae90ee02a3851ce67f0dc5e3c5aa11f49d378aa8f7029c53701c43f08c14",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f3d8537-585f-9ee4-2a76-fcf4c04b6f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iteratedWreathToPermHomInj (G : Type*) [Group G] :
    (n : ℕ) → Function.Injective (iteratedWreathToPermHom G n)
  | 0 => by
      simp only [IteratedWreathProduct_zero]
      apply Function.injective_of_subsingleton
  | n + 1 => by
      let _ := MulAction.compHom (Fin n → G) (iteratedWreathToPermHom G n)
      have : FaithfulSMul (IteratedWreathProduct G n) (Fin n → G) :=
        ⟨fun h ↦ iteratedWreathToPermHomInj G n (Equiv.ext h)⟩
      exact ((Fin.succFunEquiv G n).symm.permCongrHom.toEquiv.comp_injective _).mpr
        (RegularWreathProduct.toPermInj (IteratedWreathProduct G n) G (Fin n → G))

/-- The encoding of the Sylow `p`-subgroups of `Perm α` as an iterated wreath product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f8e2905bb716db4982dca5d7a59f0f4ab8053fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
