# Monics.splits_finsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a7fffe7dd90004b7ec42783aef97285f931af13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/374571bf2bd092d49e0a7faab8eea3d916f2cc0473330033417dd2f2327ecbb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb9200b7-3fe8-d5c3-cce3-21f3012b9bd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a745428-7b64-29f5-13d5-d0d1310ba80b",
  "kind": "lemma",
  "lexical_name": "Monics.splits_finsetProd",
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
  "slug": "monics-splits-finsetprod--a55a637c67e713d66fddee8d",
  "source": {
    "blob": "9a7fffe7dd90004b7ec42783aef97285f931af13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 70,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variant374571bf2bd092d49e0a7faab8eea3d916f2cc0473330033417dd2f2327ecbb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a55a637c67e713d66fddee8db6050907316c85659b187caa07b286a727a7c488",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variant374571bf2bd092d49e0a7faab8eea3d916f2cc0473330033417dd2f2327ecbb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a745428-7b64-29f5-13d5-d0d1310ba80b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Monics.splits_finsetProd {s : Finset (Monics k)} {f : Monics k} (hf : f ∈ s) :
    (f.1.map (algebraMap k (SplittingField (∏ f ∈ s, f.1)))).Splits :=
  (splits_prod_iff fun j _ ↦ map_ne_zero j.2.ne_zero).mp
    (by simpa [Polynomial.map_prod] using SplittingField.splits (∏ f ∈ s, f.1)) f hf

open scoped Classical in
/-- Given a finite set of monic polynomials, construct an algebra homomorphism
to the splitting field of the product of the polynomials
sending indeterminates $X_{f_i}$ to the distinct roots of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variant374571bf2bd092d49e0a7faab8eea3d916f2cc0473330033417dd2f2327ecbb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variant374571bf2bd092d49e0a7faab8eea3d916f2cc0473330033417dd2f2327ecbb6.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a7fffe7dd90004b7ec42783aef97285f931af13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
