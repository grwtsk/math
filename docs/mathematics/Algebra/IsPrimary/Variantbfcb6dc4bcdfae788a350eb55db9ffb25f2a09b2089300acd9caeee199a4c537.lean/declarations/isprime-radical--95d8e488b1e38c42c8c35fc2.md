# isPrime_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38c81e00-eadf-2e7c-8004-f5bc5a0aa81c",
  "kind": "theorem",
  "lexical_name": "isPrime_radical",
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
  "slug": "isprime-radical--95d8e488b1e38c42c8c35fc2",
  "source": {
    "blob": "bf1763c8d108f7816c0b6eb525c1d5037c32a353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 51,
    "path": "GRWTSK/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95d8e488b1e38c42c8c35fc22d19fffc92d8fb80f62c16b880d63868947f54d7",
  "verification": {
    "reference": "docs/verification/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38c81e00-eadf-2e7c-8004-f5bc5a0aa81c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrime_radical {I : Ideal R} (hi : I.IsPrimary) : IsPrime (radical I) :=
  ⟨mt radical_eq_top.1 hi.1,
   fun {x y} ⟨m, hxy⟩ => by
    rw [mul_pow] at hxy; rcases (isPrimary_iff.mp hi).2 hxy with h | h
    · exact Or.inl ⟨m, h⟩
    · exact Or.inr (mem_radical_of_pow_mem h)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf1763c8d108f7816c0b6eb525c1d5037c32a353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
