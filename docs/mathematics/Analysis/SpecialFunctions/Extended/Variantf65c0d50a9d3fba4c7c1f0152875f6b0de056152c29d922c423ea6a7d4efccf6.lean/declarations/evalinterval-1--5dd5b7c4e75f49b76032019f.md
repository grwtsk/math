# evalInterval?1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee10b94e3f66d91c62ab60baba0d5772ed6ec1e508b0c0f4c2f94ff6782db3e9",
  "kind": "def",
  "lexical_name": "evalInterval?1",
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
  "slug": "evalinterval-1--5dd5b7c4e75f49b76032019f",
  "source": {
    "blob": "27744526be1e5c5eaa4a13c9532b6b350bf57077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 418,
    "path": "GRWTSK/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dd5b7c4e75f49b76032019f46dfc9418f324a729b08407496bc42b5d765d981",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee10b94e3f66d91c62ab60baba0d5772ed6ec1e508b0c0f4c2f94ff6782db3e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalInterval?1 (e : Expr) (I : IntervalRat) : Option IntervalRat :=
  evalInterval? e (fun _ => I)

/-- Correctness for single-variable partial evaluation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27744526be1e5c5eaa4a13c9532b6b350bf57077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
