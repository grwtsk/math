# selfZpow_pow_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c627a77-5fda-948d-5e62-5db8813eca4e",
  "kind": "theorem",
  "lexical_name": "selfZpow_pow_sub",
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
  "slug": "selfzpow-pow-sub--d7b552bd86ab7c88c5253435",
  "source": {
    "blob": "66683c752a5edd4c5cff7b6f68e9177cb134dd64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 300,
    "path": "GRWTSK/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7b552bd86ab7c88c52534354d75aca8bcb990cee66c28c1ba4056b7605cab42",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c627a77-5fda-948d-5e62-5db8813eca4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selfZpow_pow_sub (a : R) (b : B) (m d : ℤ) :
    selfZpow x B (m - d) * mk' B a (1 : Submonoid.powers x) = b ↔
      selfZpow x B m * mk' B a (1 : Submonoid.powers x) = selfZpow x B d * b := by
  rw [sub_eq_add_neg, selfZpow_add, mul_assoc, mul_comm _ (mk' B a 1), ← mul_assoc]
  constructor
  · intro h
    have := congr_arg (fun s : B => s * selfZpow x B d) h
    simp only at this
    rwa [mul_assoc, mul_assoc, selfZpow_neg_mul, mul_one, mul_comm b _] at this
  · intro h
    have := congr_arg (fun s : B => s * selfZpow x B (-d)) h
    simp only at this
    rwa [mul_comm _ b, mul_assoc b _ _, selfZpow_mul_neg, mul_one] at this
#align self_zpow_pow_sub selfZpow_pow_sub

variable [IsDomain R] [NormalizationMonoid R] [UniqueFactorizationMonoid R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66683c752a5edd4c5cff7b6f68e9177cb134dd64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
