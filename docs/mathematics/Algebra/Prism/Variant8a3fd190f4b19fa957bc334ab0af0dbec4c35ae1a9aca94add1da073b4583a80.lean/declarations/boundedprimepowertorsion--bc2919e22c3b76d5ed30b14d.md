# BoundedPrimePowerTorsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc24b5eff74e102cdca35d5969aa2abb1c8897ea892663de78ba36100bb901c3",
  "kind": "def",
  "lexical_name": "BoundedPrimePowerTorsion",
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
  "slug": "boundedprimepowertorsion--bc2919e22c3b76d5ed30b14d",
  "source": {
    "blob": "1f582cf3f60b9d8acf78dfb96ab3c46344b18e47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc2919e22c3b76d5ed30b14d688dbff1fc7b996d6814e610cfba32aba7387c66",
  "verification": {
    "reference": "docs/verification/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc24b5eff74e102cdca35d5969aa2abb1c8897ea892663de78ba36100bb901c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BoundedPrimePowerTorsion
    (prime : CertifiedPrime) (ideal : Ideal A) (bound : Nat) : Prop :=
  ∀ value : A ⧸ ideal,
    (∃ exponent : Nat,
      (prime.value : A ⧸ ideal) ^ exponent * value = 0) →
    (prime.value : A ⧸ ideal) ^ bound * value = 0

/--
The proof-bearing finite algebraic data presently available for a bounded
prism.  Promotion to a genuine bounded prism additionally requires discharge
of `derivedCompletionObligation`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f582cf3f60b9d8acf78dfb96ab3c46344b18e47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
