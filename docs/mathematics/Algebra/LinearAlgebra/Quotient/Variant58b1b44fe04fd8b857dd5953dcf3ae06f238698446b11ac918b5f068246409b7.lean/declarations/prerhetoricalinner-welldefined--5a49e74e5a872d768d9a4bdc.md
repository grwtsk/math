# preRhetoricalInner_wellDefined

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:160ce979-465b-8918-ab7e-a1197942dd11",
  "kind": "theorem",
  "lexical_name": "preRhetoricalInner_wellDefined",
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
  "slug": "prerhetoricalinner-welldefined--5a49e74e5a872d768d9a4bdc",
  "source": {
    "blob": "06726e1c1130b8af3c3a909df5b6b256ce29bdb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a49e74e5a872d768d9a4bdcd193e06505d3b53fc2f4904dd5e0f1ddc1bf072b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:160ce979-465b-8918-ab7e-a1197942dd11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preRhetoricalInner_wellDefined (f g : Raw kernel) :
    preRhetoricalInner kernel (preRhetoricalMk kernel f)
      (preRhetoricalMk kernel g) = Raw.inner kernel f g :=
  rfl

/-- The descended sesquilinear form before its quotient definiteness field is
bundled. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06726e1c1130b8af3c3a909df5b6b256ce29bdb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
