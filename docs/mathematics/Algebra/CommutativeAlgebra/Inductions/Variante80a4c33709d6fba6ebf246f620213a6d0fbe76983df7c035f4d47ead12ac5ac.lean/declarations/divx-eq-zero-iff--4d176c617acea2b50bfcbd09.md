# divX_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bff6299bba56167809cafdb346453e2584b8f3c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fdd9e79-1611-57a0-0896-3833c9eb6312",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00ea5b55-93ec-7ca1-5818-1942a903b8dc",
  "kind": "theorem",
  "lexical_name": "divX_eq_zero_iff",
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
  "slug": "divx-eq-zero-iff--4d176c617acea2b50bfcbd09",
  "source": {
    "blob": "bff6299bba56167809cafdb346453e2584b8f3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 60,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d176c617acea2b50bfcbd090f48a431a36384f7753359f5f3f9e6a6a1bf2940",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00ea5b55-93ec-7ca1-5818-1942a903b8dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divX_eq_zero_iff : divX p = 0 ↔ p = C (p.coeff 0) :=
  ⟨fun h => by simpa [eq_comm, h] using divX_mul_X_add p, fun h => by rw [h, divX_C]⟩
set_option linter.uppercaseLean3 false in
#align polynomial.div_X_eq_zero_iff Polynomial.divX_eq_zero_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bff6299bba56167809cafdb346453e2584b8f3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
