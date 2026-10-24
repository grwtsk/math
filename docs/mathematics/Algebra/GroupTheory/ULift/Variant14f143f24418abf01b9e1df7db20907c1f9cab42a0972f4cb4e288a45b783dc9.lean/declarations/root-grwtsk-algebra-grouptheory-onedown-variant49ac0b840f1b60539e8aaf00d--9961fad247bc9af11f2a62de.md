# _root_.GRWTSK.Algebra.GroupTheory.OneDown.Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.MulEquiv.ulift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22ce9f84b5d1fe81ba643b66d54642d648edf514a659fb37725ced5a103ba429",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.OneDown.Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.MulEquiv.ulift",
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
  "slug": "root-grwtsk-algebra-grouptheory-onedown-variant49ac0b840f1b60539e8aaf00d--9961fad247bc9af11f2a62de",
  "source": {
    "blob": "4506587404f9e050c5181fc82fb127dfd0c5cf6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 87,
    "path": "GRWTSK/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9961fad247bc9af11f2a62de8e1c2d391f16a843a0b8139562f52be8c8d4432c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22ce9f84b5d1fe81ba643b66d54642d648edf514a659fb37725ced5a103ba429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.GroupTheory.OneDown.Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.MulEquiv.ulift [Mul α] : ULift α ≃* α :=
  { Equiv.ulift with map_mul' := fun _ _ => rfl }

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ULift/Variant14f143f24418abf01b9e1df7db20907c1f9cab42a0972f4cb4e288a45b783dc9.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4506587404f9e050c5181fc82fb127dfd0c5cf6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
