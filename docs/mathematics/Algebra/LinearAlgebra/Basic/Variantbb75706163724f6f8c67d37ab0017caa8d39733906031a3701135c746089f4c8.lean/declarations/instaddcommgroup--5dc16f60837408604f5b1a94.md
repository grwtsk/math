# instAddCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75339fd20068b6263ad0840badc1b1b1c35f6d2fdd419b7c30966f7fd9f1ac15",
  "kind": "instance",
  "lexical_name": "instAddCommGroup",
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
  "slug": "instaddcommgroup--5dc16f60837408604f5b1a94",
  "source": {
    "blob": "ce2a757133040e243f4ac2773021d049913e38c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 257,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dc16f60837408604f5b1a947f1922bd2d82eaa11e2287b07bc38648ea924f54",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75339fd20068b6263ad0840badc1b1b1c35f6d2fdd419b7c30966f7fd9f1ac15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAddCommGroup : AddCommGroup (LieDerivation R L M) :=
  coe_injective.addCommGroup _ coe_zero coe_add coe_neg coe_sub (fun _ _ => rfl) fun _ _ => rfl

/-- `coe_fn` as an `AddMonoidHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce2a757133040e243f4ac2773021d049913e38c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
