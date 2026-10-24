# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ceac6a978a7cd60164db0ddbd9703171d69b14cc0be513446349aaf5a0ee93e1",
  "kind": "macro_rules",
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
  "slug": "macro-rules--ee200cf7a56c460462e684e3",
  "source": {
    "blob": "bbd76f66bfcecdd5faf291a640d91723e89cea9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee200cf7a56c460462e684e3e965f7ad32592b42c05363a34bdce23664c6b125",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ceac6a978a7cd60164db0ddbd9703171d69b14cc0be513446349aaf5a0ee93e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro_rules
| `(tactic| group $[$loc]?) =>
  `(tactic| repeat (fail_if_no_progress (aux_group₁ $[$loc]? <;> aux_group₂ $[$loc]?)))

end Mathlib.Tactic.Group

/-!
We register `group` with the `hint` tactic.
-/

register_hint group
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbd76f66bfcecdd5faf291a640d91723e89cea9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
