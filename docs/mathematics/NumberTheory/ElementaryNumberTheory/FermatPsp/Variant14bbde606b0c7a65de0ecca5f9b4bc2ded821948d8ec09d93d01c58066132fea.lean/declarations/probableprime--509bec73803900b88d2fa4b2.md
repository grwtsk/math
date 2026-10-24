# ProbablePrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80963f2c3160c91239d653932e83e6f2cdbd0f484308ed16bcfb6513f0062a41",
  "kind": "def",
  "lexical_name": "ProbablePrime",
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
  "slug": "probableprime--509bec73803900b88d2fa4b2",
  "source": {
    "blob": "a3d1a3a63870f31fa0ed99f1ad87004b000a2898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 59,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:509bec73803900b88d2fa4b2ab506a5ae68142263ca77f7cf3c7f858cb90cd62",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80963f2c3160c91239d653932e83e6f2cdbd0f484308ed16bcfb6513f0062a41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ProbablePrime (n b : ℕ) : Prop :=
  n ∣ b ^ (n - 1) - 1
#align fermat_psp.probable_prime Nat.ProbablePrime

/--
`n` is a Fermat pseudoprime to base `b` if `n` is a probable prime to base `b` and is composite. By
this definition, all composite natural numbers are pseudoprimes to base 0 and 1. This definition
also permits `n` to be less than `b`, so that 4 is a pseudoprime to base 5, for example.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d1a3a63870f31fa0ed99f1ad87004b000a2898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
