# toInt?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3481d0e5f12fef103323cc178951596ef405527a7426e04f1113a468073a898",
  "kind": "def",
  "lexical_name": "toInt?",
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
  "slug": "toint--b41647d1c901fbdfc4bebc5d",
  "source": {
    "blob": "4a0b0503bc0b46bf0ff88d16c72127da7155f7c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 61,
    "path": "GRWTSK/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b41647d1c901fbdfc4bebc5d54c9d00dc38ba0bbdb5d659136ac028b86a9d6e0",
  "verification": {
    "reference": "docs/verification/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3481d0e5f12fef103323cc178951596ef405527a7426e04f1113a468073a898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def toInt? (e : Expr) : RingM (Option Int) := do
  match_expr e with
  | Neg.neg _ i a =>
    if (← isNegInst i) then return (- .) <$> (← toInt? a) else return none
  | IntCast.intCast _ i a =>
    if (← isIntCastInst i) then getIntValue? a else return none
  | NatCast.natCast _ i a =>
    if (← isNatCastInst i) then
      let some v ← getNatValue? a | return none
      return some (Int.ofNat v)
    else
      return none
  | OfNat.ofNat _ n _ =>
    let some v ← getNatValue? n | return none
    return some (Int.ofNat v)
  | _ => return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0b0503bc0b46bf0ff88d16c72127da7155f7c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
