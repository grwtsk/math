# mul_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e91a33d-f42b-6c4d-6e00-295545928c86",
  "kind": "lemma",
  "lexical_name": "mul_pow",
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
  "slug": "mul-pow--6f0dbed127cce081a3231b33",
  "source": {
    "blob": "87499371d701f92163612c570f82a76a74421462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 228,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant1de660ac794263d0363bc5bf9ce7b357409c2db36c0642521738103a0938fa84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f0dbed127cce081a3231b331ef57bec85c3c3c904d5e72d80d6c668be432c0e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant1de660ac794263d0363bc5bf9ce7b357409c2db36c0642521738103a0938fa84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e91a33d-f42b-6c4d-6e00-295545928c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive nsmul_add] lemma mul_pow (a b : M) : ∀ n, (a * b) ^ n = a ^ n * b ^ n
  | 0 => by rw [pow_zero, pow_zero, pow_zero, one_mul]
  | n + 1 => by rw [pow_succ', pow_succ', pow_succ', mul_pow, mul_mul_mul_comm]

end CommMonoid

section LeftCancelMonoid

variable [Monoid M] [IsLeftCancelMul M] {a b : M}

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant1de660ac794263d0363bc5bf9ce7b357409c2db36c0642521738103a0938fa84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant1de660ac794263d0363bc5bf9ce7b357409c2db36c0642521738103a0938fa84.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87499371d701f92163612c570f82a76a74421462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
