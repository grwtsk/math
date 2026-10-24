# natDegree_removeFactor'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "813fa6d7de756ace5d965370c69d47a69cc03dc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:183e4e52-b981-9cb6-a1e9-00265ad8cdf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b9837d4-d111-5e03-df77-ab8fbf673495",
  "kind": "theorem",
  "lexical_name": "natDegree_removeFactor'",
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
  "slug": "natdegree-removefactor--93808f64b17c0beec166f454",
  "source": {
    "blob": "813fa6d7de756ace5d965370c69d47a69cc03dc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93808f64b17c0beec166f454ddfed896f830f99914b49f9fd8f5631c74fdb193",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b9837d4-d111-5e03-df77-ab8fbf673495`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_removeFactor' {f : K[X]} {n : ℕ} (hfn : f.natDegree = n + 1) :
  f.removeFactor.natDegree = n := by rw [natDegree_removeFactor, hfn, n.add_sub_cancel]
#align polynomial.nat_degree_remove_factor' Polynomial.natDegree_removeFactor'

/-- Auxiliary construction to a splitting field of a polynomial, which removes
`n` (arbitrarily-chosen) factors.

It constructs the type, proves that is a field and algebra over the base field.

Uses recursion on the degree.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc3f9614f645eb4cd5bab8c1d2ef75778dce7c471478d39eb61c8aef19770ba97.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `813fa6d7de756ace5d965370c69d47a69cc03dc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
