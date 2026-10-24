# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf1fe3d800b52d24bec745e5f53555301860fb1f91b896a57a1ccf19159b8238",
  "kind": "example",
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
  "slug": "example--05dc58391c80549e13bdfbd2",
  "source": {
    "blob": "1e0131464ec51166a4794a0800b5ec6350808f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 411,
    "path": "GRWTSK/Algebra/UniversalAlgebra/GRewrite/Variant536417356a05675da392b46f04a0c65ddd7031e78ab90c0d3632312e660ce799.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05dc58391c80549e13bdfbd2fc73d6e21706d47da4c2d9d1a4cc816a245e3f8a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/GRewrite/Variant536417356a05675da392b46f04a0c65ddd7031e78ab90c0d3632312e660ce799.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf1fe3d800b52d24bec745e5f53555301860fb1f91b896a57a1ccf19159b8238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (h : double (double 2) ≤ 10) : double 4 ≤ 20 := by
  grw (transparency := default) [h]
  guard_target = (10 : Int) ≤ 20
  simp

-- `rw`/`grw` index based on the head constant, so the following fails.
/--
error: Tactic `grewrite` failed: Did not find a rewrite with
  double 2 ≤ _
in the target expression
  4 ≤ 20

Use the command `set_option trace.Meta.grewrite true` to inspect this.

h : double 2 ≤ 10
⊢ 4 ≤ 20
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/GRewrite/Variant536417356a05675da392b46f04a0c65ddd7031e78ab90c0d3632312e660ce799.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/GRewrite/Variant536417356a05675da392b46f04a0c65ddd7031e78ab90c0d3632312e660ce799.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e0131464ec51166a4794a0800b5ec6350808f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
