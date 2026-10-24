# ofEncodableOfInfinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cebe7797b8073911bfe172729f4c3ae9c5752756fd318a15e2c0dd2b57e981a3",
  "kind": "def",
  "lexical_name": "ofEncodableOfInfinite",
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
  "slug": "ofencodableofinfinite--30c2a276370eaf0080e03b59",
  "source": {
    "blob": "14ef91cd00038155e10b9da0d1279c3692ebe85f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 320,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variant2385327db365c0c0ee6edc3da4ea55343abe3b43631ed9d3c3720e4476a32a38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30c2a276370eaf0080e03b59a4b2c78dc7dfea65c9342c11ef2ac6dc3bf22e17",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variant2385327db365c0c0ee6edc3da4ea55343abe3b43631ed9d3c3720e4476a32a38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cebe7797b8073911bfe172729f4c3ae9c5752756fd318a15e2c0dd2b57e981a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofEncodableOfInfinite (α : Type*) [Encodable α] [Infinite α] : Denumerable α := by
  letI := @decidableRangeEncode α _
  letI : Infinite (Set.range (@encode α _)) :=
    Infinite.of_injective _ (Equiv.ofInjective _ encode_injective).injective
  letI := Nat.Subtype.denumerable (Set.range (@encode α _))
  exact Denumerable.ofEquiv (Set.range (@encode α _)) (equivRangeEncode α)

end Denumerable

/-- See also `nonempty_encodable`, `nonempty_fintype`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variant2385327db365c0c0ee6edc3da4ea55343abe3b43631ed9d3c3720e4476a32a38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variant2385327db365c0c0ee6edc3da4ea55343abe3b43631ed9d3c3720e4476a32a38.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ef91cd00038155e10b9da0d1279c3692ebe85f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
