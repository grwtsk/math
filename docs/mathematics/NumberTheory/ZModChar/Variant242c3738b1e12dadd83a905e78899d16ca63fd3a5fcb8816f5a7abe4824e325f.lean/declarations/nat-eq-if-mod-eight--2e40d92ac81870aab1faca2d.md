# χ₈'_nat_eq_if_mod_eight

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
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c76f7cd-e3be-da5f-3b0e-72e30b564535",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fda32ddb-d45a-265c-bb25-8d5d9c9dcd1a",
  "kind": "theorem",
  "lexical_name": "χ₈'_nat_eq_if_mod_eight",
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
  "slug": "nat-eq-if-mod-eight--2e40d92ac81870aab1faca2d",
  "source": {
    "blob": "2d40e042617cf74a13ac61dac5a2a05a4e709ce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 204,
    "path": "GRWTSK/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e40d92ac81870aab1faca2d09bb63c93cb859bac83fe563702e7838d28ec33d",
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

Occurrence: `result:fda32ddb-d45a-265c-bb25-8d5d9c9dcd1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem χ₈'_nat_eq_if_mod_eight (n : ℕ) :
    χ₈' n = if n % 2 = 0 then 0 else if n % 8 = 1 ∨ n % 8 = 3 then 1 else -1 := by
  exact_mod_cast χ₈'_int_eq_if_mod_eight n
#align zmod.χ₈'_nat_eq_if_mod_eight ZMod.χ₈'_nat_eq_if_mod_eight

/-- The relation between `χ₄`, `χ₈` and `χ₈'` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d40e042617cf74a13ac61dac5a2a05a4e709ce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
