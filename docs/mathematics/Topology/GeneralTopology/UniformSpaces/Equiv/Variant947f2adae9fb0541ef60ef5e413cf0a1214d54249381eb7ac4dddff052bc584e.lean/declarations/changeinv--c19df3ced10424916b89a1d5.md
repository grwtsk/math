# changeInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edda857d12dd0983d074b9d84128d09feb0ce371f7a95ddee78f262bcd8fef16",
  "kind": "def",
  "lexical_name": "changeInv",
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
  "slug": "changeinv--c19df3ced10424916b89a1d5",
  "source": {
    "blob": "6105cb6031db6737da70092e5a0e79d5204428a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 200,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c19df3ced10424916b89a1d5aece5fdfc929dab4b2f47ca9bdc0cf1c738406ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edda857d12dd0983d074b9d84128d09feb0ce371f7a95ddee78f262bcd8fef16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def changeInv (f : α ≃ᵤ β) (g : β → α) (hg : Function.RightInverse g f) : α ≃ᵤ β :=
  have : g = f.symm :=
    funext fun x => calc
      g x = f.symm (f (g x)) := (f.left_inv (g x)).symm
      _ = f.symm x := by rw [hg x]
  { toFun := f
    invFun := g
    left_inv := by convert f.left_inv
    right_inv := by convert f.right_inv using 1
    uniformContinuous_toFun := f.uniformContinuous
    uniformContinuous_invFun := by convert f.symm.uniformContinuous }
#align uniform_equiv.change_inv UniformEquiv.changeInv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6105cb6031db6737da70092e5a0e79d5204428a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
