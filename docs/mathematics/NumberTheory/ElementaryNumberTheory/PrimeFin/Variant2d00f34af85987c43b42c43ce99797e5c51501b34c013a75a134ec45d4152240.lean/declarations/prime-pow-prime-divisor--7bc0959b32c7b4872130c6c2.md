# prime_pow_prime_divisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1591ef10-518b-c3ef-8654-9016ee669b47",
  "kind": "theorem",
  "lexical_name": "prime_pow_prime_divisor",
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
  "slug": "prime-pow-prime-divisor--7bc0959b32c7b4872130c6c2",
  "source": {
    "blob": "922eee6cc32b559c1c06e4ca5bf51ee718b3949f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 62,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bc0959b32c7b4872130c6c2be13dddb340bf3a372f263ee12c32b00c32bbb5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1591ef10-518b-c3ef-8654-9016ee669b47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_pow_prime_divisor {p k : ℕ} (hk : k ≠ 0) (hp : Prime p) :
    (p ^ k).factors.toFinset = {p} := by simp [pow_factors_toFinset p hk, factors_prime hp]
#align nat.prime_pow_prime_divisor Nat.prime_pow_prime_divisor

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `922eee6cc32b559c1c06e4ca5bf51ee718b3949f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
