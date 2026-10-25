# checkedGaussianMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a398e42582286b6427f4872d326fca29dcd36dee1fb175ce4323a8b0f12a4f2f",
  "kind": "def",
  "lexical_name": "checkedGaussianMul",
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
  "slug": "checkedgaussianmul--91aebeadcbb5cc06889dc97b",
  "source": {
    "blob": "73984351e9e95b846bc1fcd514c0056d49950614",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 266,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant4ebc4bbb4120983e91706626de3b4f7c5e69b84306f1627d75e76038608df83e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91aebeadcbb5cc06889dc97b3522f914080b05386c563d6af637315e05cc4a61",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant4ebc4bbb4120983e91706626de3b4f7c5e69b84306f1627d75e76038608df83e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a398e42582286b6427f4872d326fca29dcd36dee1fb175ce4323a8b0f12a4f2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def checkedGaussianMul
    (left right : GaussianIntermediate) : Option GaussianIntermediate := do
  let rr ← checkedI128Mul left.re right.re
  let ii ← checkedI128Mul left.im right.im
  let ri ← checkedI128Mul left.re right.im
  let ir ← checkedI128Mul left.im right.re
  let re ← checkedI128Sub rr ii
  let im ← checkedI128Add ri ir
  pure ⟨re, im⟩

/-- Integer preflight for every raw power, coefficient product, and reciprocal
norm used by the V1 finite expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant4ebc4bbb4120983e91706626de3b4f7c5e69b84306f1627d75e76038608df83e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant4ebc4bbb4120983e91706626de3b4f7c5e69b84306f1627d75e76038608df83e.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73984351e9e95b846bc1fcd514c0056d49950614` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
