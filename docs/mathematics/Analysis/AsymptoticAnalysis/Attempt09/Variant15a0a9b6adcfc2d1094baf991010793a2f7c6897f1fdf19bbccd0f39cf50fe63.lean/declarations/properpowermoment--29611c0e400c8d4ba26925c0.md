# properPowerMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48e41e77f77c5d9c4c6a1455f3be8d8062d9ea6bc9e45e7ca58faef4698cbf31",
  "kind": "def",
  "lexical_name": "properPowerMoment",
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
  "slug": "properpowermoment--29611c0e400c8d4ba26925c0",
  "source": {
    "blob": "237230bd6db69257402103e04a3f10f0078c3185",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 35,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29611c0e400c8d4ba26925c09caaf0789b6a729a9730b151da5a2c0920960971",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48e41e77f77c5d9c4c6a1455f3be8d8062d9ea6bc9e45e7ca58faef4698cbf31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def properPowerMoment (r : ℕ) : ℝ := ∑' p : Nat.Primes, ∑' k : ℕ, primeMomentAtom r p k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `237230bd6db69257402103e04a3f10f0078c3185` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
