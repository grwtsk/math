# Lean.MVarId.congrPasses!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9dcaf9baf82d48e108e2d13c790898be30979a03a08aa75aa04092ef95ccea6",
  "kind": "def",
  "lexical_name": "Lean.MVarId.congrPasses!",
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
  "slug": "lean-mvarid-congrpasses--7c2112178fec769d485443be",
  "source": {
    "blob": "43e8ba19f043c5b47163c53387cde93eab4a6123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 461,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c2112178fec769d485443becd67a94771937a22d4dbd782a2b3cc5db6824c15",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9dcaf9baf82d48e108e2d13c790898be30979a03a08aa75aa04092ef95ccea6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.congrPasses! :
    List (String × (Congr!.Config → MVarId → MetaM (Option (List MVarId)))) :=
  [("user congr", userCongr?),
   ("hcongr lemma", smartHCongr?),
   ("congr simp lemma", when (·.useCongrSimp) congrSimp?),
   ("Subsingleton.helim", fun _ => subsingletonHelim?),
   ("BEq instances", when (·.beqEq) fun _ => beqInst?),
   ("obvious funext", fun _ => obviousFunext?),
   ("obvious hfunext", fun _ => obviousHfunext?),
   ("congr_implies", fun _ => congrImplies?'),
   ("congr_pi", fun _ => congrPi?)]
where
  /--
  Conditionally runs a congruence strategy depending on the predicate `b` applied to the config.
  -/
  when (b : Congr!.Config → Bool) (f : Congr!.Config → MVarId → MetaM (Option (List MVarId)))
      (config : Congr!.Config) (mvar : MVarId) : MetaM (Option (List MVarId)) := do
    unless b config do return none
    f config mvar

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43e8ba19f043c5b47163c53387cde93eab4a6123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
