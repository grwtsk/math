# squarefreeIndicatorReal_eq_squareDivisorMobiusSum_of_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4f4dd78-599a-e781-8c7c-51635b8517f6",
  "kind": "theorem",
  "lexical_name": "squarefreeIndicatorReal_eq_squareDivisorMobiusSum_of_squarefree",
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
  "slug": "squarefreeindicatorreal-eq-squaredivisormobiussum-of-squarefree--05221cb2b181c9667410665c",
  "source": {
    "blob": "224cedfa623171785bb8c46480e2a00eecd398c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05221cb2b181c9667410665c7d6c03778773744cdb299f6d87f48782272a0c5c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4f4dd78-599a-e781-8c7c-51635b8517f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefreeIndicatorReal_eq_squareDivisorMobiusSum_of_squarefree
    {m : ℕ} (hm : 0 < m) (hsq : Squarefree m) :
    squarefreeIndicatorReal m = squareDivisorMobiusSum m := by
  rw [squareDivisorMobiusSum_eq_one_of_squarefree hm hsq]
  simp [squarefreeIndicatorReal, hsq]

/-- The only arithmetic obligation left after discharging the squarefree case:
for a positive nonsquarefree integer, the square-divisor Möbius sum cancels to
zero.

No value is constructed in this module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224cedfa623171785bb8c46480e2a00eecd398c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
