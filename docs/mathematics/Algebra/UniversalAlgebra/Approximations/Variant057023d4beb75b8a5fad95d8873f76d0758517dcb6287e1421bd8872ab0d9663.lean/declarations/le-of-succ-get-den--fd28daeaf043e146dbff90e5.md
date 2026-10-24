# le_of_succ_get?_den

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa429d05bf1b905526c9bece910b9fc673a589dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 289,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d905b82f-a733-4b05-5dcd-5649e08988ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62666ae5-f01a-5ca9-c57c-075ad9c15743",
  "kind": "theorem",
  "lexical_name": "le_of_succ_get?_den",
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
  "slug": "le-of-succ-get-den--fd28daeaf043e146dbff90e5",
  "source": {
    "blob": "fa429d05bf1b905526c9bece910b9fc673a589dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 289,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd28daeaf043e146dbff90e594b20a41e2a38d0350f0b4e4ddd2cd66f712f2ae",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62666ae5-f01a-5ca9-c57c-075ad9c15743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_succ_get?_den {b : K}
    (nth_partDenom_eq : (of v).partDens.get? n = some b) :
    b * (of v).dens n ≤ (of v).dens (n + 1) := by
  rw [den_eq_conts_b, nth_cont_eq_succ_nth_contAux]
  exact le_of_succ_succ_get?_contsAux_b nth_partDenom_eq

/-- Shows that the sequence of denominators is monotone, that is `Bₙ ≤ Bₙ₊₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa429d05bf1b905526c9bece910b9fc673a589dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
