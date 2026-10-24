# finite_zkp_representative_uses_public_kappa

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1632ffeb-6d65-96da-e90f-4e446d05a028",
  "kind": "theorem",
  "lexical_name": "finite_zkp_representative_uses_public_kappa",
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
  "slug": "finite-zkp-representative-uses-public-kappa--da3f8f25aeca826a05417579",
  "source": {
    "blob": "6396686b643722db1295f2e7b251fdd0e0016d1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 390,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da3f8f25aeca826a05417579c85f994d3cc63b3f78304d171119bf808a389eda",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1632ffeb-6d65-96da-e90f-4e446d05a028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_zkp_representative_uses_public_kappa
    {k : Nat}
    (policy : FiniteZKPRepresentativePolicy k)
    {d : DyadicNumeratorRepresentative}
    (h : d ∈ policy.dyadicNumerators) :
    d.kappa = policy.publicKappa :=
  policy.numeratorsUsePublicKappa d h

/-- Matching a public statement fixes the representative's public `kappa`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6396686b643722db1295f2e7b251fdd0e0016d1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
