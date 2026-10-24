# _root_.GRWTSK.Algebra.GroupTheory.WithOne.Variant4f02a6c86e12dbbb0230ccc00a63f08cd43b1a8d77f4035f5c51de268bc7d1d0.WithZero.recZeroCoe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8057356c2ba4ca95d982a028e768815565b8db653a18689cf096e1d7beb41192",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.WithOne.Variant4f02a6c86e12dbbb0230ccc00a63f08cd43b1a8d77f4035f5c51de268bc7d1d0.WithZero.recZeroCoe",
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
  "slug": "root-grwtsk-algebra-grouptheory-withone-variant4f02a6c86e12dbbb0230ccc00--6583c527246623af9241f5c5",
  "source": {
    "blob": "98e5e9f900893f74099bd577d34042447ed17df1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 114,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant74832495088007c4d980ab60ee4f90729e6e8753e38562101b9a5b6609fec8ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6583c527246623af9241f5c5aac3ea9f73c4ebdb410bb29455afc9428ad84cea",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant74832495088007c4d980ab60ee4f90729e6e8753e38562101b9a5b6609fec8ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8057356c2ba4ca95d982a028e768815565b8db653a18689cf096e1d7beb41192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.GroupTheory.WithOne.Variant4f02a6c86e12dbbb0230ccc00a63f08cd43b1a8d77f4035f5c51de268bc7d1d0.WithZero.recZeroCoe {motive : WithZero α → Sort*} (zero : motive 0)
    (coe : ∀ a : α, motive a) : ∀ n : WithZero α, motive n
  | Option.none => zero
  | Option.some x => coe x

/-- Recursor for `WithOne` using the preferred forms `1` and `↑a`. -/
@[to_additive existing, elab_as_elim, induction_eliminator, cases_eliminator]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant74832495088007c4d980ab60ee4f90729e6e8753e38562101b9a5b6609fec8ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant74832495088007c4d980ab60ee4f90729e6e8753e38562101b9a5b6609fec8ef.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98e5e9f900893f74099bd577d34042447ed17df1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
