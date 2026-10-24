# F_union_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46c3604e239e0501659c3475b26e7e02d76e862b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de434dbf-e723-b282-0db8-2da28db5c56c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:675edb2e-0c3a-4f5f-2a13-af05f62399ee",
  "kind": "theorem",
  "lexical_name": "F_union_I",
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
  "slug": "f-union-i--7f01d4acb60c4a5c8325000e",
  "source": {
    "blob": "46c3604e239e0501659c3475b26e7e02d76e862b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 83,
    "path": "GRWTSK/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f01d4acb60c4a5c8325000e04a1aff0ddc5e5b615098f1ef006213c92a1ffc3",
  "verification": {
    "reference": "docs/verification/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:675edb2e-0c3a-4f5f-2a13-af05f62399ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem F_union_I : (IF.F : Set P) ∪ IF.I = Set.univ :=
  IF.isCompl_I_F.symm.sup_eq_top
set_option linter.uppercaseLean3 false in
#align order.ideal.prime_pair.F_union_I Order.Ideal.PrimePair.F_union_I

end PrimePair

/-- An ideal `I` is prime if its complement is a filter.
-/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46c3604e239e0501659c3475b26e7e02d76e862b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
