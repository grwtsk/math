# instDecidableExistsBitVecSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b4bb31d9732517e9f1a2e888f82234dfd8a8bf9dabd4026f382f9a9a151e775",
  "kind": "instance",
  "lexical_name": "instDecidableExistsBitVecSucc",
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
  "slug": "instdecidableexistsbitvecsucc--40ab52a396c4ba8d17214ca6",
  "source": {
    "blob": "dc5a1f516ad16df507260b4785558d3c0b916f77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40ab52a396c4ba8d17214ca686e140c53bb43704b1e349e160e7cf2ef8ff10e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b4bb31d9732517e9f1a2e888f82234dfd8a8bf9dabd4026f382f9a9a151e775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDecidableExistsBitVecSucc (P : BitVec (n+1) → Prop) [DecidablePred P]
    [Decidable (∀ (x : Bool) (v : BitVec n), ¬ P (v.cons x))] : Decidable (∃ v, P v) :=
  decidable_of_iff (¬ ∀ v, ¬ P v) (by exact Classical.not_forall_not)

/--
For small numerals this isn't necessary (as typeclass search can use the above two instances),
but for large numerals this provides a shortcut.
Note, however, that for large numerals the decision procedure may be very slow,
and you should use `bv_decide` if possible.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decidable/Variant3d4f68d4d29c9e2c1cb86fb5bc7876e4485acf70190f39817d048aab7b19375e.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc5a1f516ad16df507260b4785558d3c0b916f77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
