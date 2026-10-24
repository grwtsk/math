# roots_list_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26358e0f31a6cc6d91351d74b6dea1561a123a0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 710,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0b19a8a-8533-7e09-6155-a6095bc98da6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b14ef6c-631c-b67c-f4dc-a000cfe16d7e",
  "kind": "theorem",
  "lexical_name": "roots_list_prod",
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
  "slug": "roots-list-prod--29188afa6b4be0ea67c4e451",
  "source": {
    "blob": "26358e0f31a6cc6d91351d74b6dea1561a123a0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 710,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variant5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29188afa6b4be0ea67c4e451d7a6cc76854f31e8a39b3ea0475d81dc965c9b2c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RingDivision/Variant5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b14ef6c-631c-b67c-f4dc-a000cfe16d7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 710–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roots_list_prod (L : List R[X]) :
    (0 : R[X]) ∉ L → L.prod.roots = (L : Multiset R[X]).bind roots :=
  List.recOn L (fun _ => roots_one) fun hd tl ih H => by
    rw [List.mem_cons, not_or] at H
    rw [List.prod_cons, roots_mul (mul_ne_zero (Ne.symm H.1) <| List.prod_ne_zero H.2), ←
      Multiset.cons_coe, Multiset.cons_bind, ih H.2]
#align polynomial.roots_list_prod Polynomial.roots_list_prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RingDivision/Variant5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variant5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean#L710).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26358e0f31a6cc6d91351d74b6dea1561a123a0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
