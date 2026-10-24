# ne_and_ne_of_swap_mul_apply_ne_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29f56ab5db0ee4f25653b9e32a027c63beb9818e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d627a7f69d8335f103c52dec089400fc27ec22ca38b14206d9b85239bb057d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce0fa921-68f4-03bb-8199-4c35575a25f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5724a990-4c69-0890-bcf1-c65f48767aa4",
  "kind": "theorem",
  "lexical_name": "ne_and_ne_of_swap_mul_apply_ne_self",
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
  "slug": "ne-and-ne-of-swap-mul-apply-ne-self--7a0126051901d47db058fc03",
  "source": {
    "blob": "29f56ab5db0ee4f25653b9e32a027c63beb9818e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 241,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variant0d627a7f69d8335f103c52dec089400fc27ec22ca38b14206d9b85239bb057d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a0126051901d47db058fc031876a6f05629cdc3dfa73194d7d5bdecd625215e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variant0d627a7f69d8335f103c52dec089400fc27ec22ca38b14206d9b85239bb057d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5724a990-4c69-0890-bcf1-c65f48767aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ne_and_ne_of_swap_mul_apply_ne_self {f : Perm α} {x y : α} (hy : (swap x (f x) * f) y ≠ y) :
    f y ≠ y ∧ y ≠ x := by
  simp only [swap_apply_def, mul_apply, f.injective.eq_iff] at *
  by_cases h : f y = x
  · constructor <;> intro <;> simp_all only [if_true, eq_self_iff_true, not_true, Ne.def]
  · split_ifs at hy with h h <;> try { subst x } <;> try { simp [*] at * }
#align equiv.perm.ne_and_ne_of_swap_mul_apply_ne_self Equiv.Perm.ne_and_ne_of_swap_mul_apply_ne_self

end IsSwap

section support

section Set

variable (p q : Perm α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variant0d627a7f69d8335f103c52dec089400fc27ec22ca38b14206d9b85239bb057d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variant0d627a7f69d8335f103c52dec089400fc27ec22ca38b14206d9b85239bb057d6.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f56ab5db0ee4f25653b9e32a027c63beb9818e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
