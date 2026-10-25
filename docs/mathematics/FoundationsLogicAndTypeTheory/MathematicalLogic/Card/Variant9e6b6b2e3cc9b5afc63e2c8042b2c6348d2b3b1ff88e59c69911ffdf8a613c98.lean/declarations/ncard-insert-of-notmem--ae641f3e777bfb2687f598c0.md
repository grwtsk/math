# ncard_insert_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71af8943-16fe-f5b8-eb21-597ad7bdde22",
  "kind": "theorem",
  "lexical_name": "ncard_insert_of_notMem",
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
  "slug": "ncard-insert-of-notmem--ae641f3e777bfb2687f598c0",
  "source": {
    "blob": "bac6b4cb2e8e1ba5b947ace8e93a786947d993f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 607,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant9e6b6b2e3cc9b5afc63e2c8042b2c6348d2b3b1ff88e59c69911ffdf8a613c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae641f3e777bfb2687f598c07f3d7a70f93e99178d70da35f268117f647bebdc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant9e6b6b2e3cc9b5afc63e2c8042b2c6348d2b3b1ff88e59c69911ffdf8a613c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71af8943-16fe-f5b8-eb21-597ad7bdde22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem ncard_insert_of_notMem {a : α} (h : a ∉ s) (hs : s.Finite := by toFinite_tac) :
    (insert a s).ncard = s.ncard + 1 := by
  rw [← Nat.cast_inj (R := ℕ∞), (hs.insert a).cast_ncard_eq, Nat.cast_add, Nat.cast_one,
    hs.cast_ncard_eq, encard_insert_of_notMem h]

@[deprecated (since := "2025-05-23")] alias ncard_insert_of_not_mem := ncard_insert_of_notMem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant9e6b6b2e3cc9b5afc63e2c8042b2c6348d2b3b1ff88e59c69911ffdf8a613c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant9e6b6b2e3cc9b5afc63e2c8042b2c6348d2b3b1ff88e59c69911ffdf8a613c98.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bac6b4cb2e8e1ba5b947ace8e93a786947d993f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
