# card_ring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fb47e75-5f38-edfa-b2b7-25b7075f4302",
  "kind": "theorem",
  "lexical_name": "card_ring",
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
  "slug": "card-ring--2cf34a218ade6ce82a55a7d4",
  "source": {
    "blob": "28aef1785af70890fc4525c397b103f9aa985669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cf34a218ade6ce82a55a7d471005d2449c101574aa3f8052b43677e2fa6cf3e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fb47e75-5f38-edfa-b2b7-25b7075f4302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_ring : card Language.ring = 5 := by
  have : Fintype.card Language.ring.Symbols = 5 := rfl
  simp [Language.card, this]

open Language Structure

/-- A Type `R` is a `CompatibleRing` if it is a structure for the language of rings and this
structure is the same as the structure already given on `R` by the classes `Add`, `Mul` etc.

It is recommended to use this type class as a hypothesis to any theorem whose statement
requires a type to have be both a `Ring` (or `Field` etc.) and a
`Language.ring.Structure` -/
/- This class does not extend `Add` etc, because this way it can be used in
combination with a `Ring`, or `Field` instance without having multiple different
`Add` structures on the Type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28aef1785af70890fc4525c397b103f9aa985669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
