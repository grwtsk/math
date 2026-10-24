# instLinearOrderedCommGroupWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd6a5d04dfdd44b1b324f2065056cd49ead4dd2f9d841dbe3c6b290867e561b0",
  "kind": "instance",
  "lexical_name": "instLinearOrderedCommGroupWithZero",
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
  "slug": "instlinearorderedcommgroupwithzero--64fd1fd4b74e88a3903b7133",
  "source": {
    "blob": "7ad585a2d6da772a06eecec0e101185b89cdaf21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 389,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Canonical/Varianta8244551166ebc1d46bf457e3ea33848a8e039504d84078b3fa695c7a9727c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64fd1fd4b74e88a3903b7133a793fbadc5133c5d6246748b6827c49cb2fd54af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Canonical/Varianta8244551166ebc1d46bf457e3ea33848a8e039504d84078b3fa695c7a9727c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd6a5d04dfdd44b1b324f2065056cd49ead4dd2f9d841dbe3c6b290867e561b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLinearOrderedCommGroupWithZero [CommGroup α] [LinearOrder α] [IsOrderedMonoid α] :
    LinearOrderedCommGroupWithZero (WithZero α) where

end WithZero

section MultiplicativeNotation

/-- Notation for `WithZero (Multiplicative ℕ)` -/
scoped[Multiplicative] notation "ℕₘ₀" => WithZero (Multiplicative ℕ)

/-- Notation for `WithZero (Multiplicative ℤ)` -/
scoped[Multiplicative] notation "ℤₘ₀" => WithZero (Multiplicative ℤ)

end MultiplicativeNotation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Canonical/Varianta8244551166ebc1d46bf457e3ea33848a8e039504d84078b3fa695c7a9727c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Canonical/Varianta8244551166ebc1d46bf457e3ea33848a8e039504d84078b3fa695c7a9727c78.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ad585a2d6da772a06eecec0e101185b89cdaf21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
