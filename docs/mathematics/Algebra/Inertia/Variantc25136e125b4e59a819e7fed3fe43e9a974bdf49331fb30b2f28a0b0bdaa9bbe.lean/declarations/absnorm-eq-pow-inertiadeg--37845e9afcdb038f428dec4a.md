# absNorm_eq_pow_inertiaDeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4c8d5af-975d-7681-ffbf-01178ae099f0",
  "kind": "lemma",
  "lexical_name": "absNorm_eq_pow_inertiaDeg",
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
  "slug": "absnorm-eq-pow-inertiadeg--37845e9afcdb038f428dec4a",
  "source": {
    "blob": "af930d3c87d4b1a9bd8ab37a133629e090009e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 198,
    "path": "GRWTSK/Algebra/Inertia/Variantc25136e125b4e59a819e7fed3fe43e9a974bdf49331fb30b2f28a0b0bdaa9bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37845e9afcdb038f428dec4a8e0c8c47b036cb3038314e82ae2f45fc6e8f2eb6",
  "verification": {
    "reference": "docs/verification/Algebra/Inertia/Variantc25136e125b4e59a819e7fed3fe43e9a974bdf49331fb30b2f28a0b0bdaa9bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4c8d5af-975d-7681-ffbf-01178ae099f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma absNorm_eq_pow_inertiaDeg [IsDedekindDomain R] [Infinite R] [Module.Finite ℤ R] {p : ℤ}
    (P : Ideal R) [P.LiesOver (span {p})] (hp : Prime p) :
    absNorm P = p.natAbs ^ ((span {p}).inertiaDeg' P) := by
  simpa using absNorm_eq_pow_inertiaDeg'_of_liesOver P (span {p})
    (by rwa [span_singleton_prime hp.ne_zero]) (by simpa using hp.ne_zero)

/-- The absolute norm of an ideal `P` above a rational (positive) prime `p` is
`p ^ ((span {p}).inertiaDeg' P)`.
See `absNorm_eq_pow_inertiaDeg` for a version with `p` of type `ℤ`. -/
-- The assumption `Module.Free ℤ` has been replaced by `Infinite`: it should hold
-- automatically in all cases; if not, the corresponding instance should be added.
@[deprecated "Use `Ideal.natAbs_pow_inertiaDeg` instead." (since := "2026-08-14")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inertia/Variantc25136e125b4e59a819e7fed3fe43e9a974bdf49331fb30b2f28a0b0bdaa9bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inertia/Variantc25136e125b4e59a819e7fed3fe43e9a974bdf49331fb30b2f28a0b0bdaa9bbe.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af930d3c87d4b1a9bd8ab37a133629e090009e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
