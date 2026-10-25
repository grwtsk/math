# wpLaurentApproxV1_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84062d389a1d448e9c943eb656bfc79af72b4723",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 429,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:227ab65b-f869-a1e7-a40d-be6c9a76a65f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02ae813f-3885-8500-6e0c-9e0d21f87dc9",
  "kind": "theorem",
  "lexical_name": "wpLaurentApproxV1_spec",
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
  "slug": "wplaurentapproxv1-spec--a0d6e98d6183ea0f713af8bd",
  "source": {
    "blob": "84062d389a1d448e9c943eb656bfc79af72b4723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 429,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0d6e98d6183ea0f713af8bd74402b5a8dc8db3702a0ea96cc531d286d078164",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02ae813f-3885-8500-6e0c-9e0d21f87dc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wpLaurentApproxV1_spec
    (z : ComplexFixedV1) (g2Raw g3Raw : Int) (approximate : ComplexFixedV1)
    (accepted : wpLaurentApproxV1 z g2Raw g3Raw = some approximate) :
    z.Valid ∧ FitsSignedBits 64 g2Raw ∧ FitsSignedBits 64 g3Raw ∧
      z.isZero = false ∧
      checkedWpLaurentPolynomialV1 z g2Raw g3Raw = some approximate := by
  simp only [wpLaurentApproxV1] at accepted
  split at accepted <;> try contradiction
  split at accepted <;> try contradiction
  simp_all

/-! ## Future analytic validation interface -/

/-- A future analytic result must arrive with its own proof.  Merely producing
the finite polynomial above never constructs this certificate. -/
@[surface_novel, surface_certificate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant1d5cd6d28b0dd2d7ab19c8ce8c403845ae93e966c3495c98dfc5768e72d54b56.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84062d389a1d448e9c943eb656bfc79af72b4723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
