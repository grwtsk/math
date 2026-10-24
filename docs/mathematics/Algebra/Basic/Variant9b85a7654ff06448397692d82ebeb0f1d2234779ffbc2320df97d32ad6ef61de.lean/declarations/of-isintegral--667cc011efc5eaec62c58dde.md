# of_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db2e8fe7-0121-28db-43a0-3d139d1824eb",
  "kind": "theorem",
  "lexical_name": "of_isIntegral",
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
  "slug": "of-isintegral--667cc011efc5eaec62c58dde",
  "source": {
    "blob": "53d95775176a0af0a365db04b7cee64e727de57b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 81,
    "path": "GRWTSK/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:667cc011efc5eaec62c58dde4180ce01c980d01056f6613b961b4de26358de65",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db2e8fe7-0121-28db-43a0-3d139d1824eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_isIntegral (B : Type*) [CommRing B] [IsDomain B] [Nontrivial R]
    [Algebra R B] [Algebra.IsIntegral R B] [DimensionLEOne R] :
    DimensionLEOne B where
  maximalOfPrime := fun {p} ne_bot _ =>
    IsIntegral.isMaximal_of_isMaximal_under p
      (Ideal.IsPrime.isMaximal inferInstance (IsIntegral.under_ne_bot R ne_bot))

@[deprecated (since := "2026-05-08")] alias isIntegralClosure := of_isIntegral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant9b85a7654ff06448397692d82ebeb0f1d2234779ffbc2320df97d32ad6ef61de.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53d95775176a0af0a365db04b7cee64e727de57b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
