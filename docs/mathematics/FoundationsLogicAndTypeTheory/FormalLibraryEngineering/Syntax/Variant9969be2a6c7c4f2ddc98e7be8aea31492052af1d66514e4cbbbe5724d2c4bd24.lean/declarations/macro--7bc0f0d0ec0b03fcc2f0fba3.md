# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f21600bdb29c72ec27c6cc5a206912203644720333371a57b560c1c8478e15e",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--7bc0f0d0ec0b03fcc2f0fba3",
  "source": {
    "blob": "d6b00af43005679ad6748111c2b5b575a0675b37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant9969be2a6c7c4f2ddc98e7be8aea31492052af1d66514e4cbbbe5724d2c4bd24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bc0f0d0ec0b03fcc2f0fba3a2c9a17a6f0792197a0a291c64236f0bf85bbea4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant9969be2a6c7c4f2ddc98e7be8aea31492052af1d66514e4cbbbe5724d2c4bd24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f21600bdb29c72ec27c6cc5a206912203644720333371a57b560c1c8478e15e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro (name := mleave) "mleave" : tactic =>
  `(tactic| (try simp only [
              $(mkIdent ``Std.Do.SPred.down_pure):term,
              $(mkIdent ``Std.Do.SPred.apply_pure):term,
              -- $(mkIdent ``Std.Do.SPred.entails_cons):term, -- Ineffective until #9015 lands
              $(mkIdent ``Std.Do.SPred.entails_1):term,
              $(mkIdent ``Std.Do.SPred.entails_2):term,
              $(mkIdent ``Std.Do.SPred.entails_3):term,
              $(mkIdent ``Std.Do.SPred.entails_4):term,
              $(mkIdent ``Std.Do.SPred.entails_5):term,
              $(mkIdent ``Std.Do.SPred.entails_nil):term,
              $(mkIdent ``Std.Do.SPred.and_cons):term,
              $(mkIdent ``Std.Do.SPred.and_nil):term,
              $(mkIdent ``Std.Do.SPred.or_cons):term,
              $(mkIdent ``Std.Do.SPred.or_nil):term,
              $(mkIdent ``Std.Do.SPred.not_cons):term,
              $(mkIdent ``Std.Do.SPred.not_nil):term,
              $(mkIdent ``Std.Do.SPred.imp_cons):term,
              $(mkIdent ``Std.Do.SPred.imp_nil):term,
              $(mkIdent ``Std.Do.SPred.iff_cons):term,
              $(mkIdent ``Std.Do.SPred.iff_nil):term,
              $(mkIdent ``Std.Do.SPred.exists_cons):term,
              $(mkIdent ``Std.Do.SPred.exists_nil):term,
              $(mkIdent ``Std.Do.SPred.forall_cons):term,
              $(mkIdent ``Std.Do.SPred.forall_nil):term,
              $(mkIdent ``Std.Do.SVal.curry_cons):term,
              $(mkIdent ``Std.Do.SVal.curry_nil):term,
              $(mkIdent ``Std.Do.SVal.uncurry_cons):term,
              $(mkIdent ``Std.Do.SVal.uncurry_nil):term,
              $(mkIdent ``Std.Do.SVal.getThe_here):term,
              $(mkIdent ``Std.Do.SVal.getThe_there):term,
              $(mkIdent ``Std.Do.ExceptConds.entails.refl):term,
              $(mkIdent ``Std.Do.ExceptConds.entails_true):term,
              $(mkIdent ``Std.Do.ExceptConds.entails_false):term,
              $(mkIdent ``ULift.down_ite):term,
              $(mkIdent ``ULift.down_dite):term,
              $(mkIdent ``List.Cursor.prefix_at):term,
              $(mkIdent ``List.Cursor.suffix_at):term,
              $(mkIdent ``List.Cursor.current_at):term,
              $(mkIdent ``List.Cursor.tail_at):term,
              $(mkIdent ``and_imp):term,
              $(mkIdent ``and_true):term,
              $(mkIdent ``dite_eq_ite):term,
              $(mkIdent ``exists_prop):term,
              $(mkIdent ``true_implies):term] at *))

declare_syntax_cat mcasesPat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant9969be2a6c7c4f2ddc98e7be8aea31492052af1d66514e4cbbbe5724d2c4bd24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant9969be2a6c7c4f2ddc98e7be8aea31492052af1d66514e4cbbbe5724d2c4bd24.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6b00af43005679ad6748111c2b5b575a0675b37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
