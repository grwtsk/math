# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c043325a5b53c5489796d88dac0b183ddd24c0f653ffbed1c51bd5330ad04a20",
  "kind": "instance",
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
  "slug": "instance--c3e1e07be47b1aa3fd463595",
  "source": {
    "blob": "2c6eae49228a1c930a65c798ba53ae85dea04e7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 744,
    "line": 733,
    "path": "GRWTSK/Algebra/StarAlgHom/Variant6fa0420a95cd3939ca03cda7aa6e80b7fb9300c427b7b897dc637293b26f00fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3e1e07be47b1aa3fd46359589834aadd736b9b8d5c983f4ec48790553b5ee5d",
  "verification": {
    "reference": "docs/verification/Algebra/StarAlgHom/Variant6fa0420a95cd3939ca03cda7aa6e80b7fb9300c427b7b897dc637293b26f00fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c043325a5b53c5489796d88dac0b183ddd24c0f653ffbed1c51bd5330ad04a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 733–744.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 50) {F R A B : Type*} [Add A] [Mul A] [Star A] [SMul R A]
    [Add B] [Mul B] [SMul R B] [Star B] [hF : StarAlgEquivClass F R A B] :
    SMulHomClass F R A B :=
  { hF with
    coe := fun f => f
    coe_injective' := FunLike.coe_injective }

-- Porting note: no longer needed
---- `R` becomes a metavariable but that's fine because it's an `outParam`
--attribute [nolint dangerous_instance] StarAlgEquivClass.smulHomClass

-- See note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StarAlgHom/Variant6fa0420a95cd3939ca03cda7aa6e80b7fb9300c427b7b897dc637293b26f00fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StarAlgHom/Variant6fa0420a95cd3939ca03cda7aa6e80b7fb9300c427b7b897dc637293b26f00fe.lean#L733).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c6eae49228a1c930a65c798ba53ae85dea04e7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
