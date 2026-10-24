# State

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53c99a8370373a0d66aa01469c05b3960f3908032ed5abaed0fdc5baef3fdbd6",
  "kind": "structure",
  "lexical_name": "State",
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
  "slug": "state--d169ca2f27cfb46d355f2bc1",
  "source": {
    "blob": "972f8f4701bb5348b0f4051a4e89a95725def8c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 268,
    "path": "GRWTSK/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d169ca2f27cfb46d355f2bc1675c8f38009a08e09f2b21d70d81d746844241b6",
  "verification": {
    "reference": "docs/verification/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53c99a8370373a0d66aa01469c05b3960f3908032ed5abaed0fdc5baef3fdbd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure State where
  /--
  Commutative rings.
  We expect to find a small number of rings in a given goal. Thus, using `Array` is fine here.
  -/
  rings : Array CommRing := {}
  /--
  Mapping from types to its "ring id". We cache failures using `none`.
  `typeIdOf[type]` is `some id`, then `id < rings.size`. -/
  typeIdOf : PHashMap ExprPtr (Option Nat) := {}
  /- Mapping from expressions/terms to their ring ids. -/
  exprToRingId : PHashMap ExprPtr Nat := {}
  /-- Commutative semirings. We support them using the envelope `OfCommRing.Q` -/
  semirings : Array CommSemiring := {}
  /--
  Mapping from types to its "semiring id". We cache failures using `none`.
  `stypeIdOf[type]` is `some id`, then `id < semirings.size`.
  If a type is in this map, it is not in `typeIdOf`.
  -/
  stypeIdOf : PHashMap ExprPtr (Option Nat) := {}
  /-
  Mapping from expressions/terms to their semiring ids.
  If an expression is in this map, it is not in `exprToRingId`.
  -/
  exprToSemiringId : PHashMap ExprPtr Nat := {}
  /--
  Non commutative rings.
  -/
  ncRings : Array Ring := {}
  /- Mapping from expressions/terms to their (non-commutative) ring ids. -/
  exprToNCRingId : PHashMap ExprPtr Nat := {}
  /--
  Mapping from types to its "ring id". We cache failures using `none`.
  `nctypeIdOf[type]` is `some id`, then `id < ncRings.size`. -/
  nctypeIdOf : PHashMap ExprPtr (Option Nat) := {}
  /--
  Non commutative semirings.
  -/
  ncSemirings : Array Semiring := {}
  /- Mapping from expressions/terms to their (non-commutative) semiring ids. -/
  exprToNCSemiringId : PHashMap ExprPtr Nat := {}
  /--
  Mapping from types to its "semiring id". We cache failures using `none`.
  `ncstypeIdOf[type]` is `some id`, then `id < ncSemirings.size`. -/
  ncstypeIdOf : PHashMap ExprPtr (Option Nat) := {}
  steps := 0
  /-- `true` if solver has already reported max degree issue. -/
  reportedMaxDegreeIssue : Bool := false
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `972f8f4701bb5348b0f4051a4e89a95725def8c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
