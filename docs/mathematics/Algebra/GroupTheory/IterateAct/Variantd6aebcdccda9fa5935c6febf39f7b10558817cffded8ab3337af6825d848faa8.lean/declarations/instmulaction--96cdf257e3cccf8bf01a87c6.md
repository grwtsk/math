# instMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41bccd92f6d86209ea0bd189d89bcf7ed3a2ea2656c1b72e124b58155821c794",
  "kind": "instance",
  "lexical_name": "instMulAction",
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
  "slug": "instmulaction--96cdf257e3cccf8bf01a87c6",
  "source": {
    "blob": "cd779a13ecc8cc74738038a15efc1d4b2802c114",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 63,
    "path": "GRWTSK/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96cdf257e3cccf8bf01a87c6450ed0998877d28a41e9b6bf0bcb23b28739c14a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41bccd92f6d86209ea0bd189d89bcf7ed3a2ea2656c1b72e124b58155821c794`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instMulAction : MulAction (IterateMulAct f) α where
  smul n x := f^[n.val] x
  one_smul _ := rfl
  mul_smul _ _ := Function.iterate_add_apply f _ _

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd779a13ecc8cc74738038a15efc1d4b2802c114` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
