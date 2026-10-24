# cast_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acc80956-6fe0-073b-3414-80d60da55848",
  "kind": "theorem",
  "lexical_name": "cast_factorial",
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
  "slug": "cast-factorial--d5cdb18c3de7a5ce6457d643",
  "source": {
    "blob": "11741d6aea064c9e7646408293df5e6a17d78acc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 53,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Cast/Variant9928bf77bda36c0b19bb51ff235b335031d28ab92e987decf7b1d7b3a86d9a90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5cdb18c3de7a5ce6457d643579a640b21470e7e6d331e1507779a95722d15b6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Cast/Variant9928bf77bda36c0b19bb51ff235b335031d28ab92e987decf7b1d7b3a86d9a90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acc80956-6fe0-073b-3414-80d60da55848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_factorial : (a ! : S) = (ascPochhammer S a).eval 1 := by
  rw [← one_ascFactorial, cast_ascFactorial, cast_one]

end Semiring

section Ring

variable [Ring S] (a b : ℕ)

/-- Convenience lemma. The `a - 1` is not using truncated subtraction, as opposed to the definition
of `Nat.descFactorial` as a natural. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Cast/Variant9928bf77bda36c0b19bb51ff235b335031d28ab92e987decf7b1d7b3a86d9a90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Cast/Variant9928bf77bda36c0b19bb51ff235b335031d28ab92e987decf7b1d7b3a86d9a90.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11741d6aea064c9e7646408293df5e6a17d78acc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
