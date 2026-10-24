# sum_squareDivisorMobiusSupport_eq_zero_of_prime_square_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:291b2692-784c-c91e-8447-50cda87d8585",
  "kind": "theorem",
  "lexical_name": "sum_squareDivisorMobiusSupport_eq_zero_of_prime_square_dvd",
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
  "slug": "sum-squaredivisormobiussupport-eq-zero-of-prime-square-dvd--27c383485fdc45c8cac95680",
  "source": {
    "blob": "1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 205,
    "path": "GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27c383485fdc45c8cac95680df70b441ca9f82211c54bf2edae0fc6e9e54f687",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:291b2692-784c-c91e-8447-50cda87d8585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_squareDivisorMobiusSupport_eq_zero_of_prime_square_dvd
    {m p : ℕ} (hm : 0 < m) (hp : p.Prime)
    (hp2 : p * p ∣ m) :
    (∑ d ∈ squareDivisorMobiusSupport m, moebiusReal d) = 0 := by
  classical
  exact Finset.sum_involution
    (fun d hd => squareDivisorPrimeToggle p d)
    (fun d hd => moebiusReal_add_toggle_eq_zero hp hd)
    (fun d hd _hmu =>
      squareDivisorPrimeToggle_ne_self_on_support hp hd)
    (fun d hd =>
      squareDivisorPrimeToggle_mem_support hm hp hp2 hd)
    (fun d hd =>
      squareDivisorPrimeToggle_involutive_on_support hp hd)

/-- Complete nonsquarefree cancellation in the parent divisor-square Möbius
sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
