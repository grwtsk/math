# MulDistribMulAction.compHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:164ba6bf4c301fa598d92cb75926a22f1addf10ea921eccd939cf80f0fc164b7",
  "kind": "abbrev",
  "lexical_name": "MulDistribMulAction.compHom",
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
  "slug": "muldistribmulaction-comphom--eea23441dc02c47446f754eb",
  "source": {
    "blob": "529dbb97588c67d85e0a5b92fb29b7ee45885876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 54,
    "path": "GRWTSK/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eea23441dc02c47446f754ebdf7076fe33c3893e7a397790b31ca35d49f0c186",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:164ba6bf4c301fa598d92cb75926a22f1addf10ea921eccd939cf80f0fc164b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev MulDistribMulAction.compHom [Monoid N] (f : N →* M) : MulDistribMulAction N A :=
  { MulAction.compHom A f with
    smul_one := fun x => smul_one (f x),
    smul_mul := fun x => smul_mul' (f x) }

end Monoid

/-- The tautological action by `AddMonoid.End α` on `α`.

This generalizes `Function.End.applyMulAction`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/End/Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `529dbb97588c67d85e0a5b92fb29b7ee45885876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
