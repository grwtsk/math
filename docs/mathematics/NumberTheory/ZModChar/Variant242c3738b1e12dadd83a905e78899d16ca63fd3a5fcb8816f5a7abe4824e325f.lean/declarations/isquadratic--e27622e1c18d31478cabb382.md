# isQuadratic_χ₈

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d40e042617cf74a13ac61dac5a2a05a4e709ce5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8e7d333-f1e4-9807-f756-4ae45dc81eb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfa1635f-b6be-dc8f-28ca-28ff218d9efa",
  "kind": "theorem",
  "lexical_name": "isQuadratic_χ₈",
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
  "slug": "isquadratic--e27622e1c18d31478cabb382",
  "source": {
    "blob": "2d40e042617cf74a13ac61dac5a2a05a4e709ce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 143,
    "path": "GRWTSK/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e27622e1c18d31478cabb382678521bb1929264263e9687cc898f46a985193e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfa1635f-b6be-dc8f-28ca-28ff218d9efa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isQuadratic_χ₈ : χ₈.IsQuadratic := by
  intro a
  --porting note: was `decide!`
  fin_cases a
  all_goals decide
#align zmod.is_quadratic_χ₈ ZMod.isQuadratic_χ₈

/-- The value of `χ₈ n`, for `n : ℕ`, depends only on `n % 8`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d40e042617cf74a13ac61dac5a2a05a4e709ce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
