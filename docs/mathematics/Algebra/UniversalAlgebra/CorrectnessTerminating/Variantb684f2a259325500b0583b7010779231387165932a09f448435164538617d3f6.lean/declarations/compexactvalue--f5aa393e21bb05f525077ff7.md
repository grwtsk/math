# compExactValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7278883bb864201040dc2a81c33b43cfa77a61db35504aa9744b01d7f0d1d895",
  "kind": "def",
  "lexical_name": "compExactValue",
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
  "slug": "compexactvalue--f5aa393e21bb05f525077ff7",
  "source": {
    "blob": "251761c82a40244405ea8475d350ed49c86e148b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5aa393e21bb05f525077ff7d02bab43005808ae75bd47b0562cb129fe1473a4",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7278883bb864201040dc2a81c33b43cfa77a61db35504aa9744b01d7f0d1d895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def compExactValue (pconts conts : Pair K) (fr : K) : K :=
  -- if the fractional part is zero, we exactly approximated the value by the last continuants
  if fr = 0 then
    conts.a / conts.b
  else -- otherwise, we have to include the fractional part in a final continuants step.
    let exactConts := nextConts 1 fr⁻¹ pconts conts
    exactConts.a / exactConts.b

variable [FloorRing K]

/-- Just a computational lemma we need for the next main proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `251761c82a40244405ea8475d350ed49c86e148b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
