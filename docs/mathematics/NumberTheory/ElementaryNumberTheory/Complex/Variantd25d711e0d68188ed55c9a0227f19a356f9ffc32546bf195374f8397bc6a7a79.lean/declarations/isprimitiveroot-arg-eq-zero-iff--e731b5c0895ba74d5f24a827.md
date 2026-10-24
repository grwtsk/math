# IsPrimitiveRoot.arg_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c45dfe9713a82e6500b0b4f2a9df82e924006f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3963d1af-0221-b512-b77b-ff59400e2d81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91361b24-051b-a18f-c80c-c6753a4904b3",
  "kind": "theorem",
  "lexical_name": "IsPrimitiveRoot.arg_eq_zero_iff",
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
  "slug": "isprimitiveroot-arg-eq-zero-iff--e731b5c0895ba74d5f24a827",
  "source": {
    "blob": "1c45dfe9713a82e6500b0b4f2a9df82e924006f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 118,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e731b5c0895ba74d5f24a8273d66734d1fb489e1fdd9dd88c01816e08808b4a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91361b24-051b-a18f-c80c-c6753a4904b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrimitiveRoot.arg_eq_zero_iff {n : ℕ} {ζ : ℂ} (hζ : IsPrimitiveRoot ζ n) (hn : n ≠ 0) :
    ζ.arg = 0 ↔ ζ = 1 :=
  ⟨fun h => hζ.arg_ext IsPrimitiveRoot.one hn one_ne_zero (h.trans Complex.arg_one.symm), fun h =>
    h.symm ▸ Complex.arg_one⟩
#align is_primitive_root.arg_eq_zero_iff IsPrimitiveRoot.arg_eq_zero_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c45dfe9713a82e6500b0b4f2a9df82e924006f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
