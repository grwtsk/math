# isUnit_pow_iff_of_not_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe376cfcfa91b9a0bb2ba99b816c211082cb6566",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:446137ea-5b44-eb64-65f8-ef2f7cbddce6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d521f5d0-7394-236d-e462-e8141f0088b8",
  "kind": "lemma",
  "lexical_name": "isUnit_pow_iff_of_not_isUnit",
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
  "slug": "isunit-pow-iff-of-not-isunit--687b5b7ac86c70c782611880",
  "source": {
    "blob": "fe376cfcfa91b9a0bb2ba99b816c211082cb6566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 100,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:687b5b7ac86c70c78261188074dbc333fba18b4d52cc9f22476ddaee61a0eabe",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d521f5d0-7394-236d-e462-e8141f0088b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnit_pow_iff_of_not_isUnit (hx : ¬ IsUnit a) {n : ℕ} :
    IsUnit (a ^ n) ↔ n = 0 := by
  rcases n with (_|n) <;>
  simp [hx]

/-- If `a ^ n = 1`, `n ≠ 0`, then `a` is a unit. -/
@[to_additive (attr := simps!) "If `n • x = 0`, `n ≠ 0`, then `x` is an additive unit."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe376cfcfa91b9a0bb2ba99b816c211082cb6566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
