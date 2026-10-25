# simpArrowTelescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b17cab718bcd998aedb676a7e785967b8c37df2761ad8f249f682f96924b566",
  "kind": "def",
  "lexical_name": "simpArrowTelescope",
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
  "slug": "simparrowtelescope--2ba81b123c554df616c2055e",
  "source": {
    "blob": "2c18380c7045a76a295ae88e32af46b1499e3c68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ba81b123c554df616c2055efbf2657472168af485ffbd526b7fbe674644d0b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b17cab718bcd998aedb676a7e785967b8c37df2761ad8f249f682f96924b566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def simpArrowTelescope (simpBody : Simproc := simp) : Simproc := fun e => do
  unless e.isArrow do return .rfl -- not applicable
  let { arrow, infos, v } ← toArrow e
  match (← simpArrows arrow infos simpBody) with
  | (.rfl _ cd, _) => return mkRflResult (done := true) (contextDependent := cd)
  | (.step arrow' h _ cd, infos) =>
  let e' ← toForall arrow' infos
  let α := mkSort v
  let v1 := v.succ
  let h := mkApp6 (mkConst ``Eq.trans [v1]) α e arrow arrow' (mkApp2 (mkConst ``Eq.refl [v1]) α arrow) h
  let h := mkApp6 (mkConst ``Eq.trans [v1]) α e arrow' e' h (mkApp2 (mkConst ``Eq.refl [v1]) α e')
  return .step e' h (done := true) (contextDependent := cd)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c18380c7045a76a295ae88e32af46b1499e3c68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
