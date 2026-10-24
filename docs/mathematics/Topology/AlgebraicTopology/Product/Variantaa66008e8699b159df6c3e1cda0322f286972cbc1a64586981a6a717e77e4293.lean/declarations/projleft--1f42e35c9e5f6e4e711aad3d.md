# projLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:237c18a6af12c79e10af789c376fdc36cc3112781d12a22ef30eb8e18fcec939",
  "kind": "def",
  "lexical_name": "projLeft",
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
  "slug": "projleft--1f42e35c9e5f6e4e711aad3d",
  "source": {
    "blob": "9f3f92ffe6771c8d70acb23c76f94f015dcf7edc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 226,
    "path": "GRWTSK/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f42e35c9e5f6e4e711aad3db84a26665ec3ef2feb03eafe67bdd6379b0af57b",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:237c18a6af12c79e10af789c376fdc36cc3112781d12a22ef30eb8e18fcec939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def projLeft (p : Path.Homotopic.Quotient c₁ c₂) : Path.Homotopic.Quotient c₁.1 c₂.1 :=
  p.mapFn ⟨_, continuous_fst⟩
#align path.homotopic.proj_left Path.Homotopic.projLeft

/-- Abbreviation for projection onto the right coordinate of a path class. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f3f92ffe6771c8d70acb23c76f94f015dcf7edc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
