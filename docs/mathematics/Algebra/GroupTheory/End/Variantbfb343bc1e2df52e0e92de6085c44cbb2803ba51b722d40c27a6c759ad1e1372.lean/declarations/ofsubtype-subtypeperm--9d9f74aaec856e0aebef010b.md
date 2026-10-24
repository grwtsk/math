# ofSubtype_subtypePerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9f8d6d48e5e7a272bff5becf70fcb32136083e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 402,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9ebe71e-ccbb-6b0f-7abd-37300504b454",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3e4a1f0-7c89-df43-3019-a1ed4e784a82",
  "kind": "theorem",
  "lexical_name": "ofSubtype_subtypePerm",
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
  "slug": "ofsubtype-subtypeperm--9d9f74aaec856e0aebef010b",
  "source": {
    "blob": "b9f8d6d48e5e7a272bff5becf70fcb32136083e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 402,
    "path": "GRWTSK/Algebra/GroupTheory/End/Variantbfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d9f74aaec856e0aebef010bb95d5a2d00650d393298ec4e0d35d4fb05b59fc5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/End/Variantbfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3e4a1f0-7c89-df43-3019-a1ed4e784a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofSubtype_subtypePerm {f : Perm α} (h₁ : ∀ x, p (f x) ↔ p x) (h₂ : ∀ x, f x ≠ x → p x) :
    ofSubtype (subtypePerm f h₁) = f :=
  Equiv.ext fun x => by
    by_cases hx : p x
    · exact (subtypePerm f h₁).extendDomain_apply_subtype _ hx
    · rw [ofSubtype, MonoidHom.coe_mk, OneHom.coe_mk,
        Equiv.Perm.extendDomain_apply_not_subtype _ _ hx]
      exact not_not.mp fun h => hx (h₂ x (Ne.symm h))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/End/Variantbfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/End/Variantbfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9f8d6d48e5e7a272bff5becf70fcb32136083e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
