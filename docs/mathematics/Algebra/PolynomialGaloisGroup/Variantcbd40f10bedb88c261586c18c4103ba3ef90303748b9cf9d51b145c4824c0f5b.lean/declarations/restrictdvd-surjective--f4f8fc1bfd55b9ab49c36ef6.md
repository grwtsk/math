# restrictDvd_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdf0c568-a56c-7aa6-d3fb-4040cc12cb7f",
  "kind": "theorem",
  "lexical_name": "restrictDvd_surjective",
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
  "slug": "restrictdvd-surjective--f4f8fc1bfd55b9ab49c36ef6",
  "source": {
    "blob": "f1d2db0af996bbe778cfb849e716d28a3efcc890",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 251,
    "path": "GRWTSK/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4f8fc1bfd55b9ab49c36ef6e220f036e5c35acafb5eabf982dba97952cf36df",
  "verification": {
    "reference": "docs/verification/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdf0c568-a56c-7aa6-d3fb-4040cc12cb7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictDvd_surjective (hpq : p ∣ q) (hq : q ≠ 0) :
    Function.Surjective (restrictDvd hpq) := by
  classical
  haveI := Fact.mk <|
    splits_of_splits_of_dvd (algebraMap F q.SplittingField) hq (SplittingField.splits q) hpq
  simpa only [restrictDvd_def, dif_neg hq] using restrict_surjective _ _

variable (p q)

/-- The Galois group of a product maps into the product of the Galois groups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d2db0af996bbe778cfb849e716d28a3efcc890` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
