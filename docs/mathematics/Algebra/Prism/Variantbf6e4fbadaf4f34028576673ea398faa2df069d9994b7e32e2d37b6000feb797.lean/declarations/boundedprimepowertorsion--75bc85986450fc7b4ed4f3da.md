# BoundedPrimePowerTorsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbb7b22d607cd956c146c12f3dfed45f38b549fd02a1659b929358b85821aedd",
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
  "slug": "boundedprimepowertorsion--75bc85986450fc7b4ed4f3da",
  "source": {
    "blob": "4269c43a7f136e14c686d8b55632a81c7bca7686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/Algebra/Prism/Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75bc85986450fc7b4ed4f3da2399c517dbd90259ad0822c25fbaf798bd56b96d",
  "verification": {
    "reference": "docs/verification/Algebra/Prism/Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbb7b22d607cd956c146c12f3dfed45f38b549fd02a1659b929358b85821aedd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

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

[Verification target and public status](../../../../../verification/Algebra/Prism/Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prism/Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4269c43a7f136e14c686d8b55632a81c7bca7686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
